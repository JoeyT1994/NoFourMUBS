import NoFourMUBs.PRM.CoverageTenStrip

/-!
# Endpoint exclusion by counting (return S)

From return S (`MinimalReconstruction/returns/S_endpoints_by_counting`, `PROOF.md` §2, §3 and the unbundled
argument of §7; `MinimalReconstruction/Proofs/ENDPOINT_COUNTING.md`).  For a phase-orthogonal `3 × 6`
strip `T` and its ten corners `k` containing column `0` (`threeSum`, `stripP` of `CoverageTenStrip`):

* `stripJ T k = 2 Re(a_C b_C c_C)`, where `a, b, c` are the relative phases of the row pairs
  `(0,1), (1,2), (2,0)` and `a_C = Σ_{j ∈ C} a_j`: the signed invariant `J` of the corner
  (`Coverage.stripJ_top_eq`);
* `stripX T k = |a_C|²`, the `X` of the corner (`Coverage.stripX_top_eq`).

Three universal identities, from unit entries and orthogonal rows only:

* `pair_sums`: for each column `i ≠ 0`, the four corners containing `{0, i}` have
  `Σ a_C b_C c_C = 0` (in particular `dᵢ = Σ_{C ⊇ {0,i}} J_C = 0`, return (6)); the identity
  only needs `Σ a = Σ b = Σ c = 0`, `Σ ab = Σ ac = Σ bc = 0` and `a_j b_j c_j = 1`;
* `fourth_moment`: `Σ_k X_k² = 54 + |Σ_j a_j²|²` (return (8)), so `Σ_k X_k² ≥ 54`;
* `anchored_strip_sum` (`CoverageTenStrip`): `Σ_k p_k = 54`.

`anchored_count`: no phase-orthogonal strip has all ten anchored corners of the classified types
(`CornerType`): `J = 0` with `p ∈ {0, 5}`; `p` in the window `(5.722, 5.723)` of the exceptional
value `p⋆ ≈ 5.72221` (`pStar_bounds`); the equicorrelated endpoint (`X = 9/5`, `p = 27/5`,
`|J| = 54/25`); or the endpoint `p = 7`, `|J| = 2`.  The count (`no_window`, then integers):
`Σ p = 54` leaves no corner in the window; the vertex sums `dᵢ = 0` force, at each vertex, as many
positive as negative `J` of each endpoint type, so both endpoint counts are even; `Σ p = 54` then
leaves ten equicorrelated corners (`Σ X² = 162/5 < 54`) or two `p = 7` corners, whose two edges
cannot balance every vertex.  The window width matters: with the old window `(17/3, 29/5)`, a
corner `p = 143/25` would be admissible.
-/

noncomputable section

open ComplexConjugate

namespace NoFourMUBs.PRM.CoverageTen

/-! ### The universal identities -/

theorem sum_ten {M : Type*} [AddCommMonoid M] (f : Fin 10 → M) :
    ∑ k, f k = f 0 + f 1 + f 2 + f 3 + f 4 + f 5 + f 6 + f 7 + f 8 + f 9 := by
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero, add_assoc]; rfl

/-- The ten anchored triples, `tri 0, …, tri 9`. -/
theorem threeSum_0 (u : Fin 6 → ℂ) : threeSum u 0 = u 0 + u 1 + u 2 := rfl
theorem threeSum_1 (u : Fin 6 → ℂ) : threeSum u 1 = u 0 + u 1 + u 3 := rfl
theorem threeSum_2 (u : Fin 6 → ℂ) : threeSum u 2 = u 0 + u 1 + u 4 := rfl
theorem threeSum_3 (u : Fin 6 → ℂ) : threeSum u 3 = u 0 + u 1 + u 5 := rfl
theorem threeSum_4 (u : Fin 6 → ℂ) : threeSum u 4 = u 0 + u 2 + u 3 := rfl
theorem threeSum_5 (u : Fin 6 → ℂ) : threeSum u 5 = u 0 + u 2 + u 4 := rfl
theorem threeSum_6 (u : Fin 6 → ℂ) : threeSum u 6 = u 0 + u 2 + u 5 := rfl
theorem threeSum_7 (u : Fin 6 → ℂ) : threeSum u 7 = u 0 + u 3 + u 4 := rfl
theorem threeSum_8 (u : Fin 6 → ℂ) : threeSum u 8 = u 0 + u 3 + u 5 := rfl
theorem threeSum_9 (u : Fin 6 → ℂ) : threeSum u 9 = u 0 + u 4 + u 5 := rfl

/-- The product of the three pair sums of the `k`-th anchored corner. -/
def triProd (a b c : Fin 6 → ℂ) (k : Fin 10) : ℂ := threeSum a k * threeSum b k * threeSum c k

