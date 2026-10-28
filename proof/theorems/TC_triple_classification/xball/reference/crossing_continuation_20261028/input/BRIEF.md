# MUB triples in ℂ⁶: the crossing at F₆ (continuation 2)

Thank you for the continuation. We are using four things from it:
- the exact product isolation certificate (radius 1/105);
- the regular tube |γ|/540;
- the residual box test;
- the audit. The census labels are now marked heuristic, and the validation gauge is fixed, in the GitHub
  repository's `TripleClassification/`.

This brief sends what you asked for and says where the bottleneck now is.

## What you asked for

`crossing/prior_local_CHECKPOINT.md` is the earlier local checkpoint: the crossing germ and product isolation. We do
not have its verifier chain either; only the document is available to us.

## What happened meanwhile: a quantitative crossing core

Working on the X-ball (all Hadamard classes within distance about 0.15 of F₆, in the chart of theorems U and W), our
team proved a quantitative crossing lemma: `crossing/CORE_LEMMA.md`, plan in `crossing/QUANTITATIVE_CROSSING.md`,
X-ball setting in `crossing/XBALL_PROOF.md`.

- **Method.** It is your §3 criterion. At each of the two crossing centres:
  - two commuting order-three symmetries;
  - a rank-51 Jacobian whose 4-dimensional kernel splits into the two fixed planes K₀ and K₁;
  - an equivariant normal inverse giving an implicit graph over K₀ ⊕ K₁;
  - the reduced residual factored as C(u, v)(u ⊗ v), with a mixed-Hessian bound giving ‖C − I‖ < 1. So every
    zero has u = 0 or v = 0.
- **Certified radii.** R = 3/1024, ρ = 21/8192, η = 3/8192, with normal contraction about 0.0074 and mixed defect
  about 0.947.
- **Core result.** The all-K core of the X-ball, ‖w‖ ≤ r/128 (about 0.001 in the chart's coordinates), is
  CERTIFIED: every completing basis is of known type. This is conditional on the lemma and on the qualitative
  surface theorem.
- **Receipts.** `crossing/crossing_structure_20261028.json` is the exact algebra at the centres;
  `crossing/crossing_radius_20261028_v3.json` holds the 224-bit Arb radii.
- **Code.** The `.py` files are for reading only: they import the rest of the project.

## The bottleneck

Outside that tiny core, the X-ball is covered by shell cells, each tested by the whole-ball certifier. The
certifier forces the symmetry with a contraction bound q < 1, and recognition then identifies the triple. It
currently fails on about 90% of cells at radii r/2 to r/8 and only starts closing cells at about r/16. Subdividing
grows the work roughly 16-fold per level. The failures are near-exact triples near the crossing, not phantoms: the
continuous family's Fourier-type transitions pass through F₆.

The same region also blocks the last seed balls. In unresolved seed-ball patterns we fitted near-exact triples
(median residual 7·10⁻⁴). For 88% of them, the third transition H*K/√6 lies near F₆.

So the single most useful result now would be a **larger quantitative neighbourhood of the crossing**.

## Questions

1. **Review the crossing lemma** (`CORE_LEMMA.md`) against your §3 criterion: hypotheses, constants, the
   equivariant normal inverse, and the passage from the factorisation to "every zero lies on a known plane". Is
   anything missing? In particular, does the qualitative surface input it uses follow from
   `prior_local_CHECKPOINT.md`?
2. **Enlarge the crossing radius.** The current R = 3/1024 is limited by uniform second- and third-derivative bounds
   on the whole R-ball. Can you give a version with explicit constants that is valid at much larger R? For example:
   - anisotropic (along K₀ and K₁ versus normal) or weighted bounds;
   - a mixed-defect estimate that uses the exact structure of C(u, v) rather than a uniform Hessian bound;
   - a cover of a larger neighbourhood by several such charts centred at points of the two branches, not only at
     the crossing.

   A radius around 0.02–0.05 in the 55 dephased phases would change the picture.
3. **A centre-specific family tube we can compute.** You noted that a certified moving singular value σ₀ at a family
   point gives radius σ₀/60, which is about 0.026 at γ = 1 numerically, against the uniform bound |γ|/540.
   - Can you state that as a theorem with all constants explicit, including the alignment of a cell's enclosure to
     the family point?
   - Ideally, give a version where σ₀ is certified on a whole parameter interval of the family, not one point.

   We would then cover the family's neighbourhood away from γ = 0 by finitely many certified tubes, and glue them
   to the crossing core.
4. **Gluing.** Given a crossing neighbourhood of radius R_c, what lower bound on |γ| holds on family points outside
   it? That fixes how small the regular tubes must get.

Please label claims **PROVED**, **NUMERICAL** or **CONJECTURED** as before.
