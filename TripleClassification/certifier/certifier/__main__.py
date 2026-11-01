"""Command line of certify.py: verify, verify-all, close, convert, manifest (--help on each)."""
import argparse, json, os, re, sys, warnings
from pathlib import Path


def cell_arg(s):
    """L:c0,c1,c2,c3 -> (L, [c0, c1, c2, c3])."""
    level, cell = s.split(':'); return int(level), [int(x) for x in cell.split(',')]


def caps_arg(s):
    """L:S,... -> {L: S}."""
    return {int(k): float(v) for k, v in (x.split(':') for x in s.split(','))}


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
    k = sub.add_parser('convert', help="write a full-format certificate of onetree.py in this package's format, keeping it only "
                       'if it verifies')
    k.add_argument('cert'); k.add_argument('out', help='the new certificate directory (must not exist)')
    k.add_argument('--workers', type=int, default=8); k.add_argument('--json', help='write the verify report here')
    m = sub.add_parser('manifest', help='write a manifest of the certificates b<BALL>/ or b<BALL>.tar in a directory')
    m.add_argument('dir'); m.add_argument('-o', '--out', help='manifest file (default DIR/MANIFEST)')
    c = sub.add_parser('close', help='search for a certificate of a ball (or of one cell of it); writes OUT/b<BALL>/')
    c.add_argument('ball', type=int); c.add_argument('out')
    c.add_argument('--cell', type=cell_arg, help='L:c0,c1,c2,c3: close this cell only (default: the whole ball)')
    c.add_argument('--max-level', type=int, default=7, help='cells still open at this level are reported (default 7)')
    c.add_argument('--native-first', type=int, default=0, help='try the native leaf before any plane search at levels <= this (default 0)')
    c.add_argument('--no-native', action='store_true', help='plane leaves only')
    c.add_argument('--caps', type=caps_arg, help='plane search time caps in seconds by level, L:S,...')
    c.add_argument('--native-caps', type=caps_arg, help='native search time caps in seconds by level, L:S,...')
    c.add_argument('--workers', type=int, default=8)
    x = ap.parse_args(argv)
    if x.root: os.environ['MUB_CERTIFIER_ROOT'] = os.path.abspath(x.root)     # before the pinned code is loaded

    if x.cmd in ('verify', 'convert'):
        if x.cmd == 'verify':
            from .verify import verify
            r = verify(x.cert, x.ball, x.workers)
        else:
            from .certificate import convert
            r = convert(x.cert, x.out, x.workers)
            print(('written: %s' if r['verdict'] != 'OPEN' else 'not written (refused nodes below): %s') % x.out)
        if x.json: Path(x.json).write_text(json.dumps(r, indent=1) + '\n')
        kinds = ', '.join('%d %s' % (n, k) for k, n in sorted(r['counts'].items()))
        print('ball %d%s: %s, scope %s (%s) in %.0f s' % (r['ball'], '' if r['root'] == [0, [0, 0, 0, 0]] else ' cell %d:%s' %
              (r['root'][0], ','.join(map(str, r['root'][1]))), r['verdict'], r['scope'], kinds or 'no node', r['wall_seconds']))
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
    return close(x.ball, x.out, cell=x.cell, max_level=x.max_level, native_first=x.native_first, native=not x.no_native,
                 caps=x.caps, native_caps=x.native_caps, workers=x.workers)


if __name__ == '__main__': sys.exit(main())
