import ProjectorAmplitude
import SixColumnMetric

/- Exact raw/normalized conversion for actual six-coordinate vectors.
No Fourier classification or finite-search certificate is used. -/
noncomputable section
open ComplexConjugate
open scoped BigOperators
open Seed0024ProjectorMetric20261007

namespace Seed0024ClusterTube20261007

def rawOverlap (U V : Fin 6 → ℂ) : ℂ := ∑ i : Fin 6, conj (U i)*V i

def normalizedVector (U : Fin 6 → ℂ) : ColumnSpace :=
  columnL2 (fun i => U i/(Real.sqrt 6 : ℂ))

def rawProjectorDistance (U V : Fin 6 → ℂ) : ℝ :=
  ‖projector (normalizedVector U)-projector (normalizedVector V)‖

theorem normalizedVector_unit_of_mass (U : Fin 6 → ℂ)
    (hU : (∑ i : Fin 6, Complex.normSq (U i))=6) : ‖normalizedVector U‖=1 := by
  have hs : Complex.normSq (Real.sqrt 6 : ℂ)=6 := by
    simp only [Complex.normSq_ofReal]
    exact Real.mul_self_sqrt (by norm_num : (0:ℝ)≤6)
  have hn : ‖normalizedVector U‖^2=1 := by
    rw [normalizedVector,columnL2_norm_sq]
    simp only [Complex.normSq_div,hs]
    rw [←Finset.sum_div,hU]
    norm_num
  nlinarith [norm_nonneg (normalizedVector U)]

theorem normalizedVector_unit (U : Fin 6 → ℂ)
    (hU : ∀ i, Complex.normSq (U i)=1) : ‖normalizedVector U‖=1 := by
  apply normalizedVector_unit_of_mass
  simp only [hU]
  norm_num

theorem normalized_inner_eq_raw (U V : Fin 6 → ℂ) :
    inner ℂ (normalizedVector U) (normalizedVector V)=rawOverlap U V/6 := by
  have hs : (Real.sqrt 6 : ℂ)*(Real.sqrt 6 : ℂ)=6 := by
    rw [←Complex.ofReal_mul,Real.mul_self_sqrt (by norm_num : (0:ℝ)≤6)]
    norm_num
  rw [normalizedVector,normalizedVector,columnL2_inner,rawOverlap,Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  simp only [map_div₀,Complex.conj_ofReal]
  calc
    _ = (conj (U i)*V i)/((Real.sqrt 6 : ℂ)*(Real.sqrt 6 : ℂ)) := by ring
    _ = _ := by rw [hs]

theorem normalized_inner_norm_eq_raw (U V : Fin 6 → ℂ) :
    ‖inner ℂ (normalizedVector U) (normalizedVector V)‖=‖rawOverlap U V‖/6 := by
  rw [normalized_inner_eq_raw,norm_div]
  norm_num

theorem raw_unbiased_normalized (U X : Fin 6 → ℂ)
    (hUX : Complex.normSq (rawOverlap U X)=6) :
    ‖inner ℂ (normalizedVector U) (normalizedVector X)‖^2=(1:ℝ)/6 := by
  rw [normalized_inner_norm_eq_raw,div_pow,Complex.sq_norm,hUX]
  norm_num

theorem raw_amplitude_scaling (r : ℝ) :
    |r-Real.sqrt 6|=6*|r/6-1/Real.sqrt 6| := by
  have hpos : 0<Real.sqrt (6:ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ)≤6)
  have hr : (6:ℝ)*(1/Real.sqrt 6)=Real.sqrt 6 := by
    rw [mul_one_div]
    apply (div_eq_iff (ne_of_gt hpos)).2
    nlinarith
  have he : r-Real.sqrt 6=6*(r/6-1/Real.sqrt 6) := by nlinarith
  rw [he,abs_mul]
  norm_num

