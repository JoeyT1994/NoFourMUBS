import FourCircleTightResidualEnclosures

import CircleJob23f409ee25a86f2dH0

import CircleJob23f409ee25a86f2dH1

import CircleJob23f409ee25a86f2dH2

import CircleJob23f409ee25a86f2dV0

import CircleJob23f409ee25a86f2dV1

import CircleJob23f409ee25a86f2dV2

set_option maxHeartbeats 0

namespace CircleJob23f409ee25a86f2dPhysical

open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals

open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover

open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas

open Mub6.Classification.SharedSeedIntervals Mub6.Classification.SharedSeedSheetIntervals

open Mub6.Classification.SharedResidualPolynomials

open Mub6.Classification.FourCircleResidualSubstitution

noncomputable section

def signs : SeedSigns := ![true, false, false, true]

def scale : Side → Fin 3 → CirclePoly
  | .horizontal => ![clearingDenominator CircleJob23f409ee25a86f2dH0.small, clearingDenominator CircleJob23f409ee25a86f2dH1.small, clearingDenominator CircleJob23f409ee25a86f2dH2.small]
  | .vertical => ![clearingDenominator CircleJob23f409ee25a86f2dV0.small, clearingDenominator CircleJob23f409ee25a86f2dV1.small, clearingDenominator CircleJob23f409ee25a86f2dV2.small]

def residualPrograms : Side → Fin 3 → CircleComplexProgram
  | .horizontal => ![CircleJob23f409ee25a86f2dH0.residual, CircleJob23f409ee25a86f2dH1.residual, CircleJob23f409ee25a86f2dH2.residual]
  | .vertical => ![CircleJob23f409ee25a86f2dV0.residual, CircleJob23f409ee25a86f2dV1.residual, CircleJob23f409ee25a86f2dV2.residual]

def denominatorPrograms : Side → Fin 3 → CircleComplexProgram
  | .horizontal => ![CircleJob23f409ee25a86f2dH0.denominator, CircleJob23f409ee25a86f2dH1.denominator, CircleJob23f409ee25a86f2dH2.denominator]
  | .vertical => ![CircleJob23f409ee25a86f2dV0.denominator, CircleJob23f409ee25a86f2dV1.denominator, CircleJob23f409ee25a86f2dV2.denominator]

def centerReal : Side → Fin 3 → ℚ
  | .horizontal => ![(1/1 : ℚ), (1/1 : ℚ), (1/1 : ℚ)]
  | .vertical => ![(1/1 : ℚ), (1/1 : ℚ), (1/1 : ℚ)]

def centerImag : Side → Fin 3 → ℚ
  | .horizontal => ![(0/1 : ℚ), (0/1 : ℚ), (0/1 : ℚ)]
  | .vertical => ![(0/1 : ℚ), (0/1 : ℚ), (0/1 : ℚ)]

theorem residual_scales : ∀ side i, Scales signs (scale side i)
    (residualPrograms side i).polynomial (residualPoly side (centerReal side i) (centerImag side i) i) := by
  intro side i
  cases side
  · fin_cases i
    · exact CircleJob23f409ee25a86f2dH0.residual_scales
    · exact CircleJob23f409ee25a86f2dH1.residual_scales
    · exact CircleJob23f409ee25a86f2dH2.residual_scales
  · fin_cases i
    · exact CircleJob23f409ee25a86f2dV0.residual_scales
    · exact CircleJob23f409ee25a86f2dV1.residual_scales
    · exact CircleJob23f409ee25a86f2dV2.residual_scales

theorem denominator_scales : ∀ side i, Scales signs (scale side i)
    (denominatorPrograms side i).polynomial (denominatorPoly side i) := by
  intro side i
  cases side
  · fin_cases i
    · exact CircleJob23f409ee25a86f2dH0.denominator_scales
    · exact CircleJob23f409ee25a86f2dH1.denominator_scales
    · exact CircleJob23f409ee25a86f2dH2.denominator_scales
  · fin_cases i
    · exact CircleJob23f409ee25a86f2dV0.denominator_scales
    · exact CircleJob23f409ee25a86f2dV1.denominator_scales
    · exact CircleJob23f409ee25a86f2dV2.denominator_scales

theorem physical_circle_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed signs t) (T : Fin 4 → Interval)
    (ht : ∀ j, Mem (T j) (t j))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes signs T)) u)
    (radius : Side → Fin 3 → ℚ) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (tightCircleMomentBoxes signs T u hs .horizontal (residualPrograms .horizontal)
          (denominatorPrograms .horizontal) (centerReal .horizontal) (centerImag .horizontal)
          (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightCircleMomentBoxes signs T u vs .vertical (residualPrograms .vertical)
          (denominatorPrograms .vertical) (centerReal .vertical) (centerImag .vertical)
          (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_circle_tight_scaled_moment_cover hH signs t hseed T ht hu scale
    (fun side i => (residualPrograms side i).polynomial)
    (fun side i => (denominatorPrograms side i).polynomial)
    residualPrograms denominatorPrograms centerReal centerImag radius
    residual_scales denominator_scales
    (fun side i => (residualPrograms side i).represents_polynomial)
    (fun side i => (denominatorPrograms side i).represents_polynomial)

#print axioms CircleJob23f409ee25a86f2dPhysical.residual_scales

#print axioms CircleJob23f409ee25a86f2dPhysical.denominator_scales

#print axioms CircleJob23f409ee25a86f2dPhysical.physical_circle_cover

end

end CircleJob23f409ee25a86f2dPhysical
