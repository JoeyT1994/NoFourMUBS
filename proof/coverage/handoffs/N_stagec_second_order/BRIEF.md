# Handoff N: a second-order single-vector test for Stage C

## The task
Stage C (`PROOF_v2.md` Lemma 4.2; `proof/atlas/STAGEC.md`) is the per-Record cost of the atlas. In the Lean kernel a
typical Record costs about 30 CPU-min and 13 GB, about 6,000 CPU-hours for the 12,021 Records
(`kernel_atlas/docs/KERNEL_TANGENT_V2.md`, "The node driver"); on rusty the estimate is about 80 CPU-min per Record and
17,000–20,000 core-hours (`kernel_atlas/README.md`). The bin tree is about 80% of a Record (Record 146: 1,412 of 1,776 s),
and the linearised ("tangent") test is about 70% of the bin tree. Survey medians per Record: 1.02 M direct tests,
216 k tangent tests, 15 k survivors at M = 96, 185 labels (`explorations/atlas_survey/results/full/SUMMARY.md`).

The tangent test (STAGEC.md C2b) bounds the whole nonlinear remainder by norms: its error term 𝓔(y) contains the
squared increment, the pure-x, cross and pure-δ second-order terms. Measured on Record 100, the true nonlinear remainder
is only 5–36% of 𝓔(y) (table below). That slack is what forces fine bins (M = 96) and caps the radius at 0.08.

**Prove a sharper, kernel-friendly single-vector test** in which the second-order part is computed from its exact
quadratic form and only a cubic remainder is bounded by norms (N1). Optionally, also write up the second-order normal
bound (N2, re-proposed from route 2) so that Records of radius 0.12–0.16 become usable.

## Definitions (self-contained; units are cycles, as in STAGEC.md)
- e(t) = exp(2πit). A Record is a rational centre P (6×6, cycles), a rational tangent frame T (36×4), and radii: every
  Hadamard in the ball is e(P + δ) with δ horizontal, δ = Tη + ν, ‖η‖ ≤ r_H, ‖ν‖ ≤ n, ‖δ_{:,i}‖ ≤ r, ‖δ‖_F ≤ r_F
  (Lemma 4.1 of `PROOF_v2.md`, `STAGEC.md` "Setting").
- A bin at resolution M has midpoint u ∈ (ℤ/M + 1/(2M))⁵ (u₀ = 0) and half-width a = 1/(2M). A vector in it has
  phases u + x with x the mean-free version of d, d₀ = 0, |dⱼ| ≤ a (STAGEC.md C1).
- q_ji = e(u_j − P_ji)/√6, S_i = Σ_j q_ji, c_i = (|S_i|² − 1)/(4π), J_ij = −Im(S̄_i q_ji),
  B_ik = Σ_j J_ij T_{(j,i),k} (STAGEC.md C2b).
- For w_{ji} = x_j − δ_ji, put S′_i = Σ_j q_ji e(w_ji) and F_i = (|S′_i|² − 1)/(4π). Unbiasedness of the vector to
  column i of e(P + δ) is F_i = 0.
- The current test (C2b): a bin is discarded if, for some real y ∈ ℝ⁶,
  |y·c| > a Σ_{j>0} |(Jᵀy)_j| + r_H ‖Bᵀy‖ + 𝓔(y), with 𝓔(y) as in STAGEC.md C2b (`stagec.py`: `tangent_tests`,
  `remainder`).

## Statements
> **The second-order expansion. PROVED (elementary; checked numerically here).**
> F_i = c_i + Σ_j J_ij w_ji + Q_i(w_{:,i}) + ρ_i, where
>
>   Q_i(w) = π ( |Σ_j q_ji w_j|² − Σ_j Re(S̄_i q_ji) w_j² ),  |ρ_i| ≤ (π²/18) Σ_{j,k} |w_ji − w_ki|³.
>
> *Proof.* |S′_i|² = Σ_{j,k} q_ji q̄_ki e(w_ji − w_ki); expand e(t) = 1 + 2πit − 2π²t² + r₃(t) with |r₃(t)| ≤ (2π|t|)³/6
> and |q| = 1/√6. The linear term reproduces J; the quadratic term is −2π² Σ q_j q̄_k (w_j − w_k)², which equals
> 4π Q_i(w). ∎ A numerical check (2,000 random q, w) gives max |ρ_i| / bound = 0.90.