/-- **The pair-anchored sums** (return (6)): the four corners through `{0, i}` have
`Σ a_C b_C c_C = 0`, for `i = 1, …, 5`. -/
theorem pair_sums (a b c : Fin 6 → ℂ) (ha : ∑ j, a j = 0) (hb : ∑ j, b j = 0) (hc : ∑ j, c j = 0)
    (hab : ∑ j, a j * b j = 0) (hac : ∑ j, a j * c j = 0) (hbc : ∑ j, b j * c j = 0)
    (hu : ∀ j, a j * b j * c j = 1) :
    triProd a b c 0 + triProd a b c 1 + triProd a b c 2 + triProd a b c 3 = 0 ∧
      triProd a b c 0 + triProd a b c 4 + triProd a b c 5 + triProd a b c 6 = 0 ∧
      triProd a b c 1 + triProd a b c 4 + triProd a b c 7 + triProd a b c 8 = 0 ∧
      triProd a b c 2 + triProd a b c 5 + triProd a b c 7 + triProd a b c 9 = 0 ∧
      triProd a b c 3 + triProd a b c 6 + triProd a b c 8 + triProd a b c 9 = 0 := by
  rw [Fin.sum_univ_six] at ha hb hc hab hac hbc
  have u0 := hu 0; have u1 := hu 1; have u2 := hu 2
  have u3 := hu 3; have u4 := hu 4; have u5 := hu 5
  simp only [triProd, threeSum_0, threeSum_1, threeSum_2, threeSum_3, threeSum_4, threeSum_5,
    threeSum_6, threeSum_7, threeSum_8, threeSum_9]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · linear_combination (b 0 + b 1) * (c 0 + c 1) * ha + (a 0 + a 1) * (c 0 + c 1) * hb +
      (a 0 + a 1) * (b 0 + b 1) * hc + (c 0 + c 1) * hab + (b 0 + b 1) * hac + (a 0 + a 1) * hbc -
      2 * u0 - 2 * u1 + u2 + u3 + u4 + u5
  · linear_combination (b 0 + b 2) * (c 0 + c 2) * ha + (a 0 + a 2) * (c 0 + c 2) * hb +
      (a 0 + a 2) * (b 0 + b 2) * hc + (c 0 + c 2) * hab + (b 0 + b 2) * hac + (a 0 + a 2) * hbc -
      2 * u0 - 2 * u2 + u1 + u3 + u4 + u5
  · linear_combination (b 0 + b 3) * (c 0 + c 3) * ha + (a 0 + a 3) * (c 0 + c 3) * hb +
      (a 0 + a 3) * (b 0 + b 3) * hc + (c 0 + c 3) * hab + (b 0 + b 3) * hac + (a 0 + a 3) * hbc -
      2 * u0 - 2 * u3 + u1 + u2 + u4 + u5
  · linear_combination (b 0 + b 4) * (c 0 + c 4) * ha + (a 0 + a 4) * (c 0 + c 4) * hb +
      (a 0 + a 4) * (b 0 + b 4) * hc + (c 0 + c 4) * hab + (b 0 + b 4) * hac + (a 0 + a 4) * hbc -
      2 * u0 - 2 * u4 + u1 + u2 + u3 + u5
  · linear_combination (b 0 + b 5) * (c 0 + c 5) * ha + (a 0 + a 5) * (c 0 + c 5) * hb +
      (a 0 + a 5) * (b 0 + b 5) * hc + (c 0 + c 5) * hab + (b 0 + b 5) * hac + (a 0 + a 5) * hbc -
      2 * u0 - 2 * u5 + u1 + u2 + u3 + u4

