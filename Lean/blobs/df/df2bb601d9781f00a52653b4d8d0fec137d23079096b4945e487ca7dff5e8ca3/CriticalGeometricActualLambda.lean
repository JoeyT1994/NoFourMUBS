import CriticalGeometricNumerator
import CriticalLightSheet

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalGeometricBinding20261003
open Matrix CriticalPhysical20261003 CriticalLightSheet20261003
open scoped BigOperators
noncomputable section

abbrev Block := Matrix (Fin 3) (Fin 3) ℂ

def blockPermanent (E : Block) : ℂ :=
  FourierPhysicalSide.permanent (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)

def productMoment (E : Block) : ℂ := ∑ j : Fin 3,E 1 j*E 2 j

theorem productMoment_permanent (E : Block) :
    sideS E*sideT E=productMoment E+blockPermanent E := by
  simp only [sideS,sideT,FourierPhysicalSide.s,FourierPhysicalSide.t,
    productMoment,Fin.sum_univ_three,blockPermanent,FourierPhysicalSide.permanent]
  ring

/-- Invertibility is a consequence of the actual unit block and z!=0. -/
theorem allocated_det_nonzero (E : Block) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hz0 : z≠0) (hs : Complex.normSq (sideS E)=z+3)
    (ht : Complex.normSq (sideT E)=z+3)
    (hr : Complex.normSq (sideR E)=(1-z)*(z+3)) (hj : sideJ E=0) : E.det≠0 := by
  have hg := (allocated_invariants _ _ _ z hs ht hr hj).2.2
  have hd := side_g_determinant E hE h0
  intro h
  rw [hg,h,Complex.normSq_zero] at hd
  nlinarith [sq_pos_of_ne_zero hz0]

/-- The unscaled physical phase satisfies a*lambda0=s*t. This uses the
complete allocated norms and J=0, with the exact exceptional factors retained. -/
theorem allocated_actual_lambda0 (E : Block) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS E)=z+3) (ht : Complex.normSq (sideT E)=z+3)
    (hr : Complex.normSq (sideR E)=(1-z)*(z+3)) (hj : sideJ E=0) :
    ((z+3:ℝ):ℂ)*blockLambda E 0=sideS E*sideT E := by
  obtain ⟨hp,hw,hg⟩ := allocated_invariants _ _ _ z hs ht hr hj
  have hD := allocated_det_nonzero E z hE h0 hz0 hs ht hr hj
  have hd : FourierPhysicalSide.determinant (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2)≠0 := by
    simpa only [FourierPhysicalSide.determinant,actual_side_matrix E h0] using hD
  have hsheet := actual_zero_parameter_sheet E z hE h0 hz0 hp hj hw
  have hden : blockDenominator E 0=((z*(z+2)*(z+3):ℝ):ℂ) := by
    rw [actual_denominator_of_sheet E z 0 hsheet]
    change ((FourierGramNumerators.g (sideS E) (sideT E) (sideR E)+
      z*(9-Complex.normSq (sideR E)):ℝ):ℂ)=_
    rw [hg,hr,allocated_denominator0]
  have hf := FourierPhysicalSide.physical_numerators_factor
    (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2) 0
    (hE 1 0) (hE 1 1) (hE 1 2) (hE 2 0) (hE 2 1) (hE 2 2) hd
  change FourierGramNumerators.numerator (sideS E) (sideT E) (sideR E) 0=
    blockDenominator E 0*blockLambda E 0 at hf
  rw [allocated_numerator0 _ _ _ z hz3 hs ht hr hj,hden] at hf
  push_cast at hf ⊢
  have hz2' : z+2≠0 := by intro h; apply hz2; linarith
  have hz2c : (z:ℂ)+2≠0 := by exact_mod_cast hz2'
  apply mul_left_cancel₀ (mul_ne_zero (Complex.ofReal_ne_zero.mpr hz0) hz2c)
  linear_combination -hf

/-- The actual permanent, not an assumed moment, is tied to the same phase. -/
theorem allocated_actual_permanent (E : Block) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS E)=z+3) (ht : Complex.normSq (sideT E)=z+3)
    (hr : Complex.normSq (sideR E)=(1-z)*(z+3)) (hj : sideJ E=0) :
    ((z+3:ℝ):ℂ)*blockPermanent E=(z:ℂ)*(sideS E*sideT E) := by
  have hL := allocated_actual_lambda0 E z hE h0 hz0 hz3 hz2 hs ht hr hj
  obtain ⟨hp,hw,_⟩ := allocated_invariants _ _ _ z hs ht hr hj
  have hsheet := actual_zero_parameter_sheet E z hE h0 hz0 hp hj hw
  have hD := allocated_det_nonzero E z hE h0 hz0 hs ht hr hj
  have hd : FourierPhysicalSide.determinant (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2)≠0 := by
    simpa only [FourierPhysicalSide.determinant,actual_side_matrix E h0] using hD
  have hperm := FourierPhysicalSide.physicalSheet_lambda0_permanent
    (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)
    (hE 1 0) (hE 1 1) (hE 1 2) (hE 2 0) (hE 2 1) (hE 2 2) hd
  change blockSheet E*blockLambda E 0=blockPermanent E at hperm
  rw [hsheet] at hperm
  linear_combination (z:ℂ)*hL-((z+3:ℝ):ℂ)*hperm

/-- The phase-product sum attains its exact maximal modulus. This is the
remaining terminal unit-sum input, derived from literal existing entries. -/
theorem allocated_product_sum_cleared (E : Block) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS E)=z+3) (ht : Complex.normSq (sideT E)=z+3)
    (hr : Complex.normSq (sideR E)=(1-z)*(z+3)) (hj : sideJ E=0) :
    ((z+3:ℝ):ℂ)*productMoment E=3*(sideS E*sideT E) := by
  have hp := allocated_actual_permanent E z hE h0 hz0 hz3 hz2 hs ht hr hj
  have hm := productMoment_permanent E
  push_cast at hp ⊢
  linear_combination -((z:ℂ)+3)*hm-hp

/-- No row gauge is imposed on the original block. Its common phase is the
same when both correlations change sign in the complementary half. -/
theorem allocated_product_sum_phase (E : Block) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS E)=z+3) (ht : Complex.normSq (sideT E)=z+3)
    (hr : Complex.normSq (sideR E)=(1-z)*(z+3)) (hj : sideJ E=0) :
    let κ := sideS E*sideT E/((z+3:ℝ):ℂ)
    Complex.normSq κ=1 ∧ productMoment E=3*κ := by
  have ha : z+3≠0 := by intro h; apply hz3; linarith
  refine ⟨correlation_product_phase _ _ _ ha hs ht,?_⟩
  change productMoment E=3*(sideS E*sideT E/((z+3:ℝ):ℂ))
  rw [← mul_div_assoc]
  apply (eq_div_iff (Complex.ofReal_ne_zero.mpr ha)).mpr
  have hc := allocated_product_sum_cleared E z hE h0 hz0 hz3 hz2 hs ht hr hj
  simpa only [mul_comm] using hc

end
#print axioms productMoment_permanent
#print axioms allocated_det_nonzero
#print axioms allocated_actual_lambda0
#print axioms allocated_actual_permanent
#print axioms allocated_product_sum_cleared
#print axioms allocated_product_sum_phase
end CriticalGeometricBinding20261003
