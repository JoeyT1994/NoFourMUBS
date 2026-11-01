"""Every leaf of every tree ball's best onetree certificate: ball, kind, level, cell, bytes (its files' sizes).
argv: best_certs.tsv out.tsv.gz"""
import gzip, json, os, sys
from multiprocessing import Pool
B = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'
SUF = {'leaf': ('.input.json.gz', '.proposal.json.gz'), 'native': ('.native.json', '.input.json.gz')}
def children(level, cell):
    return [(level + 1, [2 * c + ((i >> (3 - k)) & 1) for k, c in enumerate(cell)]) for i in range(16)]
def one(args):
    ball, base = args; d = B + base + '/b%d' % ball; out = []
    try: t = json.load(open(d + '/tree.json'))
    except Exception as e: return ['%d\tERROR\t%s' % (ball, e)]
    stack = [(t['tree'], t['root'][0], t['root'][1])]
    while stack:
        node, level, cell = stack.pop()
        if 'children' in node:
            stack.extend((c, *k) for c, k in zip(node['children'], children(level, cell)))
        elif 'outside' in node: continue
        else:
            kind = 'leaf' if 'leaf' in node else 'native' if 'native' in node else 'open'
            nb = 0
            for s in SUF.get(kind, ()):
                try: nb += os.stat(d + '/leaves/' + node[kind] + s).st_size
                except OSError: pass
            out.append('%d\t%s\t%d\t%s\t%d' % (ball, kind, level, ','.join(map(str, cell)), nb))
    return out
rows = [l.rstrip('\n').split('\t') for l in open(sys.argv[1])][1:]
todo = [(int(r[0]), r[6]) for r in rows if r[1] == 'CLOSED' and (int(r[3]) > 1 or int(r[3]) > int(r[4]))]
todo.sort(key=lambda x: -int([r for r in rows if int(r[0]) == x[0]][0][3]))
with Pool(16) as p, gzip.open(sys.argv[2], 'wt') as o:
    o.write('ball\tkind\tlevel\tcell\tbytes\n')
    for res in p.imap_unordered(one, todo):
        o.write('\n'.join(res) + '\n')