/-- The fourth-moment identity (8) of the return, as a polynomial identity: `vⱼ` stands for `ūⱼ`.
The cofactors were found by linear algebra (`MinimalReconstruction/Proofs/verify_endpoint_counting.py`
re-derives the identity); `linear_combination` checks them. -/
theorem fourth_poly (u0 u1 u2 u3 u4 u5 v0 v1 v2 v3 v4 v5 : ℂ)
    (hu : u0 + u1 + u2 + u3 + u4 + u5 = 0) (hv : v0 + v1 + v2 + v3 + v4 + v5 = 0)
    (e0 : u0 * v0 = 1) (e1 : u1 * v1 = 1) (e2 : u2 * v2 = 1) (e3 : u3 * v3 = 1) (e4 : u4 * v4 = 1)
    (e5 : u5 * v5 = 1) :
    ((u0 + u1 + u2) * (v0 + v1 + v2)) ^ 2 +
      ((u0 + u1 + u3) * (v0 + v1 + v3)) ^ 2 +
      ((u0 + u1 + u4) * (v0 + v1 + v4)) ^ 2 +
      ((u0 + u1 + u5) * (v0 + v1 + v5)) ^ 2 +
      ((u0 + u2 + u3) * (v0 + v2 + v3)) ^ 2 +
      ((u0 + u2 + u4) * (v0 + v2 + v4)) ^ 2 +
      ((u0 + u2 + u5) * (v0 + v2 + v5)) ^ 2 +
      ((u0 + u3 + u4) * (v0 + v3 + v4)) ^ 2 +
      ((u0 + u3 + u5) * (v0 + v3 + v5)) ^ 2 +
      ((u0 + u4 + u5) * (v0 + v4 + v5)) ^ 2 =
      54 + (u0 ^ 2 + u1 ^ 2 + u2 ^ 2 + u3 ^ 2 + u4 ^ 2 + u5 ^ 2) *
        (v0 ^ 2 + v1 ^ 2 + v2 ^ 2 + v3 ^ 2 + v4 ^ 2 + v5 ^ 2) := by
    linear_combination (5*u0*v0^2 + 2*u0*v0*v1 + 2*u0*v0*v2 + 2*u0*v0*v3 + 2*u0*v0*v4 + 8*u0*v0*v5 + 2*u0*v1^2 + 3*u0*v1*v5 + 2*u0*v2^2 + 3*u0*v2*v5 + 2*u0*v3^2 + 3*u0*v3*v5 + 2*u0*v4^2 + 3*u0*v4*v5 + 5*u0*v5^2 - u1*v0^2 + 2*u1*v0*v1 - 2*u1*v0*v2 - 2*u1*v0*v3 - 2*u1*v0*v4 - 3*u1*v0*v5 + 2*u1*v1^2 + 2*u1*v1*v5 - u1*v2*v5 - u1*v3*v5 - u1*v4*v5 - u1*v5^2 - u2*v0^2 - 2*u2*v0*v1 + 2*u2*v0*v2 - 2*u2*v0*v3 - 2*u2*v0*v4 - 3*u2*v0*v5 - u2*v1*v5 + 2*u2*v2^2 + 2*u2*v2*v5 - u2*v3*v5 - u2*v4*v5 - u2*v5^2 - u3*v0^2 - 2*u3*v0*v1 - 2*u3*v0*v2 + 2*u3*v0*v3 - 2*u3*v0*v4 - 3*u3*v0*v5 - u3*v1*v5 - u3*v2*v5 + 2*u3*v3^2 + 2*u3*v3*v5 - u3*v4*v5 - u3*v5^2 - u4*v0^2 - 2*u4*v0*v1 - 2*u4*v0*v2 - 2*u4*v0*v3 + 2*u4*v0*v4 - 3*u4*v0*v5 - u4*v1*v5 - u4*v2*v5 - u4*v3*v5 + 2*u4*v4^2 + 2*u4*v4*v5 - u4*v5^2 + 3*u5*v0^2 + 2*u5*v0*v1 + 2*u5*v0*v2 + 2*u5*v0*v3 + 2*u5*v0*v4 + 8*u5*v0*v5 + 2*u5*v1*v5 + 2*u5*v2*v5 + 2*u5*v3*v5 + 2*u5*v4*v5 + 3*u5*v5^2 - 14*v5) * hu +
      (2*u0^2*v0 + u0^2*v1 + u0^2*v2 + u0^2*v3 + u0^2*v4 - 2*u0^2*v5 + u0*u1*v0 + u0*u1*v1 - 2*u0*u1*v5 + u0*u2*v0 + u0*u2*v2 - 2*u0*u2*v5 + u0*u3*v0 + u0*u3*v3 - 2*u0*u3*v5 + u0*u4*v0 + u0*u4*v4 - 2*u0*u4*v5 + 14*u0 + 4*u1^2*v0 - u1^2*v1 + u1^2*v5 + 4*u1*u2*v0 - 3*u1*u2*v1 - 3*u1*u2*v2 + 2*u1*u2*v5 + 4*u1*u3*v0 - 3*u1*u3*v1 - 3*u1*u3*v3 + 2*u1*u3*v5 + 4*u1*u4*v0 - 3*u1*u4*v1 - 3*u1*u4*v4 + 2*u1*u4*v5 + 14*u1 + 4*u2^2*v0 - u2^2*v2 + u2^2*v5 + 4*u2*u3*v0 - 3*u2*u3*v2 - 3*u2*u3*v3 + 2*u2*u3*v5 + 4*u2*u4*v0 - 3*u2*u4*v2 - 3*u2*u4*v4 + 2*u2*u4*v5 + 14*u2 + 4*u3^2*v0 - u3^2*v3 + u3^2*v5 + 4*u3*u4*v0 - 3*u3*u4*v3 - 3*u3*u4*v4 + 2*u3*u4*v5 + 14*u3 + 4*u4^2*v0 - u4^2*v4 + u4^2*v5 + 14*u4) * hv +
      (2*u0*v0 + 3*u0*v1 + 3*u0*v2 + 3*u0*v3 + 3*u0*v4 + 3*u1*v0 + 10*u1*v1 + 3*u1*v2 + 3*u1*v3 + 3*u1*v4 + 3*u2*v0 + 3*u2*v1 + 10*u2*v2 + 3*u2*v3 + 3*u2*v4 + 3*u3*v0 + 3*u3*v1 + 3*u3*v2 + 10*u3*v3 + 3*u3*v4 + 3*u4*v0 + 3*u4*v1 + 3*u4*v2 + 3*u4*v3 + 10*u4*v4 - 12) * e0 +
      (3*u0*v1 + 3*u0*v2 + 3*u0*v3 + 3*u0*v4 + 3*u1*v0 + 2*u1*v1 + 3*u1*v2 + 3*u1*v3 + 3*u1*v4 + 3*u2*v0 + 3*u2*v1 + 10*u2*v2 + 3*u2*v3 + 3*u2*v4 + 3*u3*v0 + 3*u3*v1 + 3*u3*v2 + 10*u3*v3 + 3*u3*v4 + 3*u4*v0 + 3*u4*v1 + 3*u4*v2 + 3*u4*v3 + 10*u4*v4 - 2) * e1 +
      (3*u0*v1 + 3*u0*v2 + 3*u0*v3 + 3*u0*v4 + 3*u1*v0 + 3*u1*v2 + 3*u1*v3 + 3*u1*v4 + 3*u2*v0 + 3*u2*v1 + 2*u2*v2 + 3*u2*v3 + 3*u2*v4 + 3*u3*v0 + 3*u3*v1 + 3*u3*v2 + 10*u3*v3 + 3*u3*v4 + 3*u4*v0 + 3*u4*v1 + 3*u4*v2 + 3*u4*v3 + 10*u4*v4 + 8) * e2 +
      (3*u0*v1 + 3*u0*v2 + 3*u0*v3 + 3*u0*v4 + 3*u1*v0 + 3*u1*v2 + 3*u1*v3 + 3*u1*v4 + 3*u2*v0 + 3*u2*v1 + 3*u2*v3 + 3*u2*v4 + 3*u3*v0 + 3*u3*v1 + 3*u3*v2 + 2*u3*v3 + 3*u3*v4 + 3*u4*v0 + 3*u4*v1 + 3*u4*v2 + 3*u4*v3 + 10*u4*v4 + 18) * e3 +
      (3*u0*v1 + 3*u0*v2 + 3*u0*v3 + 3*u0*v4 + 3*u1*v0 + 3*u1*v2 + 3*u1*v3 + 3*u1*v4 + 3*u2*v0 + 3*u2*v1 + 3*u2*v3 + 3*u2*v4 + 3*u3*v0 + 3*u3*v1 + 3*u3*v2 + 3*u3*v4 + 3*u4*v0 + 3*u4*v1 + 3*u4*v2 + 3*u4*v3 + 2*u4*v4 + 28) * e4 +
      (-u0*v1 - u0*v2 - u0*v3 - u0*v4 - u1*v0 - u1*v2 - u1*v3 - u1*v4 - u2*v0 - u2*v1 - u2*v3 - u2*v4 - u3*v0 - u3*v1 - u3*v2 - u3*v4 - u4*v0 - u4*v1 - u4*v2 - u4*v3 + 14) * e5

