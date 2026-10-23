import NoFourMUBs.PRM.CoverageSignedMoments
import NoFourMUBs.PRM.CoverageMixedData

/-!
# The two mixed-corner sums of return O as half-moment polynomials (`REPORT.md` §3)

For a split `A = tri l`, `B = tri (19 − l)` of the top strip, with `D(j, k, c) = T̄ − T` the signed value of
the corner with columns `j, k, c` (`cornerD`; `= Ψ − Ψ̄` of the return, `T = −Ψ` for unit entries) and the
half moments `M_A(i, j) = Σ_{u ∈ A} x_u^i y_u^j` (`halfMom`):

* (8) `Σ_{j,k ∈ A, c ∈ B} x_c D(j, k, c) = 2 T_x = mixedPoly txTerms M_A M_B` (24 terms);
* (9) `Σ_{j,k ∈ A, c ∈ B} x_j y_c D(j, k, c) = 2 T_{x|y} = mixedPoly tpTerms M_A M_B` (44 terms).

`mixed_expand`: a sum over the ordered mixed triples, with a monomial weight on each column, is the sum over
the 48 Laurent terms of `D` (`cornerD_expand`) of products of two `A`-moments and one `B`-moment
(`sum_term2`), the exponents shifted by the weights (`termVal_shift`); `tx_regroup`, `tp_regroup` regroup
them by `ring`.  No orthogonality is used: on a half the first-order moments do not vanish.

