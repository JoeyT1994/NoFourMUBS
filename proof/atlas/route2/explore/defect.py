import numpy as np, networkx as nx
def triple_defect(X):
    n = len(X); G = np.abs(X.conj() @ X.T)
    vals = sorted(G[a, b] for a in range(n) for b in range(a+1, n))
    lo, hi = 0, len(vals) - 1
    def has6(t):
        g = nx.Graph(); g.add_edges_from((a, b) for a in range(n) for b in range(a+1, n) if G[a, b] <= t)
        return any(len(c) >= 6 for c in nx.find_cliques(g))
    while lo < hi:
        mid = (lo + hi) // 2
        if has6(vals[mid]): hi = mid
        else: lo = mid + 1
    return vals[lo]