/-- **The fourth-moment identity** (return (8)): for six unit numbers with zero sum,
`Σ_k |u_C|⁴ = 54 + |Σ_j u_j²|²` over the ten anchored corners. -/
theorem fourth_moment (u : Fin 6 → ℂ) (hu : ∀ j, Complex.normSq (u j) = 1) (hs : ∑ j, u j = 0) :
    (∑ k, pairEnergy u k ^ 2) = 54 + Complex.normSq (∑ j, u j ^ 2) := by
  have e : ∀ j, u j * conj (u j) = 1 := fun j => mul_conj_of_normSq (hu j)
  have hs' : ∑ j, conj (u j) = 0 := by rw [← map_sum, hs, map_zero]
  rw [Fin.sum_univ_six] at hs hs'
  have key := fourth_poly (u 0) (u 1) (u 2) (u 3) (u 4) (u 5) (conj (u 0)) (conj (u 1))
    (conj (u 2)) (conj (u 3)) (conj (u 4)) (conj (u 5)) hs hs' (e 0) (e 1) (e 2) (e 3) (e 4) (e 5)
  apply Complex.ofReal_injective
  push_cast
  rw [sum_ten, Fin.sum_univ_six]
  simp only [pairEnergy, ← Complex.mul_conj, threeSum_0, threeSum_1, threeSum_2, threeSum_3,
    threeSum_4, threeSum_5, threeSum_6, threeSum_7, threeSum_8, threeSum_9, map_add, map_pow]
  linear_combination key

/-! ### The corner invariants of a strip -/

/-- `a_C b_C c_C` for the relative phases of the row pairs `(0,1)`, `(1,2)`, `(2,0)`. -/
def cornerProd (T : Strip) (k : Fin 10) : ℂ :=
  triProd (relativePhase T 0 1) (relativePhase T 1 2) (relativePhase T 2 0) k

/-- The signed invariant `J = 2 Re(s̄ r̄ t)` of the `k`-th anchored corner. -/
def stripJ (T : Strip) (k : Fin 10) : ℝ := 2 * (cornerProd T k).re

/-- `X = |s|²` of the `k`-th anchored corner. -/
def stripX (T : Strip) (k : Fin 10) : ℝ := pairEnergy (relativePhase T 0 1) k

theorem relativePhase_mul {T : Strip} (hT : IsPhaseOrthogonalStrip T) (i j l : Fin 3) (c : Fin 6) :
    relativePhase T i j c * relativePhase T j l c = relativePhase T i l c := by
  have e := mul_conj_of_normSq (hT.1 j c)
  simp only [relativePhase]
  linear_combination T i c * conj (T l c) * e

