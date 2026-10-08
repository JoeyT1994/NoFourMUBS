import TaoQuartetTerminal
import D0RepresentativeBinding
import D0PhysicalWitness
set_option autoImplicit false
namespace Mub6.ExceptionalTerminals
open Numerical Numerical.CircleFullPrototype Numerical.GraphKernel Worker12

theorem tao_no_third_basis :
    ¬ ∃ C : BasisMatrix, IsOrthonormalBasis C ∧
      IsUnbiased identityBasis C ∧
      IsUnbiased (physicalNormalize (publishedTaoPhase TaoCalibration.omega)) C := by
  rintro ⟨C, hC, hIC, hTC⟩
  rw [tao_literal, normalize_eq] at hTC
  have hframe := normalized_flat_basis_gives_five_frame hC
    (NormalizedWitness.normalized_flat TaoCalibration.tao_isPhaseHadamard)
    (unbiased_identity_flat hIC) hTC
  rw [NormalizedWitness.raw_carrier_normalized NormalizedWitness.tao_first_row] at hframe
  have hE : CarrierBox
      (IntegerIntervals.toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier)
      TaoCalibration.tao := by
    rw [CircleClosing.carrier_match]
    exact TaoCalibration.tao_memCarrier
  have hc : CompleteRayCover TaoCalibration.tao TaoCatalogue.boxes := by
    rw [← CircleClosing.target_boxes_match]
    exact TaoSymmetryClosing.complete_circle_cover
      TaoCalibration.tao TaoCalibration.tao_isPhaseHadamard hE
  exact checked_clique_excludes_raw_frame hc
    (fun v => IntervalKernel.smallBoxCheck_sound (TaoCatalogue.kept_boxes_small v))
    TaoCatalogue.sound_stored_graph 5 TaoCatalogue.singleCert
    TaoCatalogue.single_refutation_checks ⟨firstFiveRays C, hframe⟩

theorem d0_control_literal : D0Local.d0 = publishedD0Phase := by
  funext i j
  fin_cases i <;> fin_cases j
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨-1, 0⟩ : ℂ) = (-1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨-1, 0⟩ : ℂ) = (-1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨-1, 0⟩ : ℂ) = (-1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨-1, 0⟩ : ℂ) = (-1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨1, 0⟩ : ℂ) = (1 : ℂ)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, -1⟩ : ℂ) = (-Complex.I)
    norm_num [Complex.ext_iff]
  · change (⟨0, 1⟩ : ℂ) = Complex.I
    norm_num [Complex.ext_iff]
  · change (⟨-1, 0⟩ : ℂ) = (-1 : ℂ)
    norm_num [Complex.ext_iff]

theorem d0_supports_three_bases : ∃ B : Fin 3 → BasisMatrix,
    D0Local.IsMUBTriple B ∧ B 0 = identityBasis ∧
      B 1 = physicalNormalize publishedD0Phase := by
  obtain ⟨B, hB, h0, h1⟩ := D0Local.d0_supports_three_mubs
  refine ⟨B, hB, h0, ?_⟩
  rw [h1, d0_control_literal, normalize_eq]
  funext i j
  simp [PhaseNormalization.normalize, PhaseNormalization.scalar, NormalizedWitness.normalized,
    div_eq_mul_inv, mul_comm]

example : ¬ ∃ C : BasisMatrix, IsOrthonormalBasis C ∧ IsUnbiased identityBasis C ∧
    IsUnbiased (physicalNormalize (publishedTaoPhase TaoCalibration.omega)) C :=
  @tao_no_third_basis
#print axioms tao_no_third_basis
#print axioms d0_control_literal
#print axioms d0_supports_three_bases
end Mub6.ExceptionalTerminals
