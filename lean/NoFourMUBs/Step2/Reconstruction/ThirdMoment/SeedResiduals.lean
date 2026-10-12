import NoFourMUBs.Step2.Reconstruction.ThirdMoment.AffineMatrices
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.MatchedParameter
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Contraction
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Reduction
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Symmetry
import NoFourMUBs.Step2.Reconstruction.MatchedCompletion

set_option autoImplicit false
set_option maxHeartbeats 1500000
open Matrix Hadamard6
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped BigOperators ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- The first third-moment matrix, written using only the corner seed. -/
def seedOneConstant (p : Seed) : Mat3 :=
  oneConstant (seedS p) (seedT p) (seedRho p) (seedG p) (seedChi p) (seedEta p)
    (9 - Complex.normSq (seedRho p) : ℝ) (9 - Complex.normSq (seedT p) : ℝ)
    (sideP0 (seedS p) (seedT p) (seedRho p))
    (conj (sideP1 (seedS p) (seedT p) (seedRho p)))

def seedOneLinear (p : Seed) : Mat3 :=
  oneLinear (seedS p) (seedG p)
    (9 - Complex.normSq (seedRho p) : ℝ) (9 - Complex.normSq (seedT p) : ℝ)
    (sideP0 (seedS p) (seedT p) (seedRho p))
    (conj (sideP1 (seedS p) (seedT p) (seedRho p)))

def seedImageConstant (p : Seed) : Mat3 :=
  forcedCoefficientMatrix (seedCorner p) * seedOneConstant p *
    (forcedCoefficientMatrix (seedCorner p))ᴴ

def seedImageLinear (p : Seed) : Mat3 :=
  forcedCoefficientMatrix (seedCorner p) * seedOneLinear p *
    (forcedCoefficientMatrix (seedCorner p))ᴴ

def seedWeightedOffset (p : Seed) : ℂ :=
  (sixI3 - (seedCorner p)ᴴ * seedCorner p) 1 0 *
    (sixI3 - seedCorner p * (seedCorner p)ᴴ) 0 1

/-- The two exact residual targets of the supplied W11 certificate. -/
def seedLinearResidual (p : Seed) : ℂ :=
  ∑ i, ∑ j, (seedOneConstant (transposedSeed p) i j * seedImageLinear p i j -
    seedOneLinear (transposedSeed p) i j * seedImageConstant p i j)

def seedConstantResidual (p : Seed) : ℂ :=
  (∑ i, ∑ j, ((seedOneConstant (transposedSeed p) i j +
    (seedChi p : ℂ) / (seedG p : ℂ) * seedOneLinear (transposedSeed p) i j) *
      seedImageConstant p i j +
    (seedEta p : ℂ) * seedOneLinear (transposedSeed p) i j * seedImageLinear p i j)) -
  seedWeightedOffset p

theorem thirdMoment_seed_one (p : StrictSeed) {B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1)) :
    thirdMoment B 1 = seedOneConstant p.1 +
      intrinsicTheta (rowsOfSide B) • seedOneLinear p.1 := by
  obtain ⟨hs,ht,hr⟩ := BaseCoefficients.candidate_intrinsic_correlations p.1 hB
  have hR : 0 < gramInvariant (rowS (rowsOfSide B)) (rowT (rowsOfSide B))
      (rowR (rowsOfSide B)) := by rw [hs,ht,hr]; exact p.2
  have h := (thirdMoment_intrinsic_affine (rowsOfSide B)
    (rowsOfSide_unit B hB.1.1) hR).1
  rw [phaseSide_rowsOfSide B hB.1.2.1,hs,ht,hr] at h
  exact h