/-- **`dᵢ = 0`**: the signed invariants of the four corners through `{0, i}` sum to zero. -/
theorem strip_pair_sums {T : Strip} (hT : IsPhaseOrthogonalStrip T) :
    stripJ T 0 + stripJ T 1 + stripJ T 2 + stripJ T 3 = 0 ∧
      stripJ T 0 + stripJ T 4 + stripJ T 5 + stripJ T 6 = 0 ∧
      stripJ T 1 + stripJ T 4 + stripJ T 7 + stripJ T 8 = 0 ∧
      stripJ T 2 + stripJ T 5 + stripJ T 7 + stripJ T 9 = 0 ∧
      stripJ T 3 + stripJ T 6 + stripJ T 8 + stripJ T 9 = 0 := by
  have orth : ∀ i j : Fin 3, i ≠ j → ∑ c, relativePhase T i j c = 0 := hT.2
  have P := pair_sums (relativePhase T 0 1) (relativePhase T 1 2) (relativePhase T 2 0)
    (orth 0 1 (by decide)) (orth 1 2 (by decide)) (orth 2 0 (by decide))
    (by simp only [relativePhase_mul hT]; exact orth 0 2 (by decide))
    (by simp only [mul_comm (relativePhase T 0 1 _), relativePhase_mul hT]; exact orth 2 1 (by decide))
    (by simp only [relativePhase_mul hT]; exact orth 1 0 (by decide))
    (fun c => by
      rw [relativePhase_mul hT, relativePhase_mul hT]
      simp only [relativePhase]; exact mul_conj_of_normSq (hT.1 0 c))
  have r : ∀ w x y z : ℂ, w + x + y + z = 0 → 2 * w.re + 2 * x.re + 2 * y.re + 2 * z.re = 0 :=
    fun w x y z h => by
      have := congrArg Complex.re h
      simp only [Complex.add_re, Complex.zero_re] at this
      linarith
  obtain ⟨p1, p2, p3, p4, p5⟩ := P
  exact ⟨r _ _ _ _ p1, r _ _ _ _ p2, r _ _ _ _ p3, r _ _ _ _ p4, r _ _ _ _ p5⟩

/-- `Σ_k X_k² ≥ 54`. -/
theorem stripX_sq_sum {T : Strip} (hT : IsPhaseOrthogonalStrip T) : 54 ≤ ∑ k, stripX T k ^ 2 := by
  simp only [stripX]
  rw [fourth_moment _ (relativePhase_unit hT 0 1) (hT.2 0 1 (by decide))]
  linarith [Complex.normSq_nonneg (∑ j, relativePhase T 0 1 j ^ 2)]

/-! ### The count -/

/-- The window of the exceptional value `p⋆` (`pStar_bounds`). -/
def PStarWindow (x : ℝ) : Prop := (2861 : ℝ) / 500 < x ∧ x < 5723 / 1000

/-- **The classified types of an anchored corner** (`TopStripClassification`, with the geometric
alternative routed to `F6`): `J = 0` and `p ∈ {0, 5}`; `p` in the window of `p⋆`; the
equicorrelated endpoint; the endpoint `p = 7`. -/
def CornerType (T : Strip) (k : Fin 10) : Prop :=
  (stripJ T k = 0 ∧ (stripP T k = 0 ∨ stripP T k = 5)) ∨ PStarWindow (stripP T k) ∨
    (stripX T k = 9 / 5 ∧ stripP T k = 27 / 5 ∧ |stripJ T k| = 54 / 25) ∨
    (stripP T k = 7 ∧ |stripJ T k| = 2)

