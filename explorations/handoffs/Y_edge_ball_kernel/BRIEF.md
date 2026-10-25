# Handoff Y: kernel checks for the edge ball (the "X-ball" around F6)

**Goal.** Make every field of the edge ball's certificate checkable by the Lean kernel, standard axioms only
(`propext`, `Classical.choice`, `Quot.sound`). Done means the hypothesis-free proof of "no four MUBs in C⁶" can include
the edge ball. This is Lean and kernel engineering on an existing, working design. No new mathematics is needed; if
something seems to need it, stop and report.

## 1. Where the code is

Work in the project checkout `/Users/jtindall/Projects/NoFourMUBS` on `main`, in the folders of §2 only. The
coordinator works in the same checkout on other folders (`proof/seed_atlas/`, rusty jobs). So:
- stage and commit only your own files (`git add <paths>`, never `git add -A` or `commit -a`);
- don't switch branches, rebase or reset;
- don't touch files outside §2's folders.

Earlier edge-kernel work is on `main`: `Edge/Sys.lean`, `Edge/C1e.lean`, `generators/edge_c1e.py` and
`SeedAtlas/XShape.lean`. `kernel_atlas/lean/KernelAtlas/Edge/C1eSide.lean` is uncommitted. It builds in about 10 s with
no `sorry`; review it and commit it with your work. The Lean build cache in `lean/.lake` is populated.

Lean: `lean/` is the Lake project (Lean 4 + Mathlib). The kernel library `KernelAtlas` lives in `kernel_atlas/lean` and
is built from `lean/` (`srcDir = "../kernel_atlas/lean"`). Example: `cd lean && LEAN_NUM_THREADS=8 lake build
KernelAtlas.Edge.C1e`. The library `NoFourMUBs` (lowercase s) is `lean/NoFourMUBs/`.

## 2. Where to work

| Folder | What goes there |
|---|---|
| `kernel_atlas/lean/KernelAtlas/Edge/` | the edge ball's kernel checks and their soundness theorems (`Sys`, `C1e` exist) |
| `kernel_atlas/generators/edge_*.py` | exact Python mirrors and the generator of one edge ball's kernel modules (`edge_c1e.py` exists) |
| `lean/NoFourMUBs/SeedAtlas/` | only the statement side: `XShape.lean` (exists), an `EdgeBallCert` variant whose exclusion is `XExclusion ρ` instead of `stageC`, and an `EdgeFinal` variant using it. Keep every existing theorem compiling. |
| `kernel_atlas/docs/KERNEL_EDGE.md` | update it to the final design and measurements |

Do not change the seed-ball kernel (`KernelAtlas/Seed/`) except to reuse it. If a shared lemma needs generalising, add
the general version alongside it.

## 3. What the edge ball is

- **The chart.** U's chart "F6-012": p = (u₁, u₂, u₃, y) ↦ the matched completion of the corner seed
  θ = θ⁰ + (u₁, u₂, u₃, t). Each side's 7 unknowns x = (t, φ₁..φ₆) solve the augmented system γ(φ) = Γ(θ),
  Im Ψ/24 + y/48 = 0 (the vertical side at (u₁, u₃, u₂, −y)), and D = −C E*(B*)⁻¹.
- **The ball.** It is centred at F6 (p = 0) with frame `Mth` from return W's tangent metric. Tangent radius `t` is
  about 0.15–0.19, set by the radius ρ of X formalised in Lean, ρ = 0.20–0.25 (a parallel effort, not yours).
  - Float definition: `proof/seed_atlas/driver/edge_phase.py`, `EdgeBall.xball(t)`.
  - Certificate format: `proof/seed_atlas/FORMAT.md` §8, with `"exclusion": "X"` and `"q0"`.
- **Its exclusion is X, not Stage C.** The kernel must check, per box, `frob (hor (Q w − F6phase + 2πN)) ≤ ρ`. Then
  `XExclusion ρ` (`SeedAtlas/XShape.lean`) gives no quartet edge.
