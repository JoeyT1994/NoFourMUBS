import Radius01PairDistance

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

theorem unit_entry_norm (z : ℂ) (h : Complex.normSq z=1) : ‖z‖=1 := by
  rw [Complex.normSq_eq_norm_sq] at h
  nlinarith [norm_nonneg z]

theorem product_difference_norm (a b A B : ℂ)
    (hb : Complex.normSq b=1) (hA : Complex.normSq A=1) :
    ‖a*b-A*B‖ ≤ ‖a-A‖+‖b-B‖ := by
  have heq : a*b-A*B=(a-A)*b+A*(b-B) := by ring
  rw [heq]
  calc
    _ ≤ ‖(a-A)*b‖+‖A*(b-B)‖ := norm_add_le _ _
    _ = _ := by rw [norm_mul,norm_mul,unit_entry_norm b hb,unit_entry_norm A hA]; ring

theorem six_term_norm_bound (a b c d e f : ℂ) :
    ‖a-b-c-d+e+f‖ ≤ ‖a‖+‖b‖+‖c‖+‖d‖+‖e‖+‖f‖ := by
  have h0 := norm_sub_le a b
  have h1 := norm_sub_le (a-b) c
  have h2 := norm_sub_le (a-b-c) d
  have h3 := norm_add_le (a-b-c-d) e
  have h4 := norm_add_le (a-b-c-d+e) f
  linarith

theorem dephased_three_determinant (M : Mat3)
    (hrow : ∀ j, M 0 j=1) (hcol : ∀ i, M i 0=1) :
    M.det=M 1 1*M 2 2-M 1 2*M 2 1-M 1 1-M 2 2+M 1 2+M 2 1 := by
  rw [Matrix.det_fin_three]
  simp only [hrow,hcol,one_mul,mul_one]
  ring

/-- A direct determinant perturbation estimate for unit-entry dephased
three-by-three matrices, avoiding spectral-norm assumptions. -/
theorem dephased_determinant_error (M F : Mat3)
    (hmrow : ∀ j, M 0 j=1) (hmcol : ∀ i, M i 0=1)
    (hfrow : ∀ j, F 0 j=1) (hfcol : ∀ i, F i 0=1)
    (hm : ∀ i j, Complex.normSq (M i j)=1)
    (hf : ∀ i j, Complex.normSq (F i j)=1)
    (ε : ℝ) (herr : ∀ i j, ‖M i j-F i j‖ ≤ ε) :
    ‖M.det-F.det‖ ≤ 8*ε := by
  rw [dephased_three_determinant M hmrow hmcol,dephased_three_determinant F hfrow hfcol]
  have heq :
      (M 1 1*M 2 2-M 1 2*M 2 1-M 1 1-M 2 2+M 1 2+M 2 1)-
        (F 1 1*F 2 2-F 1 2*F 2 1-F 1 1-F 2 2+F 1 2+F 2 1)=
      (M 1 1*M 2 2-F 1 1*F 2 2)-(M 1 2*M 2 1-F 1 2*F 2 1)-
        (M 1 1-F 1 1)-(M 2 2-F 2 2)+(M 1 2-F 1 2)+(M 2 1-F 2 1) := by ring
  rw [heq]
  have h0 := product_difference_norm (M 1 1) (M 2 2) (F 1 1) (F 2 2) (hm 2 2) (hf 1 1)
  have h1 := product_difference_norm (M 1 2) (M 2 1) (F 1 2) (F 2 1) (hm 2 1) (hf 1 2)
  have hsum := six_term_norm_bound (M 1 1*M 2 2-F 1 1*F 2 2)
    (M 1 2*M 2 1-F 1 2*F 2 1) (M 1 1-F 1 1) (M 2 2-F 2 2)
    (M 1 2-F 1 2) (M 2 1-F 2 1)
  linarith [herr 1 1,herr 1 2,herr 2 1,herr 2 2]

def referenceSideMatrix : Mat3 :=
  !![1,1,1;1,pairMinus (-1),pairPlus (-1);1,pairPlus (-1),pairMinus (-1)]

theorem referenceSideMatrix_unit (i j : Fin 3) :
    Complex.normSq (referenceSideMatrix i j)=1 := by
  have hp := pairPlus_unit (-1) (by norm_num) (by norm_num)
  have hm := pairMinus_unit (-1) (by norm_num) (by norm_num)
  fin_cases i <;> fin_cases j <;> simp [referenceSideMatrix,hp,hm]

theorem referenceSideMatrix_det :
    referenceSideMatrix.det= -6*Complex.I*(pairHeight (-1):ℂ) := by
  rw [Matrix.det_fin_three]
  simp [referenceSideMatrix,pairMinus,pairPlus]
  ring

theorem referenceSideMatrix_det_norm : ‖referenceSideMatrix.det‖=3*Real.sqrt 3 := by
  rw [referenceSideMatrix_det,reference_height_value]
  simp only [norm_mul,norm_neg,Complex.norm_ofNat,Complex.norm_I,Complex.norm_real,
    Real.norm_eq_abs,abs_div,abs_of_nonneg (Real.sqrt_nonneg (3:ℝ))]
  norm_num
  ring