/-- **No corner in the window**: ten numbers in `{0, 5, 27/5, 7} ∪ (5.722, 5.723)` summing to `54`
avoid the window.  (`5p − ⌊5p⌋ ∈ (0.61, 0.615)` in the window, and no integer lies in
`[0.61 n, 0.615 n]` for `1 ≤ n ≤ 10`.) -/
theorem no_window (p : Fin 10 → ℝ) (hs : ∑ k, p k = 54)
    (h : ∀ k, p k = 0 ∨ p k = 5 ∨ p k = 27 / 5 ∨ p k = 7 ∨ PStarWindow (p k)) (k : Fin 10) :
    ¬ PStarWindow (p k) := by
  intro hk
  have enc : ∀ k, ∃ m : ℤ, ∃ g : ℕ, g ≤ 1 ∧ (61 / 100 : ℝ) * g ≤ 5 * p k - m ∧
      5 * p k - m ≤ (123 / 200 : ℝ) * g ∧ (PStarWindow (p k) → g = 1) := by
    intro k
    rcases h k with h0 | h0 | h0 | h0 | h0
    · refine ⟨0, 0, by norm_num, ?_, ?_, ?_⟩ <;> simp only [h0, PStarWindow] <;> norm_num
    · refine ⟨25, 0, by norm_num, ?_, ?_, ?_⟩ <;> simp only [h0, PStarWindow] <;> norm_num
    · refine ⟨27, 0, by norm_num, ?_, ?_, ?_⟩ <;> simp only [h0, PStarWindow] <;> norm_num
    · refine ⟨35, 0, by norm_num, ?_, ?_, ?_⟩ <;> simp only [h0, PStarWindow] <;> norm_num
    · refine ⟨28, 1, le_refl _, ?_, ?_, fun _ => rfl⟩ <;> push_cast <;> unfold PStarWindow at h0 <;>
        linarith [h0.1, h0.2]
  choose m g hg using enc
  have lo : (∑ k, (61 / 100 : ℝ) * g k) ≤ ∑ k, (5 * p k - m k) :=
    Finset.sum_le_sum fun k _ => (hg k).2.1
  have hi : (∑ k, (5 * p k - m k)) ≤ ∑ k, (123 / 200 : ℝ) * g k :=
    Finset.sum_le_sum fun k _ => (hg k).2.2.1
  have h5 : ∑ k, (5 * p k - m k) = 270 - ∑ k, (m k : ℝ) := by
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hs]; norm_num
  rw [h5, ← Finset.mul_sum] at lo
  rw [h5, ← Finset.mul_sum] at hi
  have hG1 : 1 ≤ ∑ k, g k := by
    rw [← (hg k).2.2.2 hk]; exact Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.mem_univ k)
  have hG10 : ∑ k, g k ≤ 10 := by
    calc ∑ k, g k ≤ ∑ _k : Fin 10, 1 := Finset.sum_le_sum fun k _ => (hg k).1
      _ = 10 := by simp
  have c1 : (61 : ℤ) * (∑ k, g k : ℕ) ≤ 100 * (270 - ∑ k, m k) := by
    have : (61 : ℝ) * ((∑ k, g k : ℕ) : ℝ) ≤ 100 * (270 - ((∑ k, m k : ℤ) : ℝ)) := by
      push_cast; linarith
    exact_mod_cast this
  have c2 : 200 * (270 - ∑ k, m k) ≤ (123 : ℤ) * (∑ k, g k : ℕ) := by
    have : 200 * (270 - ((∑ k, m k : ℤ) : ℝ)) ≤ (123 : ℝ) * ((∑ k, g k : ℕ) : ℝ) := by
      push_cast; linarith
    exact_mod_cast this
  generalize ∑ k, g k = G at hG1 hG10 c1 c2
  generalize ∑ k, m k = M at c1 c2
  interval_cases G <;> omega

/-- The integer data of a corner outside the window: type `5` (`f`), `p = 7` with the sign of `J`
(`ap`, `an`), equicorrelated with the sign of `J` (`bp`, `bn`). -/
theorem corner_encode {T : Strip} {k : Fin 10} (h : CornerType T k) (hw : ¬ PStarWindow (stripP T k)) :
    ∃ f ap an bp bn : ℕ, f + ap + an + bp + bn ≤ 1 ∧
      5 * stripP T k = 25 * f + 35 * (ap + an) + 27 * (bp + bn) ∧
      stripJ T k = 2 * ((ap : ℝ) - an) + 54 / 25 * ((bp : ℝ) - bn) ∧
      (bp + bn = 1 → stripX T k = 9 / 5) := by
  rcases h with ⟨hJ, hp | hp⟩ | hp | ⟨hX, hp, hJ⟩ | ⟨hp, hJ⟩
  · exact ⟨0, 0, 0, 0, 0, by norm_num, by rw [hp]; norm_num, by rw [hJ]; norm_num, by norm_num⟩
  · exact ⟨1, 0, 0, 0, 0, by norm_num, by rw [hp]; norm_num, by rw [hJ]; norm_num, by norm_num⟩
  · exact absurd hp hw
  · rcases (abs_eq (by norm_num : (0 : ℝ) ≤ 54 / 25)).1 hJ with hJ | hJ
    · exact ⟨0, 0, 0, 1, 0, by norm_num, by rw [hp]; norm_num, by rw [hJ]; norm_num, fun _ => hX⟩
    · exact ⟨0, 0, 0, 0, 1, by norm_num, by rw [hp]; norm_num, by rw [hJ]; norm_num, fun _ => hX⟩
  · rcases (abs_eq (by norm_num : (0 : ℝ) ≤ 2)).1 hJ with hJ | hJ
    · exact ⟨0, 1, 0, 0, 0, by norm_num, by rw [hp]; norm_num, by rw [hJ]; norm_num, by norm_num⟩
    · exact ⟨0, 0, 1, 0, 0, by norm_num, by rw [hp]; norm_num, by rw [hJ]; norm_num, by norm_num⟩

