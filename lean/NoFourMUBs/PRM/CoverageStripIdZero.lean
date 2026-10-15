import NoFourMUBs.PRM.CoverageStripIdZeroCheckM
import NoFourMUBs.PRM.CoverageStripIdZeroCheckS

/-!
# Critical strip classification (I4): the zero-`J` square-sum identity (`ZeroJAlgebra`)

`CRITICAL_STRIP_CLASSIFICATION.md` §2, (4).  After the row scaling `s = t = 1` (`halves_scaled`), the two
halves are `halfQ` circuits in `z, X = |s|², Y = |t|²` and `ζ = r s/t` (`dA`, `dB`), evaluated at the actual
data (`good`, `dA_val`, `dB_val`).  The kernel checks (`mom_valid`, `sum_valid`, `quot_valid`) give

  `momentPoly (M_A + M_B) = n / (z¹² E⁵)`,  `n = T z¹² E² + q₂ G`,

with `E = e₀e₁e₂`, and on the data the modulus relation `G = 0` holds and `E = 3z(z + 3)⁴ + (3z + 8)K`.
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Zero

open NoFourMUBs.Kronecker StripMoments Side

section Eval

variable (z X Y : ℂ)

/-- The evaluation point `(z, X, Y)`. -/
def pt : Fin 3 → ℂ := ![z, X, Y]

@[simp] theorem ev_vz : vz.eval (pt z X Y) = z := rfl
@[simp] theorem ev_vX : vX.eval (pt z X Y) = X := rfl
@[simp] theorem ev_vY : vY.eval (pt z X Y) = Y := rfl

theorem ev_cZ : cZ.eval (pt z X Y) = 9 - z ^ 2 - X - Y := by simp [cZ]

theorem ev_table (k : Fin 6) : (C0.f k).eval (pt z X Y) =
    ![X, Y, z, X + Y + z ^ 2 + 3 * z, 3 * z + 9 - Y, 3 * z + 9 - X] k := by
  fin_cases k <;> simp [C0, ce0, ce1, ce2]

end Eval

theorem val_fq {ρ : Fin 3 → ℂ} {ζ : ℂ} (c : V) : (fq c).val ρ ζ = c.eval ρ := by
  simp [fq, QF.val_ofFrac, Frac.val_ofCirc]

theorem rel_zeta {s t r : ℂ} (hs : s ≠ 0) (ht : t ≠ 0) (hJc : conj s * conj r * t + s * r * conj t = 0) :
    (r * s / t) ^ 2 = -(s * conj s * (r * conj r)) / (t * conj t) := by
  have : conj t ≠ 0 := by simpa using ht
  field_simp
  linear_combination r * hJc

theorem R_zeta {s t r : ℂ} (hs : s ≠ 0) (ht : t ≠ 0) (hJc : conj s * conj r * t + s * r * conj t = 0) :
    -(t * conj t) / (s * conj s) * (r * s / t) = conj r * t / s := by
  have : conj s ≠ 0 := by simpa using hs
  field_simp
  linear_combination (-1 : ℂ) * hJc

