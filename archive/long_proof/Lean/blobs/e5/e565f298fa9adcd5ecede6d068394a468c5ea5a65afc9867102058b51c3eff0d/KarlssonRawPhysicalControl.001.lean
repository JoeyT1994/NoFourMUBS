import KarlssonPhysicalControls
import KarlssonCell9c09b64b35f08ad0
set_option autoImplicit false
set_option maxHeartbeats 1600000

namespace Mub6.Classification.KarlssonCompiler.Controls
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Numerical.CircleCharts
noncomputable section

def rawX : Fin 3 → ℝ := ![1/2,1,0]
def plus : ℂ := 1+(Real.sqrt 3 : ℂ)/2
def minus : ℂ := 1-(Real.sqrt 3 : ℂ)/2

theorem coefficients_control : coeffA 1 Complex.I=plus ∧ coeffB 1 Complex.I=minus ∧
    coeffC 1 Complex.I=minus ∧ coeffD 1 Complex.I=plus := by
  have hs : (Real.sqrt 3 : ℂ)^2=3 := by exact_mod_cast Real.sq_sqrt (by norm_num : (0:ℝ)≤3)
  norm_num [coeffA,coeffB,coeffC,coeffD,coreA_control,coreB_control,plus,minus]
  constructor
  · linear_combination hs/4
  constructor
  · linear_combination hs/4
  constructor <;> linear_combination hs/4

theorem control_forwards : forward plus minus 1 = -1 ∧ forward minus plus 1 = -1 := by
  have hs : (Real.sqrt 3 : ℂ) ≠ 0 := by exact_mod_cast Real.sqrt_ne_zero'.mpr (by norm_num : (0:ℝ)<3)
  have hc : star plus=plus ∧ star minus=minus := by simp [plus,minus]
  constructor
  · unfold forward
    rw [hc.1,hc.2]
    have hd : minus*1-plus≠0 := by simpa [plus,minus] using neg_ne_zero.mpr hs
    apply (eq_div_iff hd).mpr
    ring
  · unfold forward
    rw [hc.1,hc.2]
    have hd : plus*1-minus≠0 := by
      convert hs using 1 <;> unfold plus minus <;> ring
    apply (eq_div_iff hd).mpr
    ring

theorem control_backward : backward plus minus (-1)=1 := by
  unfold backward
  have hc : star plus=plus ∧ star minus=minus := by simp [plus,minus]
  rw [hc.1,hc.2]
  have hd : minus*(-1)-plus≠0 := by norm_num [plus,minus]; ring_nf; norm_num
  apply (eq_div_iff hd).mpr
  ring

theorem control_raw_squares (i : Fin 4) :
    (rawPhases (.regular,false) rawX i)^2=(z i)^2 := by
  rw [rawPhases,rootPhases_sq]
  have ht : uncompactT (rawX 0)=1 := by norm_num [uncompactT,rawX]
  have hp : signedCircle false (rawX 1)=Complex.I := by
    apply Complex.ext <;> norm_num [signedCircle,signValue,rawX]
  have hf : signedCircle false (rawX 2)=1 := by
    apply Complex.ext <;> norm_num [signedCircle,signValue,rawX,Matrix.cons_val_two]
  rw [ht,hp,hf,coefficients_control.1,coefficients_control.2.1,
    coefficients_control.2.2.1,coefficients_control.2.2.2]
  norm_num [phaseSquares,control_forwards.1,control_forwards.2,control_backward]
  fin_cases i <;> norm_num [z,Matrix.cons_val_two,Matrix.cons_val_three]

theorem reduced_control_physical : IsHadamard (reducedMatrix (.regular,false) rawX) := by
  have he := equal_squares_equivalent 1 Complex.I (rawPhases (.regular,false) rawX) z control_raw_squares
  have hm : reducedMatrix (.regular,false) rawX =
      karlssonRawMatrix 1 Complex.I (rawPhases (.regular,false) rawX 0)
        (rawPhases (.regular,false) rawX 1) (rawPhases (.regular,false) rawX 2)
        (rawPhases (.regular,false) rawX 3) := by
    change karlssonRawMatrix (uncompactT (rawX 0)) (signedCircle false (rawX 1)) _ _ _ _ = _
    have ht : uncompactT (rawX 0)=1 := by norm_num [uncompactT,rawX]
    have hp : signedCircle false (rawX 1)=Complex.I := by
      apply Complex.ext <;> norm_num [signedCircle,signValue,rawX]
    rw [ht,hp]
  rw [hm]
  exact (equivalent_isHadamard_iff he).mpr raw_physical

theorem raw_control_parameters : ∀ i, Mem (KarlssonCell9c09b64b35f08ad0.input.parameters i) (rawX i) := by
  intro i
  fin_cases i <;> norm_num [KarlssonCell9c09b64b35f08ad0.input,rawX,Mem,Matrix.cons_val_two]

/-- A genuine Hadamard is contained in this positive-width raw output packet.
This calibration point belongs to a Fourier equivalence class. -/
theorem raw_packet_nonempty : ∃ K : Mat6, IsHadamard K ∧
    CarrierBox KarlssonCell9c09b64b35f08ad0.carrier (ClassificationCover.toNumerical K) := by
  obtain ⟨K,he,hb⟩ := KarlssonCell9c09b64b35f08ad0.physical_enclosure raw_control_parameters
    (by norm_num [rawX]) (by norm_num [rawX]) reduced_control_physical
  exact ⟨K,(equivalent_isHadamard_iff he).mp reduced_control_physical,hb⟩

#print axioms raw_packet_nonempty
end
end Mub6.Classification.KarlssonCompiler.Controls
