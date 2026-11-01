import numpy as np, gzip, json, collections
d = np.load('geom2.npz'); R = d['R']; r = d['r']; OPS = d['ops']
j, l, k = R[:, 0].astype(int), R[:, 1].astype(int), R[:, 2].astype(int); rho = R[:, -1]; dc = R[:, 7]
st = {}
for line in list(open('best_certs.tsv'))[1:]:
    b, v, sc, lv, nl, pb, base = line.rstrip('\n').split('\t'); b = int(b)
    tree = v == 'OPEN' or int(lv) > 1 or int(lv) > int(nl)
    st[b] = dict(v=v, leaves=int(lv), bytes=int(pb), tree=tree)
T = {b for b, s in st.items() if s['tree']}
print('tree balls', len(T), 'closed', sum(st[b]['v'] == 'CLOSED' for b in T), 'open', sum(st[b]['v'] == 'OPEN' for b in T))
def opname(kk): o = OPS[kk]; return 'r%s c%s %s' % (''.join(map(str, o[:3])), ''.join(map(str, o[3:6])), ['id', 'conj', 'T', 'conjT'][o[6]])
print('\n== exact images (centre images coincide, dc < 1e-6)')
for i in np.nonzero(dc < 1e-6)[0]:
    if j[i] < l[i] or j[i] == l[i]:
        print(j[i], '->', l[i], opname(k[i]), 'rho-1 %.2e' % (rho[i] - 1), 'r %.4f %.4f' % (r[j[i]], r[l[i]]),
              'src', st[j[i]]['v'], st[j[i]]['leaves'], 'tgt', st[l[i]]['v'], st[l[i]]['leaves'])
print('\n== near self-symmetric tree balls (g != id maps centre to within 0.25 of itself)')
for i in np.nonzero((j == l) & (dc < 0.25))[0]:
    if j[i] in T: print(j[i], opname(k[i]), 'dc %.3f rho %.3f' % (dc[i], rho[i]), st[j[i]])
# orbit census among tree balls: relation "centres coincide up to g" with tol t (in target chart units), components
def comps(mask):
    par = {b: b for b in T}
    def f(x):
        while par[x] != x: par[x] = par[par[x]]; x = par[x]
        return x
    for i in np.nonzero(mask)[0]:
        if j[i] in T and l[i] in T: par[f(j[i])] = f(l[i])
    g = collections.defaultdict(list)
    for b in T: g[f(b)].append(b)
    return sorted(g.values(), key=lambda x: -sum(st[b]['bytes'] for b in x))
for name, mask in [('exact (dc<1e-6)', dc < 1e-6), ('centre of g(B) within 0.1 of B\' centre', dc < 0.1),
                   ('g(B) centre inside B\' (dc<1)', dc < 1), ('identity only, dc<1', (dc < 1) & (k == 0)),
                   ('g(B) meets B\' (any overlap)', np.ones(len(R), bool)), ('identity only, any overlap', k == 0)]:
    C = comps(mask)
    print('\n==', name, ': %d classes among %d tree balls; largest:' % (len(C), len(T)))
    for c in C[:6]: print('  %d balls, %.1f GB: %s' % (len(c), sum(st[b]['bytes'] for b in c) / 1e9, sorted(c)[:40]))
json.dump({str(b): s for b, s in st.items()}, open('status.json', 'w'))
