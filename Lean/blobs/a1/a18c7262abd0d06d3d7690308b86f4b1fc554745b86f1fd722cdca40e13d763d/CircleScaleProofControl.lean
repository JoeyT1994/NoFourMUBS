import FourCircleResidualEnclosures

import FourCircleExecutableDegree

import ClassificationPolynomialFunext

import CircleJob23f409ee25a86f2dH0Original

set_option maxHeartbeats 0

set_option maxRecDepth 200000

namespace CircleScaleProofControl

open MvPolynomial

open Mub6.Classification.FourCircleResidualSubstitution

open Mub6.Classification.SharedResidualPolynomials

open Mub6.Classification.SparsePolynomialIntervals

open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas

open scoped BigOperators

noncomputable section

def signs : SeedSigns := ![true, false, false, true]

def bounds : DegreeBound := ![3, 3, 3, 3]

def small : DegreeBound := ![2, 2, 2, 2]

def removed : DegreeBound := ![1, 1, 1, 1]

theorem bounds_0 : bounds 0 = 3 := by decide +kernel

theorem bounds_1 : bounds 1 = 3 := by decide +kernel

theorem bounds_2 : bounds 2 = 3 := by decide +kernel

theorem bounds_3 : bounds 3 = 3 := by decide +kernel

theorem small_0 : small 0 = 2 := by decide +kernel

theorem small_1 : small 1 = 2 := by decide +kernel

theorem small_2 : small 2 = 2 := by decide +kernel

theorem small_3 : small 3 = 2 := by decide +kernel

theorem removed_0 : removed 0 = 1 := by decide +kernel

theorem removed_1 : removed 1 = 1 := by decide +kernel

theorem removed_2 : removed 2 = 1 := by decide +kernel

theorem removed_3 : removed 3 = 1 := by decide +kernel

theorem scale_identity : clearingDenominator removed * clearingDenominator small =
    clearingDenominator bounds := by
  unfold clearingDenominator
  rw [← Finset.prod_mul_distrib]
  apply Finset.prod_congr rfl
  intro j _
  have hsum : ∀ k : Fin 4, removed k + small k = bounds k := by decide +kernel
  rw [← pow_add, hsum j]

theorem sign0 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 0) = (-1 : ℚ) := by decide +kernel

theorem sign1 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 1) = (1 : ℚ) := by decide +kernel

theorem sign2 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 2) = (1 : ℚ) := by decide +kernel

theorem sign3 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 3) = (-1 : ℚ) := by decide +kernel


#print axioms CircleScaleProofControl.scale_identity
end
end CircleScaleProofControl