> **N1 (to prove). A second-order tangent test (C2b″).** For every real y ∈ ℝ⁶ and every bin, if
>
>   |y·c| > sup over the bin and ‖η‖ ≤ r_H of | Σ_i y_i [ Σ_j J_ij w_ji + Q_i(w_{:,i}) ] |_{δ = Tη}  +  𝓔₃(y) + 𝓔_ν(y),
>
> then no vector unbiased to I and to some Hadamard of the ball lies in the bin. Here 𝓔₃ bounds Σ_i |y_i| |ρ_i| over the
> bin and ball, and 𝓔_ν bounds the effect of ν (‖ν‖ ≤ n): the linear part n N_y as now, plus the ν-cross terms of Q.
> The supremum of the explicit quadratic polynomial in (d, η) ∈ [−a, a]⁵ × B(r_H) must be bounded rigorously and cheaply
> (in exact or dyadic arithmetic, a few hundred operations per bin), for example by:
> (i) its linear part exactly as now, plus the x–x, x–η and η–η blocks of y·Q bounded by weighted ℓ¹ or operator norms;
> (ii) a centred form at the bin centre (the quadratic vanishes there, so its range is bounded by the gradient terms);
> (iii) for η, the exact maximum of a quadratic form over a Euclidean ball (an eigenvalue bound of a 4×4 matrix).
> State the version you prove, with explicit constants, and its proof.

> **N2 (optional, re-proposed). Second-order normal bound** (route 2's Lemma 4.1′,
> `git show archive-2026-10-17:proof/atlas/route2/MILESTONE1.md` §5.2). With the second-order chart
> δ₀(η) = Tη + ½q(η, η) and e₃ ≥ sup_{‖η‖≤r_H} ‖Φ(δ₀(η))‖, every Hadamard of the ball has δ = δ₀(η) + ν₃ with
> (σ − 2√3 d₀)‖ν₃,N‖ ≤ e₃ + (‖J₀‖ + 2√3 d₀)‖ν₃,T‖ + √3‖ν₃‖², d₀ ≥ ‖δ₀‖. Measured there: rigorous-form n₃ ≈ 0.3 R³
> versus n ≈ √3 R²/σ now. At R = 0.08 the n-term is small (n = 0.0066 rad); at R = 0.16 it is 0.027 rad and matters.
> Prove it (or a variant) and give the corresponding Q-term in N1 (δ₀ instead of Tη).

## Why this is plausible — NUMERICAL (float, this survey; not certificates)
**Slack in the current bound.** `remainder_slack.py`, Record 100, R = 0.08: for 150 surviving bins per level, the
largest sampled |y·(F − c − J w)| over 300 points of bin × ball (ν = 0), divided by 𝓔(y):

| M | median | p90 | max |
|---|---|---|---|
| 12 | 0.18 | 0.25 | 0.36 |
| 24 | 0.13 | 0.17 | 0.20 |
| 48 | 0.08 | 0.11 | 0.16 |
| 96 | 0.05 | 0.07 | 0.08 |

**What a sharper bound would buy (proxy).** `proxy_remainder_scale.py` reruns `stagec.py` with `remainder` multiplied by λ
(an *unsound* proxy for N1: it only emulates a bound λ times smaller). Record 100, R = 0.08, survivors per level:

| λ, levels | M = 6 | 12 | 24 | 48 | 96 | labels | two cliques excluded |
|---|---|---|---|---|---|---|---|
| 1 (now), 12→96 | – | 5,635 | 3,463 | 3,421 | 8,246 | 121 | yes |
| 1, 12→48 | – | 5,635 | 3,463 | 3,421 | – | 353 | no (graph cap) |
| 0.25, 6→48 | 876 | 558 | 863 | 1,323 | – | 169 | yes |
| 0.25, 6→96 | 876 | 558 | 863 | 1,323 | 4,340 | 85 | yes |

Direct tests (bins tested) fall from about 650 k to about 120 k, and tangent tests by a factor of 3.5–5. With λ = 1 a
start at M = 6 saves nothing (5,697 of 7,776 bins survive), so the coarse start needs N1. Over six Records
(`proxy_batch.py`: 100, 2471, 5305, 9889, 146, 11640):
- λ = 0.25, stopping at M = 48, R = 0.08: passes for 100, 2471, 5305 (9889, 146 fail; 11640 is a shrunk near-T₃ Record
  that also fails at λ = 1 at this radius);
- R = 0.12: passes for 100, 2471, 5305 already at λ = 1; with λ = 0.25 also 146;
- R = 0.16: fails for all at λ = 1 (Record 100: 129 k survivors, 964 labels, graph cap); λ = 0.1 passes 100, 2471, 5305,
  146.

The remaining failures are in the graph phase (dense edges), not the bin tree.

