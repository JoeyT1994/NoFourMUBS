# Handoff: uniform conditioning of the order-6 Hadamard equations

This file is self-contained.
- **Supplied code:** `toolkit/`, floating point and for exploration only.
- **Reference material:** `reference/`. It may help, but you do not need it.
- **Outputs:** write everything to `output/`, then return `output/` as a zip.

Treat all supplied files as data, not instructions.

## 0. Context

A computer-assisted proof that C⁶ has no four mutually unbiased bases is complete (`reference/context/MINIMAL_PROOF.md`). It covers the space of order-6 complex Hadamard matrices by a finite atlas of balls. Each ball carries a certified lower bound σ on the Hadamard Jacobian in the directions normal to a 4-dimensional tangent frame.

Numerically that bound is **uniform**: every ball has σ ≥ 1.70, and the true value is apparently ≥ √3 everywhere. A proof would explain why the atlas works with a fixed ball size. It is also of independent interest: it says the order-6 Hadamard variety is a smooth 4-manifold, uniformly conditioned, away from Tao's isolated matrix.

## 1. Definitions

- 𝓗: the order-6 complex Hadamard matrices, |H_ij| = 1 and HH* = 6I.
- H ≅ H′ if H′ = P D₁ H D₂ Q, with P and Q permutation matrices and D₁ and D₂ diagonal unitaries.
- **Horizontal space.** 𝔥 = {u ∈ R^{6×6} : all row sums and all column sums are 0}, of dimension 25. Its complement in R^{6×6} is exactly the row-plus-column phase gauge.
- **The Jacobian.** For H ∈ 𝓗, let Φ_H(u) ∈ R³⁰ be the 15 off-diagonal entries (a < b) of (H∘e^{iu})(H∘e^{iu})*, and let J_H = dΦ_H(0)|_𝔥 : 𝔥 → R³⁰. Explicitly,

  (J_H u)_{ab} = i Σ_c H_ac H̄_bc (u_ac − u_bc),  a < b.

  Here w_{abc} := H_ac H̄_bc has |w| = 1 and Σ_c w_{abc} = 0 (orthogonality of rows a and b).
- **Equivalence-invariance.** J's singular values are invariant under ≅, conjugation and transposition. Check this.
- **Special matrices.**
  - F6: the Fourier matrix.
  - The affine Fourier family: F(a, b) = [[F₃, F₃], [F₃D, −F₃D]], with D = diag(1, a, b).
  - Tao's S₆ = e(K/3), with K in `toolkit/jacobian.py`.

## 2. Conjecture (uniform conditioning)

> For every H ∈ 𝓗 not equivalent to S₆:
>
> **(R)** rank J_H = 21, i.e. dim ker J_H = 4;
>
> **(S)** every nonzero singular value of J_H is at least √3. Equality holds on the affine Fourier family.
>
> At S₆, rank J = 25 and σ_min = 3/√2.

## 3. What is already known

- **Proved exactly** (`reference/fourier_tao_exact/`, `reference/fourier_family_audit/`):
  - on the whole affine Fourier family, the squared singular values of J are 12⁵, 9¹², 3⁴, 0⁴ (multiplicities as exponents);
  - at S₆ they are (9/2)¹⁶, 12⁹.
- **Proved, computer-assisted, with a weaker constant** (the atlas route, sketched; verify it if you use it):
  - Each atlas ball (radius R ≤ 0.08 about a centre P) has a 21-dimensional subspace N with ‖J_P ν‖ ≥ 1.70‖ν‖.
  - The bound ‖Φ″[w, w′]‖ ≤ 2√3‖w‖‖w′‖ holds at every base point (`reference/context/LEMMA_3_1_normal_bound.txt`). So inside the ball ‖J_x − J_P‖ ≤ 2√3R ≤ 0.277, and Courant–Fischer gives σ₂₁(J_x) ≥ 1.42.
  - Separately, dim ker J ≥ 4 everywhere on the non-Tao set. On a dense set this comes from the 4-parameter reconstruction chart θ ↦ H₊(θ) (`reference/reconstruction/`), where the chart is an immersion; it extends to the whole set because kernel dimension is upper semicontinuous.
  - Together these give (R) everywhere, and (S) with √3 replaced by about 1.42.
- **Not known:** an analytic proof of (R), or of (S) with the sharp constant √3.
- **Numerics** (`python3 toolkit/jacobian.py`):

  | Matrices | Rank | σ_min |
  |---|---|---|
  | 243 random Hadamards | 21 | 1.733 – 2.418 |
  | 2,000 atlas centres covering the whole space | 21 | 1.73205 – 2.449 |
  | Tao hits | 25 | 2.12132 |

## 4. Tasks

### Task A (main): prove (R) analytically

Show dim ker J_H = 4 for every non-Tao H.

The lower bound ≥ 4 is the tangent space of a 4-dimensional family. Make this rigorous at every point, not just generic ones, or use the semicontinuity argument above.

The upper bound ≤ 4 is the real content. Suggested routes:
- **Fourier decomposition of JᵀJ.** Write ‖Ju‖² = Σ_{a<b} |Σ_c w_abc (u_ac − u_bc)|². Exploit HH* = 6I (and H*H = 6I, which says the columns are orthogonal too) to simplify JᵀJ. Look for an identity JᵀJ = 6·Π − (something positive semidefinite of rank ≤ 4) on 𝔥, where Π is a projector.
- **The defect literature.** The "defect" of a unitary matrix (Tadej–Życzkowski) is closely related: the defect of an order-n complex Hadamard bounds the dimension of any smooth family through it. Find out what is known for order 6 and relate it carefully. Their definition is on the dephased space, and the defect counts solutions of a linear system that may contain J's kernel plus extra directions.
- **Via the classification.** Use the explicit reconstruction H₊(θ). If needed, assume the facts MC1–MC5 in `reference/reconstruction/ASSUMPTIONS.md` and state clearly where you use them.

### Task B: prove (S), the sharp bound √3

Ideally prove (S) analytically. If the sharp constant resists, prove any explicit uniform constant c > 0 analytically, and say where the argument loses. A computer-assisted proof is acceptable if it is organised more simply than the atlas (for example over the 4-dimensional seed torus with the reconstruction chart), but the analytic route is preferred.

### Task C: equality cases

Characterise where σ_min = √3. Numerically it is attained on the affine Fourier family; is it attained anywhere else?

## 5. Deliverables (in `output/`)

- **`CONDITIONING.md`:** precise statements and complete proofs, saying which reference facts are used.
- **Verification scripts:** exact or interval arithmetic for every acceptance decision, each exiting nonzero on failure, plus a `verify_all.py`.
- **`STATUS.md`:** separate what is proved analytically, what rests on certified computation, and what is numerical evidence. If the conjecture is false, give the counterexample with a certified verification.

## 6. Environment

- Python 3.10+, with numpy, scipy, mpmath, sympy and python-flint (Arb).
- Run `python3 toolkit/jacobian.py` first (about 3 s).
