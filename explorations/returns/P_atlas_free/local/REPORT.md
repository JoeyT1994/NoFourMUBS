# Subproblem B: exceptional product orbit

## Results

| Claim | Status | Evidence |
|---|---|---|
| The product pair \(H_0=F_2\otimes F_3\), \(K_0=\operatorname{diag}(1,\omega,\omega,i,i\omega,i\omega)H_0\) is an exact MUB triple in the canonical gauge. | CERTIFIED | Exact arithmetic in \(\mathbb Q(i,\sqrt3)\). |
| All three of its edges are equivalent to the ordinary Fourier matrix. | CERTIFIED | Explicit dephasing, row/column permutation witnesses, and singular-minor checks. |
| Its complex conjugate is in the same allowed finite equivalence orbit. | CERTIFIED | Explicit basis exchange and monomial witness. |
| The full 96-by-55 Jacobian has rank 55. | CERTIFIED | A 55-by-55 minor has determinant 8 modulo 13 under \(\sqrt3\mapsto4\); an exact inverse independently proves nonsingularity. |
| The triple is the unique exact solution in \(\|x\|_\infty\le1/256\) radians. | PROVED with CERTIFIED constants | Full-space Taylor argument; \(\Lambda\le5735/12\) and \(5735/6144<1\). |
| Every nonzero exact lifted solution obeys \(\|x\|_\infty\ge24/5735\). | PROVED | Radial Taylor inequality with the same exact constant. |
| B holds at every point of the exceptional product orbit. | PROVED | Isolation and invariance under the finite equivalence homeomorphisms. |
| The union of the known continuous orbit and the exceptional orbit is clopen; its quotient consists of two connected components. | PROVED using the supplied component theorem | Compactness, local completeness of the supplied surface, and the new isolation theorem. |
| A implies the remaining B statement for the two proposed classes. | PROVED | A identifies \(V_F\) with the now-completed known clopen locus. |
| The exceptional product triple admits no single common unbiased ray. | PROVED; reproof of known result | Elementary qubit/qutrit marginal argument; exact local MUB checks. No dependence on E. |
| A, C, global F or global F′. | NOT ESTABLISHED | Additional Fourier-edge triples and disconnected Fourier-free components remain uncontrolled. |

There are no numerical-only mathematical conclusions in this sub-bundle.
No atlas file or atlas-derived assertion is used.

## Replay

```bash
python -S verify_isolated.py
```

The script uses Python's standard library and no floating point. It
reconstructs the triple from its defining formula, checks its exact
identities, compares two independent derivative constructions, recomputes
the inverse, and verifies every finite inequality used in the proof.

`LOCAL_ISOLATION.md` contains the full theorem and proof;
`TOPOLOGICAL_REDUCTION.md` gives the corrected boundary direction and
remaining scope; `PRODUCT_NONEXTENSION.md` reproves the known product
obstruction independently of E. The inverse matrix, receipt and replay
log are retained for inspection. The main return's manifest covers these
files.

## Independent integration review

The root contribution `../algebra/DEGREE_AND_REDUCTION.md` was independently
reviewed. Its length formula \(252-2Z_2\) is sound conditional on the
explicitly declared Sun boundary theorem, which states zero-dimensionality
of the same unsaturated projective scheme and reducedness of every
boundary point in the full scheme. The regular-sequence/Koszul degree
argument and subtraction of boundary length are valid. The bound of 72
framed matched completions, finite-fibre semialgebraic dimension bound
\(\dim_{\mathbb R}V_{\rm ff}\le4\), and nonreduced trace-form signature
argument are also valid. A requested notation clarification was to make
the real fixed algebra explicit before taking its trace-form signature.

This review is a written mathematical audit, not a Lean kernel check or
an executable certification of the external boundary theorem.
