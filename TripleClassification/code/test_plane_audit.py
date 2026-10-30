#!/usr/bin/env python3
"""End-to-end test of audit_select.py --plane on a real tree (needs PR #4's checker tree and one saved cell proof).

  python test_plane_audit.py SAMPLES SCRIPTS PLANE_ROOT CELL_DIR

CELL_DIR holds a certified plane proof of ball 491's level-4 cell (12, 5, 12, 12): entry.json,
frontier.input.json.gz, frontier.proposal.json.gz and replay.json. The test marks that cell's closed row
NOT ESTABLISHED, so the plain audit must fail on it; with a manifest of the proof the audit must pass, by replaying it;
and a manifest for another ball must be refused.
"""
import json, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))


def main():
    samples, scripts, proot, cdir = map(os.path.abspath, sys.argv[1:5])
    l2 = ','.join(os.path.join(scripts, d, 'split.py') for d in ('l2_v1', 'l2_v2', 'l2_v3'))
    l3 = os.path.join(scripts, 'l3', 'split_mixed.py') + ',' + os.path.join(scripts, 'deep', 'split_select.py')
    deep = os.path.join(scripts, 'deep', 'split_select.py')
    failures = 0
    with tempfile.TemporaryDirectory() as t:
        for n in ('b491_l2', 'b491_l3', 'b491_l4'):
            for ext in ('.json.gz', '.jsonl'): shutil.copy(os.path.join(samples, n + ext), os.path.join(t, n + ext))
        p = os.path.join(t, 'b491_l4.jsonl'); rr = [json.loads(l) for l in open(p)]
        for r in rr:
            if r['index'] == 1: r['status'] = 'NOT ESTABLISHED'; r.pop('claim', None)
        with open(p, 'w') as f:
            for r in rr: f.write(json.dumps(r) + '\n')
        d = os.path.join(t, 'plane', 'b491'); shutil.copytree(cdir, os.path.join(d, '4_12_5_12_12'))
        base = [sys.executable, '-W', 'ignore', os.path.join(HERE, 'audit_select.py'), '--root', ROOT, '--index', '491', '--layers'] + \
               [os.path.join(t, n + '.json.gz') for n in ('b491_l2', 'b491_l3', 'b491_l4')] + ['--scripts', l2, l3, deep]

        def run(extra):
            cmd = list(base)
            if '--plane' in extra: cmd[cmd.index('--root') + 1] = proot     # a plane audit runs on the checker's tree
            q = subprocess.run(cmd + extra, capture_output=True, text=True)
            try: v = json.loads(q.stdout.strip().splitlines()[-1])
            except (ValueError, IndexError): v = {}
            return q.returncode, v, (q.stderr.strip().splitlines() or [''])[-1]
        cases = [('the opened cell without a plane proof', [], lambda rc, v, e: rc != 0 and 'unresolved cell' in e),
                 ('the opened cell closed by a replayed plane proof', ['--plane', os.path.join(d, 'manifest.json')],
                  lambda rc, v, e: rc == 0 and v.get('status') == 'GEOMETRY_AND_RECEIPTS_VERIFIED' and v['gamma'].get('plane') == 1)]
        mk = subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'rusty', 'plane_manifest.py'), proot, d, '491'],
                            capture_output=True, text=True, cwd=proot)
        print('manifest:', mk.stdout.strip() or mk.stderr.strip()[-300:])
        if not os.path.exists(os.path.join(d, 'manifest.json')): print('manifest builder failed'); sys.exit(1)
        doc = json.load(open(os.path.join(d, 'manifest.json'))); doc['ball'] = 492
        json.dump(doc, open(os.path.join(d, 'other.json'), 'w'))
        cases.append(('a manifest naming another ball', ['--plane', os.path.join(d, 'other.json')],
                      lambda rc, v, e: rc != 0 and 'unresolved cell' in e))   # unused manifest: the cell stays open
        cache = os.path.join(d, 'replay_cache.json')            # beside the manifest, as assemble.py passes it
        cases.append(('audit with the cache: served by the job replay', ['--plane', os.path.join(d, 'manifest.json'), '--plane-cache', cache],
                      lambda rc, v, e: rc == 0 and v['gamma'].get('plane') == 1 and v['plane']['cached_cells'] == [[4, [12, 5, 12, 12]]]))

        def untrusted():                               # a replay receipt for other files must not seed the cache
            r = os.path.join(d, '4_12_5_12_12', 'replay.json'); x = json.load(open(r)); x['proposal_sha256'] = '0' * 64
            json.dump(x, open(r, 'w')); os.remove(os.path.join(d, 'replay_cache.jobs.json')); os.path.exists(cache) and os.remove(cache)
            subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'rusty', 'plane_manifest.py'), proot, d, '491'],
                           capture_output=True, text=True, cwd=proot)
        cases.append(('a mismatched job receipt: the cell is left out (re-run later)', ['--plane', os.path.join(d, 'manifest.json'), '--plane-cache', cache],
                      lambda rc, v, e: rc != 0 and 'unresolved cell' in e, untrusted))
        def tamper():                                  # a changed proposal must miss the cache and fail its replay
            q = os.path.join(d, '4_12_5_12_12', 'frontier.proposal.json.gz'); open(q, 'ab').write(b'\0')
        cases.append(('a modified proof file after caching', ['--plane', os.path.join(d, 'manifest.json'), '--plane-cache', cache],
                      lambda rc, v, e: rc != 0 and 'unresolved cell' in e, tamper))
        for case in cases:
            name, extra, ok = case[:3]
            if len(case) > 3: case[3]()
            rc, v, e = run(extra); good = ok(rc, v, e); failures += not good
            print('%-4s %-50s %s' % ('PASS' if good else 'FAIL', name, e[:90] if rc else v.get('gamma')))
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