- **Reference implementations** of every check below, in floats and intervals:
  - Arb: `proof/seed_atlas/cert/edgecert.py`, especially `edge_box_Q`, `certify_edge_c1`, `graph_image_and_sigma`,
    `dQ_derivative`, `check_edge_transfers`;
  - Julia: `proof/independent_seed/src/edge.jl`, `edge_transfers.jl`, `graph.jl`.

  Arb has certified the baseline X-ball (t = 0.115): C1e over 29,792 boxes, image bound 0.1441, σ_D 0.934.

## 4. The fields, with what exists and what is left

The semantic statement is `EdgeBallCert` in `lean/NoFourMUBs/SeedAtlas/Edge.lean`. Its fields are listed in
`lean/NoFourMUBs/SeedAtlas/README.md`, and the proved route is `EdgeFinal.no_four_mubs_seed`.

| Field | Kernel route | Status |
|---|---|---|
| `hC1e` (Hadamard + enclosure) | per box: augmented-side Krawczyk tubes (7 unknowns), t = t′, forced block, arg; the C1 vertex bound | **Started**: `Edge/Sys.lean` (residual, Jacobian, directional derivative) and `Edge/C1e.lean` (box check), mirror `edge_c1e.py`; `Edge/C1eSide.lean` is in progress. Reuse the seed C1 optimisations (interval Jacobian, tube rows, interval-first signs, unit factors: `KERNEL_SEED.md`, "Per-box cost reductions"). |
| Hadamard at y = 0 | closure: Hadamard on the dense set y ≠ 0, plus continuity (`KERNEL_EDGE.md` §2) | to do |
| `hcont` | the tube solution is continuous (unique zero in a compact tube) | to do |
| exclusion | the per-box image bound ≤ ρ, plus `XExclusion ρ` as the field | to do (statement variant + check) |
| (G) `hσF`, `hRG`, `hG` | σ ≥ 1.7 at F6 by the old kernel record machinery (`KernelAtlas/FrameK`, `ExactK`, …); R_G = 0.45, 2√3 R_G < σ; per box ‖h(Q − P_F)‖ < R_G | to do |
| `eta`, `heta` | exact linear algebra on F6's frame | to do |
| (D) `hopen` | `lean/NoFourMUBs/SeedAtlas/Method/SlopeOpen.lean` proves openness from a Krawczyk slope bound; you need per-box slope (derivative) enclosures of w ↦ η(h(Q(w) − P_F)) (Arb's `dQ_derivative` is the reference) | lemma done; enclosures to do |
| edge sphere | T1 into seed balls on edge-box models (reuse `Seed/T1`, `Seed/Core`, `Seed/Full`), sphere coverage traversal (`Seed/Cover`) | to do |
| assembly | a generator writing one edge ball's kernel modules from the certificate (pattern: `kernel_atlas/generators/seed_kball.py`), and a final module combining it with the seed balls | to do |

Every check is a Lean `Bool` function with a soundness theorem, decided first by an exact Python mirror that
the generator uses. Kernel checks are `decide +kernel` on generated data. That is the pattern of
`kernel_atlas/lean/KernelAtlas/Seed/` (read `C1.lean`, `C1SideSound.lean`, `C1Box.lean`, `Core.lean`).

## 5. Deliverables

1. The modules and soundness theorems above, with an axiom audit file listing the main theorems (standard axioms only).
2. The generator, and the kernel timing of one real edge-ball box and one transfer box.
3. A cost estimate for the full edge ball (about 30k C1e boxes at 16 per axis, plus 0.4–1.2M sphere boxes).
4. `KERNEL_EDGE.md` updated.
5. Commits on `main`, your files only. Don't push.

**Constraints.**
- Keep files clean and forward-facing, with no exploratory leftovers.
- Do not modify the paper (`paper/`).
- Rusty (the cluster) is available through `ssh rusty` for big kernel runs. Never touch other jobs there, and report
  core-hours at the end.
- If the machine is shared, keep Lean to `LEAN_NUM_THREADS=8` and a few processes at a time: one kernel module can
  use 8–20 GB.
