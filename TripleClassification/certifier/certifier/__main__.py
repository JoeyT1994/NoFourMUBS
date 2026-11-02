"""Command line of certify.py: close, verify, verify-all, manifest (--help on each)."""
import argparse, json, os, re, sys, warnings
from pathlib import Path


def cell_arg(s):
    """L:c0,c1,c2,c3 -> (L, [c0, c1, c2, c3])."""
    level, cell = s.split(':'); return int(level), [int(x) for x in cell.split(',')]


def ball_from_file(path):
    """The key of the ball whose record is in `path` (registered for this run)."""
    import gzip
    from . import pinned
    raw = Path(path).read_bytes(); x = json.loads(gzip.decompress(raw) if raw[:2] == b'\x1f\x8b' else raw)
    return pinned.register(x.get('record', x))


def main(argv=None):
    warnings.filterwarnings('ignore', category=RuntimeWarning)    # numpy's spurious matmul warnings on some BLAS builds;
    ap = argparse.ArgumentParser(prog='certify.py', description=__doc__)
    ap.add_argument('--root', help='the NoFourMUBS repository holding the pinned files (default: the one this package is in; '
                    'or MUB_CERTIFIER_ROOT)')
    sub = ap.add_subparsers(dest='cmd', required=True)
    v = sub.add_parser('verify', help="verify one ball's certificate from its files alone")
    v.add_argument('cert', help='a certificate directory (tree.json with leaves.tar or leaves/) or one .tar file')
    v.add_argument('--ball', type=int, help='require the certificate to be of this ball')
    v.add_argument('--workers', type=int, default=8); v.add_argument('--json', help='write the full report here')
    a = sub.add_parser('verify-all', help="verify every certificate a manifest lists; exit 0 when every atlas ball is CLOSED")
    a.add_argument('manifest', help='lines "BALL PATH", paths relative to the manifest')
    a.add_argument('--results', help='results file (JSON lines, shared by shards; default MANIFEST.results.jsonl)')
    a.add_argument('--shard', default='0/1', help='I/N: verify the balls with ball %% N == I (default 0/1: all)')
    a.add_argument('--workers', type=int, default=8)
    m = sub.add_parser('manifest', help='write a manifest of the certificates b<BALL>/ or b<BALL>.tar in a directory')
    m.add_argument('dir'); m.add_argument('-o', '--out', help='manifest file (default DIR/MANIFEST)')
    c = sub.add_parser('close', help='search for a certificate of a ball (or of one cell of it); writes OUT/b<BALL>/')
    c.add_argument('ball', help="a seed ball's atlas index, or a JSON file holding any ball's record (the atlas format; "
                   'gzipped or not, the record itself or under "record")')
    c.add_argument('out')
    c.add_argument('--cell', type=cell_arg, help='L:c0,c1,c2,c3: close this cell only (default: the whole ball)')
    c.add_argument('--max-level', type=int, default=7, help='cells still open at this level are reported (default 7)')
    c.add_argument('--native-to', type=int, default=3, help='try the native certifier on the whole ball, and on cells of levels 2 to this '
                   'where the normal-form witness fails (default 3; -1: never)')
    c.add_argument('--nf-from', type=int, default=1, help='try the normal-form witness on cells of levels >= this (default 1)')
    c.add_argument('--nf-cap', type=float, default=60.0, help='normal-form search seconds per pattern (default 60)')
    c.add_argument('--workers', type=int, default=8)
    x = ap.parse_args(argv)
    if x.root: os.environ['MUB_CERTIFIER_ROOT'] = os.path.abspath(x.root)     # before the pinned code is loaded

    if x.cmd == 'verify':
        from .verify import verify
        r = verify(x.cert, x.ball, x.workers)
        if x.json: Path(x.json).write_text(json.dumps(r, indent=1) + '\n')
        kinds = ', '.join('%d %s' % (n, k) for k, n in sorted(r['counts'].items()))
        print('ball %s%s: %s (%s) in %.0f s' % (r['ball'], '' if r['root'] == [0, [0, 0, 0, 0]] else ' cell %d:%s' %
              (r['root'][0], ','.join(map(str, r['root'][1]))), r['verdict'], kinds or 'no node', r['wall_seconds']))
        for level, cell, why in r['failed'][:20]: print('  refused %s:%s  %s' % (level, cell, why))
        return 0 if r['verdict'] in ('CLOSED', 'CELL CLOSED') else 1
    if x.cmd == 'verify-all':
        from .verify import verify_all
        i, n = map(int, x.shard.split('/'))
        s = verify_all(x.manifest, x.results, (i, n), x.workers)
        print(json.dumps(s, indent=1))
        return 0 if s['all_closed'] else 1
    if x.cmd == 'manifest':
        rows = []
        for p in sorted(Path(x.dir).iterdir()):
            g = re.fullmatch(r'b(\d+)(\.tar)?', p.name)
            if g and ((p / 'tree.json').exists() if p.is_dir() else g.group(2)): rows.append((int(g.group(1)), p.name))
        out = Path(x.out or Path(x.dir) / 'MANIFEST')
        out.write_text(''.join('%d %s\n' % (b, os.path.relpath(Path(x.dir) / n, out.resolve().parent)) for b, n in sorted(rows)))
        print('%d certificates listed in %s' % (len(rows), out)); return 0
    from .search.close import close
    ball = int(x.ball) if x.ball.isdigit() else ball_from_file(x.ball)
    return close(ball, x.out, cell=x.cell, max_level=x.max_level, native_to=x.native_to, nf_from=x.nf_from, nf_cap=x.nf_cap,
                 workers=x.workers)


if __name__ == '__main__': sys.exit(main())
