import numpy as np, json, collections
st = {int(b): s for b, s in json.load(open('status.json')).items()}
D = np.load('leafmap.npz'); H = D['hits']; meta = D['meta']
key = {(int(b), int(i)): n for n, (b, i, *_ ) in enumerate(meta)}
nb = meta[:, 3].astype(float); N = len(meta); TOT = nb.sum()
easy = {b for b, s in st.items() if s['v'] == 'CLOSED' and not s['tree']}
closedT = {b for b, s in st.items() if s['v'] == 'CLOSED' and s['tree']}
idx = np.array([key[(int(b), int(i))] for b, i in H[:, :2]]); tgt = H[:, 2]; op = H[:, 3]; full = H[:, 4] == 1
src = meta[idx, 0]; selfh = tgt == src
def greedy(allowed, targets):
    """Greedy acyclic order on closed tree balls; a hit counts if its target is easy or earlier. Returns moved mask."""
    hits = np.nonzero(allowed)[0]
    bysrc = collections.defaultdict(list)
    for h in hits: bysrc[int(src[h])].append(h)
    remaining = set(closedT); rev = []
    while remaining:
        best = None
        for b in remaining:
            ok = {int(idx[h]) for h in bysrc.get(b, []) if int(tgt[h]) in easy or (int(tgt[h]) in remaining and int(tgt[h]) != b)}
            v = sum(nb[x] for x in ok)
            if best is None or v > best[0]: best = (v, b)
        rev.append(best[1]); remaining.discard(best[1])
    pos = {b: n for n, b in enumerate(rev[::-1])}
    ok = [h for h in hits if int(tgt[h]) in easy or pos.get(int(tgt[h]), 1e9) < pos.get(int(src[h]), -1)]
    s = np.zeros(N, bool); s[idx[ok]] = True
    return s, pos
base = full & ~selfh & np.array([t in easy or t in closedT for t in tgt])        # closed targets only
for name, m in [('any symmetry incl. identity', base), ('identity only (plain overlap)', base & (op == 0)),
                ('nontrivial symmetries only', base & (op != 0))]:
    s, pos = greedy(m, None)
    print('%-32s closed targets: %6.2f GB (%4.1f%%) %7d leaves' % (name, nb[s].sum() / 1e9, 100 * nb[s].sum() / TOT, s.sum()))
    if name.startswith('any'): S_any, P_any = s, pos
    if name.startswith('identity'): S_id = s
print('symmetry adds on top of identity-greedy (union): %.2f GB' % ((nb[S_any | S_id].sum() - nb[S_id].sum()) / 1e9))
# self-symmetric balls: fraction of own leaves whose image under some g != id is a whole cell inside the ball itself
print('\nself-images (g != id, whole cell inside own ball): top balls')
sh = collections.defaultdict(set)
for h in np.nonzero(full & selfh)[0]: sh[int(src[h])].add(int(idx[h]))
rows = sorted(((sum(nb[x] for x in v), b, len(v)) for b, v in sh.items()), reverse=True)[:10]
for v, b, n in rows:
    m = meta[:, 0] == b
    ops = collections.Counter(int(op[h]) for h in np.nonzero(full & selfh & (src == b))[0]).most_common(2)
    print(b, '%d/%d leaves, %.2f/%.2f GB; ops %s' % (n, m.sum(), v / 1e9, nb[m].sum() / 1e9, ops))
# overlap with the moved set: total from self-images is at most half (a fundamental domain), report it
tot_self = sum(sum(nb[x] for x in v) for v in sh.values())
print('self-image bytes total %.2f GB (a fundamental-domain scheme saves at most about half of the pair-orbit content)' % (tot_self / 1e9))
# depth profile of moved leaves vs all
lv = meta[:, 2]
print('\nlevel  all-GB  moved-GB(any, closed targets)')
for L in range(0, 10):
    m = lv == L
    if m.any(): print(L, '%.2f %.2f' % (nb[m].sum() / 1e9, nb[m & S_any].sum() / 1e9))
json.dump({str(k): v for k, v in P_any.items()}, open('greedy_order_closed.json', 'w'))
np.save('moved_any.npy', S_any)