/-- One vertex: `50 A + 54 B = 0` with `|A|, |B| ≤ 4` forces `A = B = 0`; as reals, from `dᵢ = 0`. -/
theorem vertex_balance (ap an bp bn : Fin 10 → ℕ) (J : Fin 10 → ℝ)
    (hJ : ∀ k, J k = 2 * ((ap k : ℝ) - an k) + 54 / 25 * ((bp k : ℝ) - bn k))
    (hb : ∀ k, ap k + an k + bp k + bn k ≤ 1) (k₁ k₂ k₃ k₄ : Fin 10)
    (hd : J k₁ + J k₂ + J k₃ + J k₄ = 0) :
    ap k₁ + ap k₂ + ap k₃ + ap k₄ = an k₁ + an k₂ + an k₃ + an k₄ ∧
      bp k₁ + bp k₂ + bp k₃ + bp k₄ = bn k₁ + bn k₂ + bn k₃ + bn k₄ := by
  rw [hJ, hJ, hJ, hJ] at hd
  have hz : 50 * (((ap k₁ + ap k₂ + ap k₃ + ap k₄ : ℕ) : ℤ) - (an k₁ + an k₂ + an k₃ + an k₄ : ℕ)) +
      54 * (((bp k₁ + bp k₂ + bp k₃ + bp k₄ : ℕ) : ℤ) - (bn k₁ + bn k₂ + bn k₃ + bn k₄ : ℕ)) = 0 := by
    have : (50 : ℝ) * (((ap k₁ + ap k₂ + ap k₃ + ap k₄ : ℕ) : ℝ) - (an k₁ + an k₂ + an k₃ + an k₄ : ℕ)) +
        54 * (((bp k₁ + bp k₂ + bp k₃ + bp k₄ : ℕ) : ℝ) - (bn k₁ + bn k₂ + bn k₃ + bn k₄ : ℕ)) = 0 := by
      push_cast; linarith
    exact_mod_cast this
  have := hb k₁; have := hb k₂; have := hb k₃; have := hb k₄
  have c1 : ap k₁ + ap k₂ + ap k₃ + ap k₄ ≤ 4 := by linarith
  have c2 : an k₁ + an k₂ + an k₃ + an k₄ ≤ 4 := by linarith
  have c3 : bp k₁ + bp k₂ + bp k₃ + bp k₄ ≤ 4 := by linarith
  have c4 : bn k₁ + bn k₂ + bn k₃ + bn k₄ ≤ 4 := by linarith
  generalize ap k₁ + ap k₂ + ap k₃ + ap k₄ = A₁ at hz c1 ⊢
  generalize an k₁ + an k₂ + an k₃ + an k₄ = A₂ at hz c2 ⊢
  generalize bp k₁ + bp k₂ + bp k₃ + bp k₄ = B₁ at hz c3 ⊢
  generalize bn k₁ + bn k₂ + bn k₃ + bn k₄ = B₂ at hz c4 ⊢
  omega
/-- The count with the vertex balance: ten equicorrelated corners, or two `p = 7` corners. -/
theorem count_cases (F AP AN BP BN : ℕ) (h1 : 25 * F + 35 * (AP + AN) + 27 * (BP + BN) = 270)
    (h2 : F + AP + AN + BP + BN ≤ 10) (h3 : AP = AN) (h4 : BP = BN) :
    BP + BN = 10 ∨ (AP = 1 ∧ AN = 1) := by
  omega

/-- Ten indicators with sum `10`, each at most one, are all one. -/
theorem all_one (b : Fin 10 → ℕ) (hb : ∀ k, b k ≤ 1) (hs : ∑ k, b k = 10) (k : Fin 10) : b k = 1 := by
  rw [sum_ten] at hs
  have := hb 0; have := hb 1; have := hb 2; have := hb 3; have := hb 4
  have := hb 5; have := hb 6; have := hb 7; have := hb 8; have := hb 9
  apply le_antisymm (hb k)
  fin_cases k <;> simp only [Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Fin.isValue] <;> linarith

theorem zero_of {a n : ℕ} (h1 : a + n ≤ 1) (h2 : 2 * a ≤ n + 1) : a = 0 := by omega

/-- **Two signed edges cannot balance every vertex of `K₅`**: one positive and one negative edge (`ap`,
`an`, on the ten corners = edges `{i, j}` of the columns `1, …, 5`) with, at every vertex, as many
positive as negative edges (four of the five vertex conditions suffice).  An edge `k = {i, j}` has `2 apₖ ≤ Pᵢ + Pⱼ = Nᵢ + Nⱼ ≤ anₖ + Σ an = anₖ + 1`,
so `apₖ = 0` for every `k`, against `Σ ap = 1`. -/
theorem two_edges (ap an : Fin 10 → ℕ) (hb : ∀ k, ap k + an k ≤ 1) (hp : ∑ k, ap k = 1)
    (hn : ∑ k, an k = 1)
    (v1 : ap 0 + ap 1 + ap 2 + ap 3 = an 0 + an 1 + an 2 + an 3)
    (v2 : ap 0 + ap 4 + ap 5 + ap 6 = an 0 + an 4 + an 5 + an 6)
    (v3 : ap 1 + ap 4 + ap 7 + ap 8 = an 1 + an 4 + an 7 + an 8)
    (v4 : ap 2 + ap 5 + ap 7 + ap 9 = an 2 + an 5 + an 7 + an 9) : False := by
  rw [sum_ten] at hp hn
  have e0 : 2 * ap 0 ≤ an 0 + 1 := by linarith
  have e1 : 2 * ap 1 ≤ an 1 + 1 := by linarith
  have e2 : 2 * ap 2 ≤ an 2 + 1 := by linarith
  have e3 : 2 * ap 3 ≤ an 3 + 1 := by linarith
  have e4 : 2 * ap 4 ≤ an 4 + 1 := by linarith
  have e5 : 2 * ap 5 ≤ an 5 + 1 := by linarith
  have e6 : 2 * ap 6 ≤ an 6 + 1 := by linarith
  have e7 : 2 * ap 7 ≤ an 7 + 1 := by linarith
  have e8 : 2 * ap 8 ≤ an 8 + 1 := by linarith
  have e9 : 2 * ap 9 ≤ an 9 + 1 := by linarith
  have z0 := zero_of (hb 0) e0
  have z1 := zero_of (hb 1) e1
  have z2 := zero_of (hb 2) e2
  have z3 := zero_of (hb 3) e3
  have z4 := zero_of (hb 4) e4
  have z5 := zero_of (hb 5) e5
  have z6 := zero_of (hb 6) e6
  have z7 := zero_of (hb 7) e7
  have z8 := zero_of (hb 8) e8
  have z9 := zero_of (hb 9) e9
  rw [z0, z1, z2, z3, z4, z5, z6, z7, z8, z9] at hp
  norm_num at hp

