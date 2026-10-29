#!/usr/bin/env python3
"""Per-column Kantorovich + exclusion scheme for phantom patterns: FLOAT FEASIBILITY CHECK (no proof role yet).

  python column_kantorovich.py SNAPSHOT.json

For each column of the pattern (unbiasedness to H: g(t, w) = (|<h_i(w), e^{iV}>|^2 - 6)/6, i < 5, V = v0 + B t):
1. numerical solutions t0 inside the colour's bins (multi-start Newton at w = 0);
2. Kantorovich at each t0, uniformly over the cell |w| <= r: beta = ||J_t(t0)^-1||, L = 4 sqrt5 (a proved bound on
   ||D^2 g||, any H with unit entries), eta = beta (||g(t0, 0)|| + delta_w) with delta_w = ||J_w(t0)|| r (first order;
   the rigorous version adds the remainder), h = beta L eta <= 1/2 gives a unique zero within r_minus and it lies
   within r_plus;
3. zeroth-order exclusion of every bin box outside the uniqueness balls: a box with centre c and radius rho holds no
   zero for any w if ||g(c, 0)|| - delta_w(c) > ||J_t(c)|| rho + L rho^2 / 2; vectorised bisection counts boxes;
4. pairwise orthogonality with the enclosures: |<k_a, k_b>| >= |<k_a0, k_b0>| - (r_plus_a + r_plus_b)/sqrt6.
"""
import json, math, sys
import numpy as np


def mid(s): return float(s.strip('[]').split('+/-')[0])


L2 = 4.0     # ||D^2 g[d, e]|| <= 4 ||d|| ||e||: both Hessian parts are <= 2 (H/sqrt6 unitary, sum |m_i|^2 <= 36)