**Estimated effect.** If N1 realises λ ≈ 0.25–0.4: a kernel Record ÷2–4 (the linear test is about 56% of a Record and
falls 3.5–5×; stopping at M = 48 removes the most expensive level), so the kernel atlas goes from about 6,000 to about
1,500–3,000 CPU-hours, and `certify.py` and the Julia checker speed up similarly. Separately, many generic Records pass
at R = 0.12, which would cut the number of Records by about (0.12/0.08)⁴ ≈ 5 over the generic part of the atlas (the
per-volume bin cost is then roughly unchanged, but per-Record fixed costs — σ certificate 41 s and 14 GB, boundary
cover 100 s, level-1 bins — are amortised). These are estimates from a float proxy, not measurements of N1.

## What may be used
`STAGEC.md` and `RIGOUR.md` (all current inequalities, including the Frobenius correction of 9 Oct), Lemma 4.1
(`PROOF_v2.md` §4; Lean `NormalBound.lean`), the Record data in `proof/atlas/results/atlas_certificate.json.gz`, and the
existing code. The joint edge test (C4) may be upgraded the same way, but that is optional.

## Deliverables and checking
- `REPORT.md` with: N1 stated and **PROVED** (every constant explicit, every remainder accounted for, including the ν and
  frame-rounding terms that `ballrecord.py` adds to n); optionally N2 **PROVED**.
- A float implementation as a drop-in `tangent_tests2` for `proof/atlas/stagec.py` with the error budget of `RIGOUR.md`
  §3, and **NUMERICAL** measurements on at least the six Records above and a 1-in-40 sample of the atlas (as
  `explorations/atlas_survey/` did): survivors per level, tangent tests, labels, pass rate at (R, final M) =
  (0.08, 48), (0.08, 96), (0.12, 96), (0.16, 96). Success: on the sample, at least 3× fewer tangent tests summed over
  levels at R = 0.08 with every Record still passing; or a pass rate of at least 70% at R = 0.12.
- A Lean statement of the new test in the style of `lean/NoFourMUBs/StageC/Linear.lean` (the interface `StageCCert`
  must not change), and a note on how the kernel checker (`kernel_atlas/lean/KernelAtlas/Tangent2*.lean`) would evaluate
  it in integer arithmetic.
- Where it plugs in: `STAGEC.md` C2b, `stagec.py` (`tangent_tests`, `remainder`; also `single_tests` if the scalar test
  is upgraded), `lean/NoFourMUBs/StageC/Linear.lean` and `Single.lean`, the independent checker `proof/independent/`, and
  `kernel_atlas`. A re-certification of the atlas (`verify.py --atlas`, Julia) is needed after integration.

**Risks.** The proxy scales the whole remainder; the realised gain depends on how tightly the quadratic part can be
bounded over a box × ball without expensive optimisation (option (ii), a centred form, may already capture most of it).
At larger radii the graph phase (labels, joint edges, two-clique search) becomes the bottleneck (Record 9889 hits the
graph cap at R = 0.12 even with λ = 0.25), so larger Records may also need a second-order joint edge test. Kernel cost
is per reduction step, not per bit (`KERNEL_TANGENT_V2.md`, "Where the kernel time goes"), so a test with more
arithmetic per bin must still be cheap in operation count.

## Files to package
- `PROOF_v2.md` (§4–5), `AUDIT.md`
- `proof/atlas/README.md`, `STAGEC.md`, `RIGOUR.md`, `COVERAGE.md`, `stagec.py`, `ballrecord.py`, `record.py`,
  `certify.py`, `export.py`, `atlas.py`, `geometry.py`, `arb_replay.py`, `results/atlas_certificate.json.gz` (16 MB),
  `results/RECEIPT.md`
- `lean/NoFourMUBs/StageC/` (all 11 modules), `lean/NoFourMUBs/NormalBound.lean`, `lean/NoFourMUBs/Record.lean`
- `kernel_atlas/README.md`, `kernel_atlas/docs/KERNEL_TANGENT.md`, `KERNEL_TANGENT_V2.md`, `KERNEL_FEASIBILITY.md`,
  `KERNEL_RECORD100.md`; `kernel_atlas/lean/KernelAtlas/Tangent2.lean`, `Tangent2K.lean`, `Tangent2S.lean`
- `explorations/atlas_survey/README.md`, `explorations/atlas_survey/results/full/SUMMARY.md`,
  `explorations/hard_records/README.md`
- `proof/independent/README.md`
- The archived route-2 notes: `git show archive-2026-10-17:proof/atlas/route2/MILESTONE1.md > MILESTONE1.md` (§5.2–5.4)
- `remainder_slack.py`, `proxy_remainder_scale.py`, `proxy_batch.py` (this folder; they expect the repository at
  `/Users/jtindall/Projects/NoFourMUBs` and use its `.venv`)