set_option maxHeartbeats 10000000 in
theorem zeroJ_main (s t r : ℂ) (z : ℝ) (hs : s ≠ 0) (ht : t ≠ 0) (hz0 : z ≠ 0)
    (hp : pS s t r = 9 - z ^ 2) (hJ : jS s t r = 0)
    (hW : Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
      Complex.normSq t * Complex.normSq r - Complex.normSq s * Complex.normSq t * Complex.normSq r =
        z ^ 2 * (z + 3) ^ 2)
    (hL : ∀ j, lamL s t r z (3 * z ^ 2) j ≠ 0) :
    momentPoly (fun p => (lamData s t r z (3 * z ^ 2)).mom p + (lamData (-s) (-t) (-r) z (3 * z ^ 2)).mom p) *
      (((3 * z * (z + 3) ^ 4 + (3 * z + 8) *
          (Complex.normSq s * Complex.normSq t * Complex.normSq r)) ^ 3 : ℝ) : ℂ) =
      ((-3888 * z * (z + 2) ^ 2 * (z + 3) ^ 2 *
          (Complex.normSq s * Complex.normSq t * Complex.normSq r + (z - 1) * (z + 3) ^ 3) *
          (z ^ 2 * (z + 3) ^ 4 + (z + 2) ^ 2 *
            (Complex.normSq s * Complex.normSq t * Complex.normSq r)) ^ 2 : ℝ) : ℂ) := by
  -- the scalar data
  set X : ℂ := (Complex.normSq s : ℂ) with hXdef
  set Y : ℂ := (Complex.normSq t : ℂ) with hYdef
  set Zr : ℂ := (Complex.normSq r : ℂ) with hZdef
  have hX : X ≠ 0 := by simpa [hXdef] using hs
  have hY : Y ≠ 0 := by simpa [hYdef] using ht
  have hz : (z : ℂ) ≠ 0 := by exact_mod_cast hz0
  have hZ : Zr = 9 - (z : ℂ) ^ 2 - X - Y := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hp
    simp only [pS] at this; push_cast at this; rw [hXdef, hYdef, hZdef]; linear_combination this
  have hJc : conj s * conj r * t + s * r * conj t = 0 := by rw [← cast_jS, hJ]; simp
  have hXc : X = s * conj s := cast_normSq' s
  have hYc : Y = t * conj t := cast_normSq' t
  have hZc : Zr = r * conj r := cast_normSq' r
  have hG : X * Y + X * Zr + Y * Zr - X * Y * Zr - (z : ℂ) ^ 2 * ((z : ℂ) + 3) ^ 2 = 0 := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hW
    push_cast at this; rw [hXdef, hYdef, hZdef]; linear_combination this
  have hLc : ∀ j, ((lamL s t r z (3 * z ^ 2) j : ℝ) : ℂ) ≠ 0 := fun j => by exact_mod_cast hL j
  have hL0 : ((lamL s t r z (3 * z ^ 2) 0 : ℝ) : ℂ) = z * (X + Y + (z : ℂ) ^ 2 + 3 * z) := by
    simp only [lamL, Matrix.cons_val_zero]; push_cast; rw [← hZdef, hZ]; ring
  have hL1 : ((lamL s t r z (3 * z ^ 2) 1 : ℝ) : ℂ) = z * (3 * z + 9 - Y) := by
    simp only [lamL, Matrix.cons_val_one, Matrix.head_cons]; push_cast; rw [← hYdef]; ring
  have hL2 : ((lamL s t r z (3 * z ^ 2) 2 : ℝ) : ℂ) = z * (3 * z + 9 - X) := by
    simp only [lamL, Matrix.cons_val_two, Matrix.tail_cons, Matrix.head_cons]; push_cast; rw [← hXdef]; ring
  have he0 : X + Y + (z : ℂ) ^ 2 + 3 * z ≠ 0 := fun h0 => hLc 0 (by rw [hL0, h0, mul_zero])
  have he1 : 3 * (z : ℂ) + 9 - Y ≠ 0 := fun h0 => hLc 1 (by rw [hL1, h0, mul_zero])
  have he2 : 3 * (z : ℂ) + 9 - X ≠ 0 := fun h0 => hLc 2 (by rw [hL2, h0, mul_zero])
  -- the scaling
  have hLB : ∀ j, lamL (-s) (-t) (-r) z (3 * z ^ 2) j ≠ 0 := by
    intro j; have := hL j; simpa [lamL, Complex.normSq_neg] using this
  have eLB : ∀ j, lamL (-s) (-t) (-r) z (3 * z ^ 2) j = lamL s t r z (3 * z ^ 2) j := by
    intro j; simp [lamL, Complex.normSq_neg]
  rw [halves_scaled s t r z (3 * z ^ 2) z (3 * z ^ 2) hs ht hL hLB]
  simp only [eLB]
  -- the evaluation point
  set ζ : ℂ := r * s / t with hζ
  set ρ := pt (z : ℂ) X Y with hρ
  have good : QF.Good C0 ρ ζ := by
    refine ⟨fun k => ?_, ?_⟩
    · rw [hρ, ev_table]; fin_cases k <;> simp [hX, hY, hz, he0, he1, he2]
    · have vA : (QF.relA C0).val ρ = 0 := by simp [QF.relA, C0, Frac.val]
      have vB : (QF.relB C0).val ρ = -(X * Zr) / Y := by
        simp only [QF.relB, C0, Frac.val, Frac.dval, Fin.prod_univ_six, hρ]
        simp [ev_cZ, hZ]
      rw [vA, vB, zero_mul, zero_add, hζ, hXc, hYc, hZc]
      exact rel_zeta hs ht hJc
  have vR : (qR).val ρ ζ = conj r * t / s := by
    have : (⟨-vY, ![1, 0, 0, 0, 0, 0]⟩ : Frac C0).val ρ = -Y / X := by
      simp only [Frac.val, Frac.dval, Fin.prod_univ_six, hρ]
      simp [C0]
    have h0 : ((0 : Frac C0)).val ρ = 0 := by rw [Frac.val_ofNat]; simp
    simp only [qR, QF.val, this]
    rw [h0, zero_add, hζ, hXc, hYc]
    exact R_zeta hs ht hJc
  have vi : ∀ j : Fin 3, ∀ k : Fin 6, (QF.ofFrac (Frac.inv C0 2 * Frac.inv C0 k) : Q).val ρ ζ =
      ((C0.f 2).eval ρ)⁻¹ * ((C0.f k).eval ρ)⁻¹ := by
    intro _ k; rw [QF.val_ofFrac, Frac.val_mul, Frac.val_inv, Frac.val_inv]
  have vL0 : iL0.val ρ ζ = ((lamL s t r z (3 * z ^ 2) 0 : ℝ) : ℂ)⁻¹ := by
    rw [iL0, vi 0, hρ, ev_table, ev_table, hL0, mul_inv]; rfl
  have vL1 : iL1.val ρ ζ = ((lamL s t r z (3 * z ^ 2) 1 : ℝ) : ℂ)⁻¹ := by
    rw [iL1, vi 0, hρ, ev_table, ev_table, hL1, mul_inv]; rfl
  have vL2 : iL2.val ρ ζ = ((lamL s t r z (3 * z ^ 2) 2 : ℝ) : ℂ)⁻¹ := by
    rw [iL2, vi 0, hρ, ev_table, ev_table, hL2, mul_inv]; rfl
  have v1 : (1 : Q).val ρ ζ = 1 := QF.val_one'
  have vX' : qX.val ρ ζ = X := by rw [qX, val_fq]; rfl
  have vY' : qY.val ρ ζ = Y := by rw [qY, val_fq]; rfl
  have vZ' : qZ.val ρ ζ = Zr := by rw [qZ, val_fq, hρ, ev_cZ, hZ]
  have vz' : qz.val ρ ζ = z := by rw [qz, val_fq]; rfl
  have hA : dA.val ρ ζ = fData 1 X 1 Y ζ (conj r * t / s) X Y Zr ((lamL s t r z (3 * z ^ 2) 0 : ℝ))
      ((lamL s t r z (3 * z ^ 2) 1 : ℝ)) ((lamL s t r z (3 * z ^ 2) 2 : ℝ)) z := by
    rw [dA, halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ vL0 vL1 vL2, v1, vX', vY', QF.val_z, vR, vZ', vz']
  have hB : dB.val ρ ζ = fData (-1) (-X) (-1) (-Y) (-ζ) (-(conj r * t / s)) X Y Zr
      ((lamL s t r z (3 * z ^ 2) 0 : ℝ)) ((lamL s t r z (3 * z ^ 2) 1 : ℝ))
      ((lamL s t r z (3 * z ^ 2) 2 : ℝ)) z := by
    rw [dB, halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ vL0 vL1 vL2]
    simp only [QF.val_neg]
    rw [v1, vX', vY', QF.val_z, vR, vZ', vz']
  -- the kernel checks
  have e1 : momentPoly (fun p =>
      (fData 1 X 1 Y ζ (conj r * t / s) X Y Zr ((lamL s t r z (3 * z ^ 2) 0 : ℝ))
        ((lamL s t r z (3 * z ^ 2) 1 : ℝ)) ((lamL s t r z (3 * z ^ 2) 2 : ℝ)) z).mom p +
      (fData (-1) (-X) (-1) (-Y) (-ζ) (-(conj r * t / s)) X Y Zr ((lamL s t r z (3 * z ^ 2) 0 : ℝ))
        ((lamL s t r z (3 * z ^ 2) 1 : ℝ)) ((lamL s t r z (3 * z ^ 2) 2 : ℝ)) z).mom p) =
      nC.eval ρ / Frac.dval ρ C0 ![0, 0, 12, 5, 5, 5] := by
    have e := QF.eq_of_validR good sum_valid
    rw [val_momentPolyQ good] at e
    have e' : (⟨⟨nC, ![0, 0, 12, 5, 5, 5]⟩, 0⟩ : Q).val ρ ζ = nC.eval ρ / Frac.dval ρ C0 ![0, 0, 12, 5, 5, 5] := by
      simp only [QF.val, Frac.val]; rw [show ((0 : Frac C0)).num = 0 from rfl]; simp
    rw [← e', ← e]
    apply momentPoly_congr
    intro p hp
    rw [← hA, ← hB, ← HalfQ.val_mom good _ hp, ← HalfQ.val_mom good _ hp, ← QF.val_add good,
      ← QF.eq_of_validR good (mom_valid hp)]
    rfl
  rw [e1]
  -- the quotient identity
  have e2 := Circ.eval_eq_zero_of_validR quot_valid ρ
  have hden : Frac.dval ρ C0 ![0, 0, 12, 5, 5, 5] =
      (z : ℂ) ^ 12 * (X + Y + (z : ℂ) ^ 2 + 3 * z) ^ 5 * (3 * z + 9 - Y) ^ 5 * (3 * z + 9 - X) ^ 5 := by
    simp only [Frac.dval, Fin.prod_univ_six, hρ, ev_table]; simp
  have hGe : cG.eval ρ = 0 := by
    simp only [cG, cZ, Circ.eval_sub', Circ.eval_mul', Circ.eval_add', Circ.eval_pow', Circ.eval_ofNat,
      hρ, ev_vz, ev_vX, ev_vY]
    rw [← hZ]; exact hG
  have hEe : cE.eval ρ = (X + Y + (z : ℂ) ^ 2 + 3 * z) * (3 * z + 9 - Y) * (3 * z + 9 - X) := by
    simp only [cE, ce0, ce1, ce2, Circ.eval_sub', Circ.eval_mul', Circ.eval_add', Circ.eval_pow',
      Circ.eval_ofNat, hρ, ev_vz, ev_vX, ev_vY]
  have hTe : cT.eval ρ = -3888 * (z : ℂ) * ((z : ℂ) + 2) ^ 2 * ((z : ℂ) + 3) ^ 2 *
      (X * Y * Zr + ((z : ℂ) - 1) * ((z : ℂ) + 3) ^ 3) *
      ((z : ℂ) ^ 2 * ((z : ℂ) + 3) ^ 4 + ((z : ℂ) + 2) ^ 2 * (X * Y * Zr)) ^ 2 := by
    simp only [cT, cK, cB, cZ, Circ.eval_sub', Circ.eval_mul', Circ.eval_add', Circ.eval_pow',
      Circ.eval_neg', Circ.eval_ofNat, Circ.eval_one', hρ, ev_vz, ev_vX, ev_vY]
    rw [← hZ]
  have hvz : vz.eval ρ = z := by rw [hρ]; rfl
  simp only [Circ.eval_sub', Circ.eval_mul', Circ.eval_pow'] at e2
  rw [hGe, hEe, hTe, hvz, mul_zero, sub_zero] at e2
  rw [hden]
  push_cast
  rw [← hXdef, ← hYdef, ← hZdef]
  rw [div_mul_eq_mul_div, div_eq_iff (by
    have := pow_ne_zero 12 hz; have := pow_ne_zero 5 he0; have := pow_ne_zero 5 he1
    have := pow_ne_zero 5 he2; positivity)]
  rw [sub_eq_zero.1 e2]
  have hEA : (X + Y + (z : ℂ) ^ 2 + 3 * z) * (3 * z + 9 - Y) * (3 * z + 9 - X) =
      3 * z * ((z : ℂ) + 3) ^ 4 + (3 * z + 8) * (X * Y * Zr) := by
    rw [hZ] at hG ⊢; linear_combination (3 * (z : ℂ) + 9) * hG
  rw [← hEA]
  have key : ∀ T z e0 e1 e2 : ℂ, T * z ^ 12 * (e0 * e1 * e2) ^ 2 * (e0 * e1 * e2) ^ 3 =
      T * (z ^ 12 * e0 ^ 5 * e1 ^ 5 * e2 ^ 5) := by intros; ring
  exact key _ _ _ _ _

end NoFourMUBs.PRM.Coverage.StripId.Zero

namespace NoFourMUBs.PRM.Coverage

/-- **The zero-`J` square-sum identity** (`CRITICAL_STRIP_CLASSIFICATION.md` §2, (4)). -/
theorem zeroJAlgebra : ZeroJAlgebra := by
  intro s t r z hs ht hz0 _ _ hp hJ hW hL
  exact StripId.Zero.zeroJ_main s t r z hs ht hz0 hp hJ hW hL

end NoFourMUBs.PRM.Coverage
