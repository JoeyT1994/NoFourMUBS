import SharedResidualPolynomials

import SparsePolynomialIntervals

import ShiftedPolynomialIntervals

import ClassificationPolynomialFunext

set_option maxHeartbeats 0

set_option maxRecDepth 200000

namespace DenominatorImFlatProbe

open Mub6.Classification.SparsePolynomialIntervals

open Mub6.Classification.ShiftedPolynomialIntervals

open Mub6.Classification.SharedResidualPolynomials

open Mub6.Numerical.IntervalKernel

noncomputable section

def denominatorIm : Program Variable := [
  ⟨(8/1 : ℚ), [((4, 1), 1)]⟩,
  ⟨(-1/1 : ℚ), [((2, 1), 2), ((4, 1), 1)]⟩,
  ⟨(-2/1 : ℚ), [((2, 0), 1), ((4, 1), 1)]⟩,
  ⟨(-1/1 : ℚ), [((2, 0), 2), ((4, 1), 1)]⟩,
  ⟨(-2/1 : ℚ), [((0, 1), 1), ((2, 1), 1), ((4, 1), 1)]⟩,
  ⟨(-1/1 : ℚ), [((0, 1), 2), ((4, 1), 1)]⟩,
  ⟨(-2/1 : ℚ), [((0, 0), 1), ((4, 1), 1)]⟩,
  ⟨(-2/1 : ℚ), [((0, 0), 1), ((2, 0), 1), ((4, 1), 1)]⟩,
  ⟨(-1/1 : ℚ), [((0, 0), 2), ((4, 1), 1)]⟩
]

theorem denominatorIm_vertical_two : (denominatorPoly .vertical 2).im =
    MvPolynomial.X (4,1) * (9 - (sPoly .vertical).normSq) := by
  change 0 + (MvPolynomial.X (4,0) * 0 + MvPolynomial.X (4,1) *
    (9 - (sPoly .vertical).normSq)) = _
  ring

theorem denominatorIm_identity : programPolynomial denominatorIm = (denominatorPoly .vertical 2).im := by
  rw [denominatorIm_vertical_two]
  apply MvPolynomial.funext
  intro p
  norm_num [MvPolynomial.eval, denominatorIm, programPolynomial, termPolynomial, powersPolynomial, sPoly, tPoly, rPoly, sideB, sideC, entryPoly, ComplexPoly.sub, ComplexPoly.const, ComplexPoly.real, ComplexPoly.add, ComplexPoly.mul, ComplexPoly.neg, ComplexPoly.conj, ComplexPoly.sq, ComplexPoly.normSq]
  <;> ring


#print axioms DenominatorImFlatProbe.denominatorIm_identity
end
end DenominatorImFlatProbe
