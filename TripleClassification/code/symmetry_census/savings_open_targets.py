import numpy as np, json, collections
st = {int(b): s for b, s in json.load(open('status.json')).items()}
D = np.load('leafmap.npz'); H = D['hits']; meta = D['meta']        # meta: B, i, level, bytes, native
key = {(int(b), int(i)): n for n, (b, i, *_ ) in enumerate(meta)}
nb = meta[:, 3].astype(float); N = len(meta); TOT = nb.sum()
easy = {b for b, s in st.items() if s['v'] == 'CLOSED' and not s['tree']}
idx = np.array([key[(int(b), int(i))] for b, i in H[:, :2]]); tgt = H[:, 2]; op = H[:, 3]; full = H[:, 4] == 1
src = meta[idx, 0]
selfh = tgt == src
def frac(mask_hits, label):
    s = np.zeros(N, bool); s[idx[mask_hits]] = True
    print('%-62s %8d leaves (%5.2f%%)  %6.2f GB (%5.2f%%)' % (label, s.sum(), 100 * s.mean(), nb[s].sum() / 1e9, 100 * nb[s].sum() / TOT))
    return s
print('total', N, 'leaves', TOT / 1e9, 'GB')
isEasy = np.array([t in easy for t in tgt])
for f, fl in ((full, 'whole cell'), (np.ones(len(H), bool), 'cell centre')):
    print('--', fl)
    frac(f & isEasy & ~selfh, 'into a one-native-leaf ball, any symmetry')
    frac(f & isEasy & ~selfh & (op == 0), '  ... by the identity (plain overlap)')
    a = frac(f & isEasy & ~selfh & (op != 0), '  ... by a nontrivial symmetry')
    s_id = np.zeros(N, bool); s_id[idx[f & isEasy & ~selfh & (op == 0)]] = True
    print('      nontrivial-symmetry-only gain: %.2f GB' % (nb[a & ~s_id].sum() / 1e9))
    frac(f & ~isEasy & ~selfh, 'into another tree ball (needs an acyclic order)')
    frac(f & selfh, 'into its own ball by g != id')
# acyclic orders among tree balls: a leaf of B may move to any target earlier in the order (easy balls first)
T = sorted(b for b, s in st.items() if s['tree'])
def gain(order):
    pos = {b: n for n, b in enumerate(order)}
    for b in easy: pos[b] = -1
    ok = full & ~selfh & np.array([pos.get(t, 10**9) < pos.get(s_, 10**9) for t, s_ in zip(tgt, src)])
    s = np.zeros(N, bool); s[idx[ok]] = True
    return nb[s].sum(), s
for name, order in [('cheap balls first', sorted(T, key=lambda b: st[b]['bytes'])),
                    ('expensive first', sorted(T, key=lambda b: -st[b]['bytes'])),
                    ('by index', T)]:
    g, s = gain(order); print('order %-18s: %.2f GB (%.1f%%) movable, %d leaves' % (name, g / 1e9, 100 * g / TOT, s.sum()))
# greedy: repeatedly put last the ball whose own leaves gain most from being last
remaining = set(T); order_rev = []
bysrc = collections.defaultdict(list)
for h in np.nonzero(full & ~selfh)[0]: bysrc[int(src[h])].append(h)
while remaining:
    best = None
    for b in remaining:
        hs = bysrc.get(b, [])
        ok = {int(idx[h]) for h in hs if (int(tgt[h]) in easy) or (int(tgt[h]) in remaining and int(tgt[h]) != b)}
        v = sum(nb[x] for x in ok)
        if best is None or v > best[0]: best = (v, b)
    order_rev.append(best[1]); remaining.discard(best[1])
order = order_rev[::-1]
g, s = gain(order); print('greedy order           : %.2f GB (%.1f%%) movable, %d leaves' % (g / 1e9, 100 * g / TOT, s.sum()))
# per hard ball
print('\nper hard ball (greedy order): leaves movable / total, bytes movable / total, main targets')
pos = {b: n for n, b in enumerate(order)}
for B in [768, 825, 1016, 815, 987, 823, 858, 1010, 282, 830, 905, 1056, 1487, 1800, 2340]:
    m = meta[:, 0] == B
    hs = [h for h in bysrc.get(B, []) if int(tgt[h]) in easy or pos.get(int(tgt[h]), 1e9) < pos[B]]
    ok = np.zeros(N, bool); ok[idx[hs]] = True
    tg = collections.Counter(int(tgt[h]) for h in hs).most_common(4)
    fb = np.zeros(N, bool); fb[idx[[h for h in bysrc.get(B, [])]]] = True
    print(B, '%d/%d  %.2f/%.2f GB  any-order %.2f GB  targets %s' % ((ok & m).sum(), m.sum(), nb[ok & m].sum() / 1e9, nb[m].sum() / 1e9, nb[fb & m].sum() / 1e9, tg))
json.dump(order, open('greedy_order.json', 'w'))