theorem raw_column_amplitude_contraction (U V X : Fin 6 → ℂ)
    (hU : ∀ i, Complex.normSq (U i)=1)
    (hV : ∀ i, Complex.normSq (V i)=1)
    (hX : ∀ i, Complex.normSq (X i)=1)
    (hUX : ‖inner ℂ (normalizedVector U) (normalizedVector X)‖^2=(1:ℝ)/6)
    (hd : rawProjectorDistance U V≤(1:ℝ)/8) :
    |‖rawOverlap V X‖-Real.sqrt 6|≤(57:ℝ)/10*rawProjectorDistance U V := by
  have h := balanced_amplitude_contraction (normalizedVector U) (normalizedVector V)
    (normalizedVector X) (normalizedVector_unit U hU) (normalizedVector_unit V hV)
    (normalizedVector_unit X hX) hUX hd
  change |‖inner ℂ (normalizedVector V) (normalizedVector X)‖-1/Real.sqrt 6|≤
    (19:ℝ)/20*rawProjectorDistance U V at h
  rw [normalized_inner_norm_eq_raw] at h
  rw [raw_amplitude_scaling]
  linarith

theorem raw_column_amplitude_transfer (U V X : Fin 6 → ℂ)
    (hU : ∀ i, Complex.normSq (U i)=1)
    (hV : ∀ i, Complex.normSq (V i)=1)
    (hX : ∀ i, Complex.normSq (X i)=1)
    (hUX : ‖inner ℂ (normalizedVector U) (normalizedVector X)‖^2=(1:ℝ)/6)
    (hd : rawProjectorDistance U V≤(1:ℝ)/8) :
    |‖rawOverlap V X‖-Real.sqrt 6|≤6*rawProjectorDistance U V := by
  have h := raw_column_amplitude_contraction U V X hU hV hX hUX hd
  have hn : 0≤rawProjectorDistance U V := norm_nonneg _
  linarith

theorem raw_column_amplitude_transfer_strict (U V X : Fin 6 → ℂ)
    (hU : ∀ i, Complex.normSq (U i)=1)
    (hV : ∀ i, Complex.normSq (V i)=1)
    (hX : ∀ i, Complex.normSq (X i)=1)
    (hUX : ‖inner ℂ (normalizedVector U) (normalizedVector X)‖^2=(1:ℝ)/6)
    (hd : rawProjectorDistance U V≤(1:ℝ)/8) (hdpos : 0<rawProjectorDistance U V) :
    |‖rawOverlap V X‖-Real.sqrt 6|<6*rawProjectorDistance U V := by
  have h := raw_column_amplitude_contraction U V X hU hV hX hUX hd
  linarith

theorem raw_overlap_tolerance_19over100 (U V X : Fin 6 → ℂ)
    (hU : ∀ i, Complex.normSq (U i)=1)
    (hV : ∀ i, Complex.normSq (V i)=1)
    (hX : ∀ i, Complex.normSq (X i)=1)
    (hUX : Complex.normSq (rawOverlap U X)=6)
    (hd : rawProjectorDistance U V≤(1:ℝ)/30) :
    |‖rawOverlap V X‖-Real.sqrt 6|≤(19:ℝ)/100 := by
  have h := raw_column_amplitude_contraction U V X hU hV hX
    (raw_unbiased_normalized U X hUX) (by linarith : rawProjectorDistance U V≤(1:ℝ)/8)
  linarith

theorem raw_overlap_tolerance_one_fifth_strict (U V X : Fin 6 → ℂ)
    (hU : ∀ i, Complex.normSq (U i)=1)
    (hV : ∀ i, Complex.normSq (V i)=1)
    (hX : ∀ i, Complex.normSq (X i)=1)
    (hUX : Complex.normSq (rawOverlap U X)=6)
    (hd : rawProjectorDistance U V≤(1:ℝ)/30) :
    |‖rawOverlap V X‖-Real.sqrt 6|<(1:ℝ)/5 := by
  have h := raw_overlap_tolerance_19over100 U V X hU hV hX hUX hd
  linarith

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.normalizedVector_unit_of_mass
#print axioms Seed0024ClusterTube20261007.normalizedVector_unit
#print axioms Seed0024ClusterTube20261007.normalized_inner_eq_raw
#print axioms Seed0024ClusterTube20261007.normalized_inner_norm_eq_raw
#print axioms Seed0024ClusterTube20261007.raw_unbiased_normalized
#print axioms Seed0024ClusterTube20261007.raw_amplitude_scaling
#print axioms Seed0024ClusterTube20261007.raw_column_amplitude_contraction
#print axioms Seed0024ClusterTube20261007.raw_column_amplitude_transfer
#print axioms Seed0024ClusterTube20261007.raw_column_amplitude_transfer_strict
#print axioms Seed0024ClusterTube20261007.raw_overlap_tolerance_19over100
#print axioms Seed0024ClusterTube20261007.raw_overlap_tolerance_one_fifth_strict
