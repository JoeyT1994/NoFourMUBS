import CertifiedShiftedResidualEnclosures

import ResidualJob60e184ee2c76b59dH0

import ResidualJob60e184ee2c76b59dH1

import ResidualJob60e184ee2c76b59dH2

import ResidualJob60e184ee2c76b59dV0

import ResidualJob60e184ee2c76b59dV1

import ResidualJob60e184ee2c76b59dV2

set_option maxHeartbeats 0

set_option maxRecDepth 200000

namespace ResidualJob60e184ee2c76b59dPhysical

open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals

open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover

open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas

open Mub6.Classification.SharedSeedIntervals

open Mub6.Classification.SharedSeedSheetIntervals

open Mub6.Classification.SharedResidualPolynomials

noncomputable section

def coordinateShift : Side → Variable → ℚ
  | .horizontal => ResidualJob60e184ee2c76b59dH0.shift
  | .vertical => ResidualJob60e184ee2c76b59dV0.shift

def residualPrograms (side : Side) : Fin 3 → ShiftedComplexProgram (coordinateShift side) :=
  match side with
  | .horizontal => ![⟨ResidualJob60e184ee2c76b59dH0.residualRe, ResidualJob60e184ee2c76b59dH0.residualIm⟩, ⟨ResidualJob60e184ee2c76b59dH1.residualRe, ResidualJob60e184ee2c76b59dH1.residualIm⟩, ⟨ResidualJob60e184ee2c76b59dH2.residualRe, ResidualJob60e184ee2c76b59dH2.residualIm⟩]
  | .vertical => ![⟨ResidualJob60e184ee2c76b59dV0.residualRe, ResidualJob60e184ee2c76b59dV0.residualIm⟩, ⟨ResidualJob60e184ee2c76b59dV1.residualRe, ResidualJob60e184ee2c76b59dV1.residualIm⟩, ⟨ResidualJob60e184ee2c76b59dV2.residualRe, ResidualJob60e184ee2c76b59dV2.residualIm⟩]

def denominatorPrograms (side : Side) : Fin 3 → ShiftedComplexProgram (coordinateShift side) :=
  match side with
  | .horizontal => ![⟨ResidualJob60e184ee2c76b59dH0.denominatorRe, ResidualJob60e184ee2c76b59dH0.denominatorIm⟩, ⟨ResidualJob60e184ee2c76b59dH1.denominatorRe, ResidualJob60e184ee2c76b59dH1.denominatorIm⟩, ⟨ResidualJob60e184ee2c76b59dH2.denominatorRe, ResidualJob60e184ee2c76b59dH2.denominatorIm⟩]
  | .vertical => ![⟨ResidualJob60e184ee2c76b59dV0.denominatorRe, ResidualJob60e184ee2c76b59dV0.denominatorIm⟩, ⟨ResidualJob60e184ee2c76b59dV1.denominatorRe, ResidualJob60e184ee2c76b59dV1.denominatorIm⟩, ⟨ResidualJob60e184ee2c76b59dV2.denominatorRe, ResidualJob60e184ee2c76b59dV2.denominatorIm⟩]

def centerReal : Side → Fin 3 → ℚ
  | .horizontal => ![(1/1 : ℚ), (1/1 : ℚ), (1/1 : ℚ)]
  | .vertical => ![(1/1 : ℚ), (1/1 : ℚ), (1/1 : ℚ)]

def centerImag : Side → Fin 3 → ℚ
  | .horizontal => ![(0/1 : ℚ), (0/1 : ℚ), (0/1 : ℚ)]
  | .vertical => ![(0/1 : ℚ), (0/1 : ℚ), (0/1 : ℚ)]

theorem residual_represents : ∀ side i, (residualPrograms side i).Represents (residualPoly side (centerReal side i) (centerImag side i) i) := by
  intro side i
  cases side
  · fin_cases i
    · exact ⟨ResidualJob60e184ee2c76b59dH0.residualRe_identity, ResidualJob60e184ee2c76b59dH0.residualIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dH1.residualRe_identity, ResidualJob60e184ee2c76b59dH1.residualIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dH2.residualRe_identity, ResidualJob60e184ee2c76b59dH2.residualIm_identity⟩
  · fin_cases i
    · exact ⟨ResidualJob60e184ee2c76b59dV0.residualRe_identity, ResidualJob60e184ee2c76b59dV0.residualIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dV1.residualRe_identity, ResidualJob60e184ee2c76b59dV1.residualIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dV2.residualRe_identity, ResidualJob60e184ee2c76b59dV2.residualIm_identity⟩

theorem denominator_represents : ∀ side i, (denominatorPrograms side i).Represents (denominatorPoly side i) := by
  intro side i
  cases side
  · fin_cases i
    · exact ⟨ResidualJob60e184ee2c76b59dH0.denominatorRe_identity, ResidualJob60e184ee2c76b59dH0.denominatorIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dH1.denominatorRe_identity, ResidualJob60e184ee2c76b59dH1.denominatorIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dH2.denominatorRe_identity, ResidualJob60e184ee2c76b59dH2.denominatorIm_identity⟩
  · fin_cases i
    · exact ⟨ResidualJob60e184ee2c76b59dV0.denominatorRe_identity, ResidualJob60e184ee2c76b59dV0.denominatorIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dV1.denominatorRe_identity, ResidualJob60e184ee2c76b59dV1.denominatorIm_identity⟩
    · exact ⟨ResidualJob60e184ee2c76b59dV2.denominatorRe_identity, ResidualJob60e184ee2c76b59dV2.denominatorIm_identity⟩

theorem physical_seed_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) {B : SeedBoxes}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (radius : Side → Fin 3 → ℚ) :
    let u := coarseSqrtUpper (sharedRadicandInterval B)
    ∃ hs vs : Bool,
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u hs .horizontal (residualPrograms .horizontal)
          (denominatorPrograms .horizontal) (centerReal .horizontal) (centerImag .horizontal)
          (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (shiftedCompiledMomentBoxes B u vs .vertical (residualPrograms .vertical)
          (denominatorPrograms .vertical) (centerReal .vertical) (centerImag .vertical)
          (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_shared_seed_coarse_shifted_centered_moment_cover hH hB coordinateShift
    residualPrograms denominatorPrograms centerReal centerImag radius
    residual_represents denominator_represents

#print axioms ResidualJob60e184ee2c76b59dPhysical.residual_represents

#print axioms ResidualJob60e184ee2c76b59dPhysical.denominator_represents

#print axioms ResidualJob60e184ee2c76b59dPhysical.physical_seed_cover

end

end ResidualJob60e184ee2c76b59dPhysical