def main():
    s = json.load(open(sys.argv[1])); m = s['model']
    Q0 = np.array([mid(x) for x in m['Q0']]); U = np.array([[mid(x) for x in row] for row in m['U']]); r = mid(m['r'])
    H0 = np.exp(1j * Q0).reshape(6, 6)
    B = np.linalg.qr(np.eye(6)[:, :5] - np.eye(6)[:, 5, None])[0]
    rho_bin = mid(s['bin_radius'])
    rng = np.random.default_rng(3)
    results = []
    for k, col in enumerate(s['columns']):
        v0 = np.array([mid(x) for x in col['v0']])
        bins = np.array([B.T @ np.array([float.fromhex(x) for x in d]) for d in col['bin_deltas']])   # bin centres in t

        def g_J(T):
            """g (n,5), J_t (n,5,5), J_w (n,5,4) at H0, for points T (n,5)."""
            V = v0[None, :] + T @ B.T                                   # (n,6)
            e = np.exp(1j * V)
            Mm = e @ H0.conj()                                          # m_i = sum_a conj(h_ai) e_a  -> (n,6)
            g = (np.abs(Mm[:, :5]) ** 2 - 6) / 6
            # d g_i / d V_a = 2 Re(conj(m_i) * i conj(h_ai) e_a) / 6
            dV = 2 * np.real(np.conj(Mm[:, :5, None]) * 1j * (H0.conj().T[None, :5, :] * e[:, None, :])) / 6   # (n,5,6)
            Jt = dV @ B                                                 # (n,5,5)
            # d g_i / d Q_ai = 2 Re(conj(m_i) * (-i) conj(h_ai) e_a) / 6 ; dQ/dw = U rows 6a+i
            dQ = 2 * np.real(np.conj(Mm[:, :5, None]) * (-1j) * (H0.conj().T[None, :5, :] * e[:, None, :])) / 6  # (n,5,6)
            Ui = np.stack([U[[6 * a + i for a in range(6)], :] for i in range(5)])                    # (5,6,4)
            Jw = np.einsum('nia,iaj->nij', dQ, Ui)
            return g, Jt, Jw
        # 1. numerical solutions
        sols = []
        starts = bins + rng.uniform(-1, 1, bins.shape) * rho_bin / math.sqrt(5)
        for t in starts:
            for _ in range(40):
                g, Jt, _ = g_J(t[None]); g, Jt = g[0], Jt[0]
                try: t = t - np.linalg.solve(Jt, g)
                except np.linalg.LinAlgError: break
                if np.linalg.norm(g) < 1e-14: break
            g, Jt, Jw = g_J(t[None])
            if np.linalg.norm(g) < 1e-12 and np.min(np.linalg.norm(bins - t, axis=1)) <= rho_bin and \
                    not any(np.linalg.norm(t - u[0]) < 1e-8 for u in sols):
                sv = np.linalg.svd(Jt[0], compute_uv=False)
                beta = 1 / sv[-1]; dw = np.linalg.norm(Jw[0], 2) * r
                eta = beta * (np.linalg.norm(g[0]) + dw); hk = beta * L2 * eta
                rp = (1 - math.sqrt(max(0, 1 - 2 * hk))) / (beta * L2) if hk <= 0.5 else float('inf')
                rm = (1 + math.sqrt(max(0, 1 - 2 * hk))) / (beta * L2) if hk <= 0.5 else 0.0
                sols.append((t, beta, dw, hk, rp, rm))
        # 3. exclusion count outside the uniqueness balls (vectorised bisection over bin boxes; cube half-width w)
        boxes = bins.copy(); half = np.full(len(bins), rho_bin); count = 0; open_boxes = 0
        for depth in range(0 if __import__('os').environ.get('QUICK') else 40):
            if len(boxes) == 0: break
            count += len(boxes)
            rho = half * math.sqrt(5)                                   # ball containing the cube
            g, Jt, Jw = g_J(boxes)
            dw = np.linalg.norm(Jw, ord=2, axis=(1, 2)) * r + 0.5 * L2 * r * r   # crude first-order + slack
            lhs = np.linalg.norm(g, axis=1) - dw
            rhs = np.linalg.norm(Jt, ord=2, axis=(1, 2)) * rho + L2 * rho ** 2 / 2
            inside = np.zeros(len(boxes), bool)
            for (t0, beta, _, hk, rp, rm) in sols:
                if hk <= 0.5: inside |= np.linalg.norm(boxes - t0, axis=1) + rho <= rm
            keep = ~(lhs > rhs) & ~inside
            boxes, half = boxes[keep], half[keep]
            if depth == 39 or len(boxes) > 3_000_000: open_boxes = len(boxes); break
            # bisect each kept cube along all 5 axes would be 32x; split the longest (all equal) -> split dim depth%5
            j = depth % 5; h2 = half / 2
            off = np.zeros_like(boxes); off[:, j] = h2
            boxes = np.concatenate([boxes - off, boxes + off]); half = np.concatenate([h2, h2]) if j == 4 else np.concatenate([half, half])
            # (cube half-width shrinks every 5 splits; this keeps the bookkeeping simple and conservative)
        results.append(sols)
        print(' column %d: %d bins, %d solutions; Kantorovich h %s; r_plus %s; r_minus %s; boxes examined %d, unresolved %d'
              % (k, len(bins), len(sols), [round(x[3], 3) for x in sols], [round(x[4], 4) for x in sols],
                 [round(x[5], 4) for x in sols], count, open_boxes), flush=True)
    best = None
    for a in range(6):
        for b in range(a + 1, 6):
            if not results[a] or not results[b]: continue
            ok = True; worst = 9
            for (ta, *ra) in results[a]:
                ka = np.exp(1j * (np.array([mid(x) for x in s['columns'][a]['v0']]) + B @ ta)) / math.sqrt(6)
                for (tb, *rb) in results[b]:
                    kb = np.exp(1j * (np.array([mid(x) for x in s['columns'][b]['v0']]) + B @ tb)) / math.sqrt(6)
                    slack = abs(np.vdot(ka, kb)) - (ra[3] + rb[3]) / math.sqrt(6)
                    worst = min(worst, slack)
            if best is None or worst > best[0]: best = (worst, (a, b))
    print(json.dumps(dict(snapshot=s['subatlas'], sub=s['sub'], pattern=s['pattern'], r=r, best_pair=best[1] if best else None,
                          orthogonality_slack=best[0] if best else None)))


if __name__ == '__main__': main()