`cornerD_all`: on a strip whose twenty top corners are critical, `D` vanishes on every ordered column triple
(`D` is symmetric and vanishes on repeated columns), so both sums vanish (`mixed_zero`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

open NoFourMUBs.Kronecker Side Mixed

/-- The term with its three exponent pairs shifted by `d₀, d₁, d₂`. -/
def LT.shift (t : LT) (d0 d1 d2 : ℤ × ℤ) : LT :=
  ⟨t.c, t.i0 + d0.1, t.j0 + d0.2, t.i1 + d1.1, t.j1 + d1.2, t.i2 + d2.1, t.j2 + d2.2⟩

/-- The monomial weight `xᵈ¹ yᵈ²`. -/
def wt (x y : ℂ) (d : ℤ × ℤ) : ℂ := x ^ d.1 * y ^ d.2

theorem termVal_shift {x y : Fin 3 → ℂ} (hx : ∀ j, x j ≠ 0) (hy : ∀ j, y j ≠ 0) (t : LT) (d0 d1 d2 : ℤ × ℤ) :
    wt (x 0) (y 0) d0 * wt (x 1) (y 1) d1 * wt (x 2) (y 2) d2 * termVal x y t = termVal x y (t.shift d0 d1 d2) := by
  simp only [termVal, LT.shift, wt, zpow_add₀ (hx _), zpow_add₀ (hy _)]
  ring

/-- The moments of the half `α`. -/
def halfMom (xs ys : Fin 6 → ℂ) (α : Fin 3 → Fin 6) (p : ℤ × ℤ) : ℂ := ∑ k, xs (α k) ^ p.1 * ys (α k) ^ p.2

/-- The moment product of a term over the halves `α, α, β`. -/
def termMom2 (A B : ℤ × ℤ → ℂ) (t : LT) : ℂ := t.c * A (t.i0, t.j0) * A (t.i1, t.j1) * B (t.i2, t.j2)

theorem sum_term2 (xs ys : Fin 6 → ℂ) (α β : Fin 3 → Fin 6) (t : LT) :
    ∑ a, ∑ b, ∑ c, termVal ![xs (α a), xs (α b), xs (β c)] ![ys (α a), ys (α b), ys (β c)] t =
      termMom2 (halfMom xs ys α) (halfMom xs ys β) t := by
  have e : ∀ f g k : Fin 3 → ℂ, (∑ a, f a) * (∑ b, g b) * (∑ c, k c) = ∑ a, ∑ b, ∑ c, f a * g b * k c := by
    intro f g k
    rw [Finset.sum_mul_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [Finset.mul_sum]
  rw [termMom2, mul_assoc, mul_assoc, ← mul_assoc (halfMom xs ys α (t.i0, t.j0)), halfMom, halfMom, halfMom, e,
    Finset.mul_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp only [termVal, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons,
    Matrix.tail_cons]
  ring

/-- **A weighted sum over the ordered mixed triples as half moments.** -/
theorem mixed_expand (xs ys : Fin 6 → ℂ) (hx : ∀ u, Complex.normSq (xs u) = 1)
    (hy : ∀ u, Complex.normSq (ys u) = 1) (α β : Fin 3 → Fin 6) (d0 d1 d2 : ℤ × ℤ) :
    ∑ a, ∑ b, ∑ c, wt (xs (α a)) (ys (α a)) d0 * wt (xs (α b)) (ys (α b)) d1 * wt (xs (β c)) (ys (β c)) d2 *
        cornerD ![xs (α a), xs (α b), xs (β c)] ![ys (α a), ys (α b), ys (β c)] =
      (dTerms.map fun t => termMom2 (halfMom xs ys α) (halfMom xs ys β)
        (t.shift d0 d1 d2)).sum := by
  have nx : ∀ u, xs u ≠ 0 := fun u => ne_zero_of_normSq (hx u)
  have ny : ∀ u, ys u ≠ 0 := fun u => ne_zero_of_normSq (hy u)
  have e : ∀ a b c, cornerD ![xs (α a), xs (α b), xs (β c)] ![ys (α a), ys (α b), ys (β c)] =
      (dTerms.map (termVal ![xs (α a), xs (α b), xs (β c)] ![ys (α a), ys (α b), ys (β c)])).sum := by
    intro a b c
    refine cornerD_expand (fun j => ?_) (fun j => ?_) <;> fin_cases j <;> simp [hx, hy]
  simp only [e]
  generalize dTerms = L
  induction L with
  | nil => simp
  | cons t L ih =>
    simp only [List.map_cons, List.sum_cons, mul_add, Finset.sum_add_distrib, ih]
    congr 1
    rw [← sum_term2]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun c _ => ?_
    have := termVal_shift (x := ![xs (α a), xs (α b), xs (β c)]) (y := ![ys (α a), ys (α b), ys (β c)])
      (fun j => by fin_cases j <;> simp [nx]) (fun j => by fin_cases j <;> simp [ny]) t d0 d1 d2
    simpa using this

/-! ### The regroupings -/

set_option maxRecDepth 20000 in
/-- **Regrouping (8)**: `Σ x_c D = 2 T_x`. -/
theorem tx_regroup (A B : ℤ × ℤ → ℂ) :
    (dTerms.map fun t => termMom2 A B (t.shift (0, 0) (0, 0) (1, 0))).sum = mixedPoly txTerms A B := by
  simp only [dTerms, txTerms, mixedPoly, MT.val, List.map_cons, List.map_nil, List.sum_cons, List.sum_nil,
    termMom2, LT.shift]
  norm_num only
  ring

set_option maxRecDepth 20000 in
/-- **Regrouping (9)**: `Σ x_j y_c D = 2 T_{x|y}`. -/
theorem tp_regroup (A B : ℤ × ℤ → ℂ) :
    (dTerms.map fun t => termMom2 A B (t.shift (1, 0) (0, 0) (0, 1))).sum = mixedPoly tpTerms A B := by
  simp only [dTerms, tpTerms, mixedPoly, MT.val, List.map_cons, List.map_nil, List.sum_cons, List.sum_nil,
    termMom2, LT.shift]
  norm_num only
  ring

/-! ### Every ordered triple of an all-critical strip -/

theorem sorted_tri : ∀ a b c : Fin 6, a < b → b < c → ∃ l : Fin 20, tri l 0 = a ∧ tri l 1 = b ∧ tri l 2 = c := by
  decide

/-- A symmetric function of three columns vanishing on repeated columns and on the twenty sorted
triples vanishes. -/
theorem all_of_tri {R : Type*} [Zero R] (f : Fin 6 → Fin 6 → Fin 6 → R)
    (s1 : ∀ a b c, f a b c = f b a c) (s2 : ∀ a b c, f a b c = f a c b)
    (z1 : ∀ a c, f a a c = 0) (z2 : ∀ a b, f a b b = 0)
    (ht : ∀ l : Fin 20, f (tri l 0) (tri l 1) (tri l 2) = 0) (a b c : Fin 6) : f a b c = 0 := by
  have st : ∀ a b c : Fin 6, a < b → b < c → f a b c = 0 := by
    intro a b c hab hbc
    obtain ⟨l, h0, h1, h2⟩ := sorted_tri a b c hab hbc
    rw [← h0, ← h1, ← h2]; exact ht l
  rcases lt_trichotomy a b with hab | rfl | hab
  · rcases lt_trichotomy b c with hbc | rfl | hbc
    · exact st a b c hab hbc
    · exact z2 _ _
    · rcases lt_trichotomy a c with hac | rfl | hac
      · rw [s2]; exact st a c b hac hbc
      · rw [s2]; exact z1 _ _
      · rw [s2, s1]; exact st c a b hac hab
  · exact z1 _ _
  · rcases lt_trichotomy a c with hac | rfl | hac
    · rw [s1]; exact st b a c hab hac
    · rw [s1]; exact z2 _ _
    · rcases lt_trichotomy b c with hbc | rfl | hbc
      · rw [s1, s2]; exact st b c a hbc hac
      · exact z2 _ _
      · rw [s1, s2, s1]; exact st c b a hbc hab

section Strip

variable {H : Mat6} (hH : Hadamard6.IsHadamard H)
include hH

/-- **Every ordered column triple of an all-critical strip has `D = 0`.** -/
theorem cornerD_all (hcrit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0) (a b c : Fin 6) :
    cornerD ![xsH H a, xsH H b, xsH H c] ![ysH H a, ysH H b, ysH H c] = 0 := by
  refine all_of_tri (fun a b c => cornerD ![xsH H a, xsH H b, xsH H c] ![ysH H a, ysH H b, ysH H c])
    (fun a b c => ?_) (fun a b c => ?_) (fun a c => ?_) (fun a b => ?_) (fun l => ?_) a b c
  · simp only [cornerD, TS_swap01]
  · simp only [cornerD, TS_swap12]
  · simp only [cornerD, TS_rep01, map_zero, sub_zero]
  · simp only [cornerD, TS_rep12, map_zero, sub_zero]
  · apply cornerD_eq_zero; rw [← sig_triBlock hH]; exact hcrit l

/-- **The two mixed-corner sums vanish** on a strip whose top corners are all critical. -/
theorem mixed_zero (hcrit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0) (l : Fin 20) :
    mixedPoly txTerms (halfMom (xsH H) (ysH H) (tri l)) (halfMom (xsH H) (ysH H) (tri (19 - l))) = 0 ∧
      mixedPoly tpTerms (halfMom (xsH H) (ysH H) (tri l)) (halfMom (xsH H) (ysH H) (tri (19 - l))) = 0 := by
  have hx : ∀ u, Complex.normSq (xsH H u) = 1 := xsH_unit hH
  have hy : ∀ u, Complex.normSq (ysH H u) = 1 := ysH_unit hH
  constructor
  · rw [← tx_regroup, ← mixed_expand _ _ hx hy]
    simp [cornerD_all hH hcrit]
  · rw [← tp_regroup, ← mixed_expand _ _ hx hy]
    simp [cornerD_all hH hcrit]

end Strip

end NoFourMUBs.PRM.Coverage.StripMoments
