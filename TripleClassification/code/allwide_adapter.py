#!/usr/bin/env python3
"""Feed tc-pattern-snapshot-v1 patterns to the collaborator's all-wide capture checker (EXPERIMENTAL, no proof role yet).

  python -I allwide_adapter.py CHECKER_SRC_DIR OUT.jsonl SNAPSHOT.json[.gz]...

For each snapshot it builds a tc-allwide-column-input-v1 document:
- h_phase[a][j] encloses Q[6a + j] over the whole cell, Q = Q0 + U w + H2 (w kron w)/2 + X xi with |w| <= r,
  |xi| <= tau: the Arb ball Q0 +/- (r ||U_row||_2 + r^2/2 ||H2_row||_2 + tau ||X_row||_2) (the 16-vector norm of
  H2_row bounds its action on w kron w, whose norm is |w|^2);
- each column's v0 (mean-zero phases) and phase_radius, as the certifier wrote them;
- up to two capture-centre proposals per column: distinct numerical roots, at the centre H, of the column's six
  unbiasedness residuals inside its ball (Gauss-Newton from many starts). They are proposals only; the checker
  assumes nothing about them.

It then runs the checker's certify() (cap_monotonic_certificate.py, the fast radial-secant route) and writes one
line per snapshot: the input hash, the verdict, and per column the capture radius or why none was established.
ALLWIDE_FIXED_H=1 (a diagnostic, never a proof input) freezes H at the cell centre.
"""
import gzip, json, math, os, sys
import numpy as np


def load(path):
    return json.load(gzip.open(path, 'rt') if path.endswith('.gz') else open(path))


def helmert_np():
    B = np.zeros((6, 5))
    for j in range(5):
        d = math.sqrt((j + 1) * (j + 2))
        B[:j + 1, j] = 1 / d
        B[j + 1, j] = -(j + 1) / d
    return B


def mid(s):
    return float(s.strip('[]').split('+/-')[0])


def proposals(Q0, v0, R, B, rng, starts=48):
    """Distinct x with ||x|| <= R where the six residuals (|sum_i exp(i(v0_i + (Bx)_i - Q_ij))|^2 - 6)/6 vanish."""
    def F(x):
        z = np.exp(1j * ((v0 + B @ x)[:, None] - Q0))           # (6 rows i, 6 columns j)
        m = z.sum(0)
        f = (np.abs(m) ** 2 - 6) / 6
        J = (2 * np.real(np.conj(m)[None, :] * 1j * z)).T @ B / 6   # d f_j / d x
        return f, J
    roots = []
    for _ in range(starts):
        x = rng.normal(size=5); x *= R * rng.uniform(0, 1) ** 0.2 / np.linalg.norm(x)
        for _ in range(60):
            f, J = F(x)
            step = np.linalg.lstsq(J, f, rcond=None)[0]
            x = x - step
            if np.linalg.norm(step) < 1e-14: break
        f, _ = F(x)
        if np.linalg.norm(f) < 1e-10 and np.linalg.norm(x) <= R * 1.02 and all(np.linalg.norm(x - y) > 1e-6 for y in roots):
            roots.append(x)
    roots.sort(key=np.linalg.norm)
    return roots[:2]


def main():
    src, out, snaps = sys.argv[1], sys.argv[2], sys.argv[3:]
    sys.path.insert(0, os.path.abspath(src))
    import cap_monotonic_certificate as CAP
    from flint import arb, ctx
    ctx.prec = 160
    B = helmert_np(); rng = np.random.default_rng(1)
    with open(out, 'a') as fo:
        for path in snaps:
            s = load(path); m = s['model']
            A = lambda x: arb(x)
            r, tau = A(m['r']), A(m['tau'])
            nrm = lambda row: sum((A(x) * A(x) for x in row), arb(0)).sqrt()
            h = []
            for a in range(6):
                row = []
                for j in range(6):
                    al = 6 * a + j
                    rad = (r * nrm(m['U'][al]) + r * r / 2 * nrm(m['H2'][al]) + tau * nrm(m['X'][al])).upper()
                    if os.environ.get('ALLWIDE_FIXED_H') == '1': rad = arb(0)   # diagnostic only: H at the centre
                    row.append((A(m['Q0'][al]) + arb(0, rad)).str(radius=True, more=True))
                h.append(row)
            Q0 = np.array([mid(x) for x in m['Q0']]).reshape(6, 6)
            cols = []
            for c in s['columns']:
                v0 = np.array([mid(x) for x in c['v0']]); R = float(arb(c['phase_radius']).upper())
                ps = proposals(Q0, v0, R, B, rng)
                cols.append(dict(v0=c['v0'], phase_radius=c['phase_radius'],
                                 centres=[['%.17g' % t for t in x] for x in ps] or [['0'] * 5]))
            doc = dict(schema='tc-allwide-column-input-v1', h_phase=h, columns=cols,
                       provenance=dict(snapshot=os.path.basename(path), record_sha256=s['record_sha256'],
                                       subatlas=s['subatlas'], sub=s['sub'], pattern=s['pattern']))
            if os.environ.get('ALLWIDE_WRITE_INPUT'):            # keep the input for the exhaustive checker
                with open(os.path.join(os.environ['ALLWIDE_WRITE_INPUT'], os.path.basename(path).split('.')[0] + '.input.json'), 'w') as f:
                    json.dump(doc, f)
            rec = CAP.certify(doc, precision=160)
            summary = dict(snapshot=os.path.basename(path), status=rec['status'], input_sha256=rec['input_sha256'],
                           checker_sha256=rec['checker_sha256'], seconds=round(rec['elapsed_seconds'], 3),
                           radii=[round(mid(x['phase_radius']), 3) for x in s['columns']],
                           roots=[len(c['centres']) if c['centres'] != [['0'] * 5] else 0 for c in cols],
                           captures=[[x['radius_upper'][:12] for x in c['selected_capture_sets']] or
                                     [a.get('reason', a.get('status')) for a in c['attempts'] if isinstance(a, dict) and 'status' in a][:1]
                                     for c in rec['columns']],
                           pairs=[w['columns'] for w in rec['incompatible_pairs']],
                           graph=(rec['graph_result'] or {}).get('no_six_colour_clique'))
            fo.write(json.dumps(summary) + '\n'); fo.flush()
            print(summary['snapshot'], summary['status'], summary['roots'], summary['captures'], summary['pairs'][:3], flush=True)


if __name__ == '__main__': main()