/-- **Return S, §7: no strip has its ten anchored corners of the classified types.** -/
theorem anchored_count {T : Strip} (hT : IsPhaseOrthogonalStrip T) (h : ∀ k, CornerType T k) : False := by
  have hs := anchored_strip_sum hT
  have hw : ∀ k, ¬ PStarWindow (stripP T k) := no_window (stripP T) hs fun k => by
    rcases h k with ⟨-, h0 | h0⟩ | h0 | ⟨-, h0, -⟩ | ⟨h0, -⟩
    exacts [Or.inl h0, Or.inr (Or.inl h0), Or.inr (Or.inr (Or.inr (Or.inr h0))),
      Or.inr (Or.inr (Or.inl h0)), Or.inr (Or.inr (Or.inr (Or.inl h0)))]
  choose f ap an bp bn hb hp hJ hX using fun k => corner_encode (h k) (hw k)
  have hb' : ∀ k, ap k + an k + bp k + bn k ≤ 1 := fun k => by have := hb k; linarith
  obtain ⟨d1, d2, d3, d4, d5⟩ := strip_pair_sums hT
  obtain ⟨a1, b1⟩ := vertex_balance ap an bp bn (stripJ T) hJ hb' 0 1 2 3 d1
  obtain ⟨a2, b2⟩ := vertex_balance ap an bp bn (stripJ T) hJ hb' 0 4 5 6 d2
  obtain ⟨a3, b3⟩ := vertex_balance ap an bp bn (stripJ T) hJ hb' 1 4 7 8 d3
  obtain ⟨a4, b4⟩ := vertex_balance ap an bp bn (stripJ T) hJ hb' 2 5 7 9 d4
  obtain ⟨a5, b5⟩ := vertex_balance ap an bp bn (stripJ T) hJ hb' 3 6 8 9 d5
  -- every corner lies on two vertices: equal totals of positive and negative signs
  have tot : ∀ g : Fin 10 → ℕ, ∑ k, g k = g 0 + g 1 + g 2 + g 3 + g 4 + g 5 + g 6 + g 7 + g 8 + g 9 :=
    sum_ten
  have hA : ∑ k, ap k = ∑ k, an k := by rw [tot, tot]; linarith
  have hB : ∑ k, bp k = ∑ k, bn k := by rw [tot, tot]; linarith
  -- `Σ p = 54` in integers
  have hcount : 25 * ∑ k, f k + 35 * (∑ k, ap k + ∑ k, an k) + 27 * (∑ k, bp k + ∑ k, bn k) = 270 := by
    have : ((25 * ∑ k, f k + 35 * (∑ k, ap k + ∑ k, an k) + 27 * (∑ k, bp k + ∑ k, bn k) : ℕ) : ℝ) =
        270 := by
      push_cast
      simp only [sum_ten] at hs ⊢
      linarith [hp 0, hp 1, hp 2, hp 3, hp 4, hp 5, hp 6, hp 7, hp 8, hp 9]
    exact_mod_cast this
  have hle : ∑ k, f k + ∑ k, ap k + ∑ k, an k + ∑ k, bp k + ∑ k, bn k ≤ 10 := by
    simp only [← Finset.sum_add_distrib]
    calc ∑ k, (f k + ap k + an k + bp k + bn k) ≤ ∑ _k : Fin 10, 1 := Finset.sum_le_sum fun k _ => hb k
      _ = 10 := by simp
  rcases count_cases _ _ _ _ _ hcount hle hA hB with h10 | ⟨h1, h2⟩
  · -- ten equicorrelated corners: `Σ X² = 162/5 < 54`
    rw [← Finset.sum_add_distrib] at h10
    have hall := all_one (fun k => bp k + bn k) (fun k => by have := hb' k; linarith) h10
    have h4 := stripX_sq_sum hT
    simp only [fun k => hX k (hall k)] at h4
    norm_num at h4
  · exact two_edges ap an (fun k => by have := hb' k; linarith) h1 h2 a1 a2 a3 a4

end NoFourMUBs.PRM.CoverageTen