/-- The actual weighted defect is exactly the constant-plus-linear residual.
No fourth-block flatness, classification or generic parameter guard is assumed. -/
theorem weightedDefect_seed_residuals (p : StrictSeed) {B C : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1))
    (hC : C ∈ invertibleVerticalCandidates (seedCorner p.1))
    (hsig : sideSignature C = conj (sideSignature B)) :
    weightedDefect B C (forcedD (seedCorner p.1) B C) 1 1 =
      seedConstantResidual p.1 + intrinsicTheta (rowsOfSide B) * seedLinearResidual p.1 := by
  obtain ⟨hs,ht,hr⟩ := BaseCoefficients.candidate_intrinsic_correlations p.1 hB
  have hR : 0 < gramInvariant (rowS (rowsOfSide B)) (rowT (rowsOfSide B))
      (rowR (rowsOfSide B)) := by rw [hs,ht,hr]; exact p.2
  obtain ⟨hbar,hquad⟩ := intrinsicTheta_quadratic (rowsOfSide B)
    (rowsOfSide_unit B hB.1.1) hR
  rw [hs,ht,hr] at hbar hquad
  change conj (intrinsicTheta (rowsOfSide B)) =
    (seedChi p.1 : ℂ) / (seedG p.1 : ℂ) - intrinsicTheta (rowsOfSide B) at hbar
  change intrinsicTheta (rowsOfSide B)^2 = -(seedEta p.1 : ℂ) +
    (seedChi p.1 : ℂ) / (seedG p.1 : ℂ) * intrinsicTheta (rowsOfSide B) at hquad
  let q : StrictSeed := ⟨transposedSeed p.1,
    by rw [(transposedSeed_invariants p.1).1]; exact p.2⟩
  have hV := thirdMoment_seed_one q (BaseCoefficients.vertical_candidate_transposed p.1 hC)
  change thirdMoment Cᵀ 1 = seedOneConstant (transposedSeed p.1) +
    intrinsicTheta (rowsOfSide Cᵀ) • seedOneLinear (transposedSeed p.1) at hV
  rw [matched_intrinsic_parameters p hB hC hsig,hbar] at hV
  have hGB : B * Bᴴ = sixI3 - seedCorner p.1 * (seedCorner p.1)ᴴ := by
    rw [← hB.1.2.2]; abel
  have hGC : Cᴴ * C = sixI3 - (seedCorner p.1)ᴴ * seedCorner p.1 := by
    rw [← hC.1.2.2]; abel
  rw [forcedD_weighted_contraction hB hC 1 1,thirdMoment_seed_one p hB,hV,hGB,hGC]
  simp only [sandwich_affine,Matrix.add_apply,Matrix.smul_apply,smul_eq_mul]
  exact paired_affine_contraction
    ((seedChi p.1 : ℂ) / (seedG p.1 : ℂ)) (seedEta p.1)
    (intrinsicTheta (rowsOfSide B)) (seedWeightedOffset p.1)
    (seedOneConstant (transposedSeed p.1)) (seedOneLinear (transposedSeed p.1))
    (seedImageConstant p.1) (seedImageLinear p.1) hquad

/-- This is the single remaining reconstruction interface. Its two rational
identities must still be established from the saved polynomial certificates. -/
theorem matchedExistence_of_seed_residuals
    (h : ∀ p : StrictSeed, seedConstantResidual p.1 = 0 ∧ seedLinearResidual p.1 = 0) :
    MatchedExistence := by
  have hw : ∀ (p : StrictSeed) (B C : Mat3),
      B ∈ invertibleHorizontalCandidates (seedCorner p.1) →
      C ∈ invertibleVerticalCandidates (seedCorner p.1) →
      sideSignature C = conj (sideSignature B) →
      weightedDefect B C (forcedD (seedCorner p.1) B C) 1 1 = 0 := by
    intro p B C hB hC hsig
    simpa only [(h p).1,(h p).2,mul_zero,add_zero] using
      weightedDefect_seed_residuals p hB hC hsig
  intro p
  obtain ⟨B,C,hB,hC,hplus,hminus⟩ := strict_seed_signed_sides_exist p
  have hconj : 2 * conj (sideSignature B) = (seedChi p.1 : ℂ) -
      (Real.sqrt (seedR p.1) : ℂ) * Complex.I := by
    simpa only [map_mul,map_add,map_ofNat,Complex.conj_ofReal,Complex.conj_I,
      mul_neg,← sub_eq_add_neg] using congrArg conj hplus
  have hsig : sideSignature C = conj (sideSignature B) :=
    mul_left_cancel₀ (show (2 : ℂ) ≠ 0 by norm_num) (hminus.trans hconj.symm)
  exact matched_completion_of_flat_signed_sides p hB hC hplus hminus
    (flatness_of_one_weighted_identity hw p hB hC hsig)

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