theorem constructedSideK_unit01 (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope01) (i j : Fin 3) :
    Complex.normSq (constructedSideK E z i j)=1 := by
  apply constructedSideK_unit
  intro k hk
  obtain ⟨_,hn,hb⟩ := anchoredSum_guards01 (sideSum E k) (z k) (hz k) r (hs k hk) hr
  exact ⟨hn,by dsimp [sideArgument]; linarith⟩

theorem constructedSideK_reference_error01 (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope01) (i j : Fin 3) :
    ‖constructedSideK E z i j-referenceSideMatrix i j‖ ≤ (17/3)*r := by
  have h1 := anchored_pair_distance01 (sideSum E 1) (z 1) (hz 1) r (hs 1 (by decide)) hr
  have h2 := anchored_pair_distance01 (sideSum E 2) (z 2) (hz 2) r (hs 2 (by decide)) hr
  have hn : 0 ≤ (17/3:ℝ)*r := by
    have h := hs 1 (by decide)
    nlinarith [norm_nonneg (sideSum E 1)]
  fin_cases i <;> fin_cases j <;>
    simp [constructedSideK,referenceSideMatrix,sideArgument,h1.1,h1.2,h2.1,h2.2,hn]

/-- Uniform off-locus nonsingularity of the actual canonical side constructor
through the radius-.1 envelope, for arbitrary unit anchor phases. -/
theorem constructedSideK_determinant_margin01 (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope01) :
    (3/5:ℝ) < ‖(constructedSideK E z).det‖ := by
  have hmr : ∀ j, constructedSideK E z 0 j=1 := by intro j; simp [constructedSideK]
  have hmc : ∀ i, constructedSideK E z i 0=1 := by intro i; simp [constructedSideK]
  have hfr : ∀ j, referenceSideMatrix 0 j=1 := by intro j; fin_cases j <;> simp [referenceSideMatrix]
  have hfc : ∀ i, referenceSideMatrix i 0=1 := by intro i; fin_cases i <;> simp [referenceSideMatrix]
  have he := dephased_determinant_error (constructedSideK E z) referenceSideMatrix
    hmr hmc hfr hfc (constructedSideK_unit01 E z hz r hs hr) referenceSideMatrix_unit
    ((17/3)*r) (constructedSideK_reference_error01 E z hz r hs hr)
  have hv := norm_sub_norm_le referenceSideMatrix.det (constructedSideK E z).det
  rw [norm_sub_rev,referenceSideMatrix_det_norm] at hv
  linarith [radius01_determinant_margin r hr]

theorem constructedSideK_det_ne_zero01 (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope01) : (constructedSideK E z).det ≠ 0 := by
  apply norm_pos_iff.mp
  linarith [constructedSideK_determinant_margin01 E z hz r hs hr]

theorem nativeInverse_entry_bound (M : Mat3)
    (hu : ∀ i j, Complex.normSq (M i j)=1) (hd : (3/5:ℝ) < ‖M.det‖)
    (i j : Fin 3) : ‖nativeInverse M i j‖ ≤ 10/3 := by
  have hn : ‖nativeCofactor M i j‖ ≤ 2 := by
    unfold nativeCofactor
    have hh := norm_sub_le
      (M (cyclicStep j 1) (cyclicStep i 1)*M (cyclicStep j 2) (cyclicStep i 2))
      (M (cyclicStep j 1) (cyclicStep i 2)*M (cyclicStep j 2) (cyclicStep i 1))
    simpa only [norm_mul,unit_entry_norm _ (hu _ _),mul_one,one_add_one_eq_two] using hh
  have hp : 0 < ‖M.det‖ := by linarith
  simp only [nativeInverse,nativeDeterminant_eq_det,← div_eq_mul_inv,norm_div]
  apply (div_le_iff₀ hp).2
  linarith

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.unit_entry_norm
#print axioms Centiradian20261006.ChartRadius0120261006.product_difference_norm
#print axioms Centiradian20261006.ChartRadius0120261006.six_term_norm_bound
#print axioms Centiradian20261006.ChartRadius0120261006.dephased_three_determinant
#print axioms Centiradian20261006.ChartRadius0120261006.dephased_determinant_error
#print axioms Centiradian20261006.ChartRadius0120261006.referenceSideMatrix_unit
#print axioms Centiradian20261006.ChartRadius0120261006.referenceSideMatrix_det
#print axioms Centiradian20261006.ChartRadius0120261006.referenceSideMatrix_det_norm
#print axioms Centiradian20261006.ChartRadius0120261006.constructedSideK_unit01
#print axioms Centiradian20261006.ChartRadius0120261006.constructedSideK_reference_error01
#print axioms Centiradian20261006.ChartRadius0120261006.constructedSideK_determinant_margin01
#print axioms Centiradian20261006.ChartRadius0120261006.constructedSideK_det_ne_zero01
#print axioms Centiradian20261006.ChartRadius0120261006.nativeInverse_entry_bound
