import FourCircleTightResidualEnclosures

import CircleJobda608d08e862afeaH0

import CircleJobda608d08e862afeaH1

import CircleJobda608d08e862afeaH2

import CircleJobda608d08e862afeaV0

import CircleJobda608d08e862afeaV1

import CircleJobda608d08e862afeaV2

set_option maxHeartbeats 0

namespace CircleJobda608d08e862afeaPhysical

open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals

open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover

open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas

open Mub6.Classification.SharedSeedIntervals Mub6.Classification.SharedSeedSheetIntervals

open Mub6.Classification.SharedResidualPolynomials

open Mub6.Classification.FourCircleResidualSubstitution

noncomputable section

def signs : SeedSigns := ![true, false, true, false]

def scale : Side → Fin 3 → CirclePoly
  | .horizontal => ![clearingDenominator CircleJobda608d08e862afeaH0.small, clearingDenominator CircleJobda608d08e862afeaH1.small, clearingDenominator CircleJobda608d08e862afeaH2.small]
  | .vertical => ![clearingDenominator CircleJobda608d08e862afeaV0.small, clearingDenominator CircleJobda608d08e862afeaV1.small, clearingDenominator CircleJobda608d08e862afeaV2.small]

def residualPrograms : Side → Fin 3 → CircleComplexProgram
  | .horizontal => ![CircleJobda608d08e862afeaH0.residual, CircleJobda608d08e862afeaH1.residual, CircleJobda608d08e862afeaH2.residual]
  | .vertical => ![CircleJobda608d08e862afeaV0.residual, CircleJobda608d08e862afeaV1.residual, CircleJobda608d08e862afeaV2.residual]

def denominatorPrograms : Side → Fin 3 → CircleComplexProgram
  | .horizontal => ![CircleJobda608d08e862afeaH0.denominator, CircleJobda608d08e862afeaH1.denominator, CircleJobda608d08e862afeaH2.denominator]
  | .vertical => ![CircleJobda608d08e862afeaV0.denominator, CircleJobda608d08e862afeaV1.denominator, CircleJobda608d08e862afeaV2.denominator]

def centerReal : Side → Fin 3 → ℚ
  | .horizontal => ![(17/19 : ℚ), (1/1 : ℚ), (1/1 : ℚ)]
  | .vertical => ![(17/19 : ℚ), (1/1 : ℚ), (1/1 : ℚ)]

def centerImag : Side → Fin 3 → ℚ
  | .horizontal => ![(23/29 : ℚ), (0/1 : ℚ), (0/1 : ℚ)]
  | .vertical => ![(23/29 : ℚ), (0/1 : ℚ), (0/1 : ℚ)]

theorem residual_scales : ∀ side i, Scales signs (scale side i)
    (residualPrograms side i).polynomial (residualPoly side (centerReal side i) (centerImag side i) i) := by
  intro side i
  cases side
  · fin_cases i
    · exact CircleJobda608d08e862afeaH0.residual_scales
    · exact CircleJobda608d08e862afeaH1.residual_scales
    · exact CircleJobda608d08e862afeaH2.residual_scales
  · fin_cases i
    · exact CircleJobda608d08e862afeaV0.residual_scales
    · exact CircleJobda608d08e862afeaV1.residual_scales
    · exact CircleJobda608d08e862afeaV2.residual_scales

theorem denominator_scales : ∀ side i, Scales signs (scale side i)
    (denominatorPrograms side i).polynomial (denominatorPoly side i) := by
  intro side i
  cases side
  · fin_cases i
    · exact CircleJobda608d08e862afeaH0.denominator_scales
    · exact CircleJobda608d08e862afeaH1.denominator_scales
    · exact CircleJobda608d08e862afeaH2.denominator_scales
  · fin_cases i
    · exact CircleJobda608d08e862afeaV0.denominator_scales
    · exact CircleJobda608d08e862afeaV1.denominator_scales
    · exact CircleJobda608d08e862afeaV2.denominator_scales

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

#print axioms CircleJobda608d08e862afeaPhysical.residual_scales

#print axioms CircleJobda608d08e862afeaPhysical.denominator_scales

#print axioms CircleJobda608d08e862afeaPhysical.physical_circle_cover

end

end CircleJobda608d08e862afeaPhysical
