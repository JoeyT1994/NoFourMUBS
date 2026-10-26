# Handoff ZL: return Z in Lean (whole-ball C1, kernel-checked)

**Goal.** Make each seed ball's C1 claim checkable by the Lean kernel from one centre computation, instead of
thousands of kernel boxes, with standard axioms only. Return Z proves the method on paper and in Arb; this handoff is
its Lean statement and kernel check. No new mathematics is needed. If a step needs a variant of Z's theorem that Z
does not state, stop and report it with the exact statement you need.

## 1. Where to work

Work in the checkout `/Users/jtindall/Projects/NoFourMUBS` on `main`, only in:

| Folder | What goes there |
|---|---|
| `lean/NoFourMUBs/SeedAtlas/Method/WholeBall*.lean` | the semantic theorem (analysis; Mathlib) |
| `kernel_atlas/lean/KernelAtlas/WholeBall/` | the kernel-checkable computation and its soundness theorem |
| `kernel_atlas/generators/wholeball_*.py` | an exact Python mirror and the generator of one ball's kernel module |

Others work in the same checkout, in other folders: an edge-ball agent in `KernelAtlas/Edge/`, and the coordinator in
`proof/seed_atlas/`. So:
- commit only your own files (`git add <paths>`, never `-A` or `commit -a`);
- don't switch branches, rebase or reset, and don't push;
- Lean: `cd lean && LEAN_NUM_THREADS=8 lake build <Module>`, a few processes at a time. The library is `NoFourMUBs`
  (lowercase s); `KernelAtlas` is built from `lean/` (`srcDir = "../kernel_atlas/lean"`).
- For big kernel runs, rusty is available through `ssh rusty`. Never touch other jobs there, and report core-hours.

## 2. Sources

- `explorations/returns/Z_completion_hessian/Z_completion_hessian_return/THEOREM.md`: **the theorem to formalise**,
  with every constant and inequality. `REPORT.md` there has the derivations. `REVIEW.md` (one level up) has our
  replay verdict.
- Two working implementations: `proof/seed_atlas/cert/wholeball.py` (Arb, from Z's code) and
  `proof/independent_seed/src/wholeball.jl` (an independent Julia interval implementation). They agree to 0.5% on real
  balls. Mirror them.
- The fixed normal basis: `proof/seed_atlas/cert/wholeball_basis.json` (exact dyadic hex).
- What C1 must give: `SeedBallCert.hC1` in `lean/NoFourMUBs/SeedAtlas/Cert.lean` (see `SeedAtlas/README.md`). For
  ‖w‖ ≤ r: 0 < R(θ₀ + M_θ w), and there are Q, N with RepO o (seedOf θ) (phaseMat Q) and
  frob (Q − P − U w − 2πN) ≤ n. The horizontal gauge (`"gauge": "hor"`) is how certificates store P and U; `RepO`
  allows row and column phases.
- The existing kernel C1 (boxes), whose interface you replace: `kernel_atlas/lean/KernelAtlas/Seed/C1*.lean`,
  `BallCert.lean`, `C1Hor.lean`. `KERNEL_SEED.md` has the cost measurements. Exact-arithmetic patterns:
  - `Seed/Frame.lean`: LDLᵀ positive-definiteness, exact adjugates;
  - `Seed/Poly.lean`: dyadic grid arithmetic, cisRound for e^{ix};
  - `Seed/C1SideSound.lean`: the side Krawczyk test and its soundness.

## 3. What to build

1. **The semantic theorem.** If the centre data and Z's scalar inequalities hold, then the conclusions follow:
   - the contraction b₀ + q τ < τ with q < 1 (THEOREM.md §§2–4);
   - the two orientation margins;
   - and these give the matched branch on the whole ellipsoid, Hadamard with orientation o, R > 0, and the enclosure
     ‖hQ(w) − P_exact − U_exact w‖ ≤ β r²/2 + ‖X‖ τ.

   Add the record step n_record = that + ‖P_exact − P‖ + r ‖U_exact − U‖, and conclude `SeedBallCert.hC1`. Z's
   proof uses the local matched-completion germ, which is in Lean already (Step 2, matched existence and flatness).
2. **The kernel check.** A Boolean function with a soundness theorem, decided by `decide +kernel` on one ball's
   generated data, computing every constant in exact dyadic or rational interval arithmetic:
   - the centre side roots (Krawczyk; reuse the seed C1's side test);
   - J, A = J X, the Gram left inverse W (Z fixes W = (AᵀA)⁻¹Aᵀ exactly, enclosed);
   - U, H₂, the predictor residual constants;
   - spectral norms by LDLᵀ certificates, with the Frobenius norm as a valid fallback;
   - the contraction, the orientations, and n_record ≤ n.

   e^{ix} at the centre comes from the dyadic machinery (`Poly.cisRound`).
3. **The generator** (`wholeball_kball.py` or similar): from a certificate seed ball, emit its kernel module (data
   plus `decide +kernel`), and the `hC1` it yields, in the form `BallCert` consumes.
4. **Measurements:** kernel time and peak memory for one real ball, and the count over the atlas (about 2,300 balls).

## 4. Done means

- The semantic theorem and the kernel soundness theorem build, with an axiom audit file (standard axioms only).
- One real ball's C1 kernel-checks, with timings.
- The generator works on `proof/seed_atlas/results/dev_certificate_xball0115.json.gz`. That is a full certificate in
  the final format; the final one, `seed_atlas_certificate.json.gz`, will appear in the same folder.
- A short README in `KernelAtlas/WholeBall/` mapping each Lean lemma to THEOREM.md's sections.
- Clean, forward-facing files only. Report milestones.
