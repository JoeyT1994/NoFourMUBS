import FourCircleExecutableDegree
import SharedResidualExportControlV4
import ClassificationPolynomialFunext
set_option maxHeartbeats 0
set_option maxRecDepth 200000
namespace IndependentCircleCoefficientMutation
open MvPolynomial
open Mub6.Classification.FourCircleResidualSubstitution
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.SparsePolynomialIntervals
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open scoped BigOperators
noncomputable section

def signs : SeedSigns := ![true,false,false,true]
def bounds : DegreeBound := fun _ => 3
def small : DegreeBound := fun _ => 2
def removed : DegreeBound := fun _ => 1

theorem scale_identity : clearingDenominator removed * clearingDenominator small =
    clearingDenominator bounds := by
  unfold clearingDenominator
  rw [← Finset.prod_mul_distrib]
  apply Finset.prod_congr rfl
  intro j _
  simp only [removed,small,bounds,← pow_add]


def denominatorIm : Program CircleVariable := [
  ⟨(9/1 : ℚ), [(Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 2), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 2), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 2), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 2), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 2), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 2, 1), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 2, 3), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 2), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 2), (Sum.inl 2, 1), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 2), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 2), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 2), (Sum.inl 2, 3), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 2), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 1), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 1), (Sum.inl 2, 2), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 1), (Sum.inl 2, 2), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(96/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 3), (Sum.inl 2, 2), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 3), (Sum.inl 2, 2), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 2), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 2, 1), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 2, 3), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 1), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 2), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 2), (Sum.inl 2, 1), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 2), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 2), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 2), (Sum.inl 2, 3), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 2), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-32/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 3), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 3), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 2, 2), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 2, 2), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 1), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(48/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(32/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 2), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 2, 1), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 2, 2), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 2, 2), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 3), (Sum.inl 2, 3), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 1), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inr 1, 1)]⟩,
  ⟨(24/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 2), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inl 3, 1), (Sum.inr 1, 1)]⟩,
  ⟨(-8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 3), (Sum.inl 3, 3), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inr 1, 1)]⟩,
  ⟨(16/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 2), (Sum.inr 1, 1)]⟩,
  ⟨(8/1 : ℚ), [(Sum.inl 0, 4), (Sum.inl 1, 4), (Sum.inl 2, 4), (Sum.inl 3, 4), (Sum.inr 1, 1)]⟩
]

theorem denominatorIm_degree : ProgramAdmissible bounds SharedResidualExportControlV4.denominatorIm := by
  apply (programAdmissible_iff_executable _ _).mpr
  decide +kernel

theorem sign0 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 0) = (-1 : ℚ) := by decide +kernel
theorem sign1 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 1) = (1 : ℚ) := by decide +kernel
theorem sign2 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 2) = (1 : ℚ) := by decide +kernel
theorem sign3 : Mub6.Classification.SharedRationalIncidence.signValueQ (signs 3) = (-1 : ℚ) := by decide +kernel

theorem denominatorIm_identity :
    clearingDenominator removed * programPolynomial denominatorIm = clearProgram signs bounds SharedResidualExportControlV4.denominatorIm := by
  simp only [denominatorIm, SharedResidualExportControlV4.denominatorIm,
    programPolynomial, termPolynomial, powersPolynomial, clearProgram, clearTerm,
    termExponent, pairDegree, sheetMonomial, powersExponent_apply]
  have h10 : (1 : Fin 2) ≠ 0 := by decide
  simp only [clearingDenominator, perSeedDenominator, rawSeedNumerator,
    bounds, removed, Fin.prod_univ_four, sign0, sign1, sign2, sign3, h10, ite_true, ite_false]
  simp only [powersDegree, Prod.mk.injEq, Fin.ext_iff]
  norm_num
  simp only [map_ofNat, map_neg, map_one, map_zero]
  ring

theorem denominatorIm_represents (t : SeedParameters) (z : ℂ) :
    evalCircle (chartPoint t z) (programPolynomial denominatorIm) =
      evalCircle (chartPoint t z) (clearingDenominator small) *
        evalReal (seedPoint (circleSeed signs t) z) (denominatorPoly .horizontal 0).im :=
  cancelledProgram_represents signs bounds SharedResidualExportControlV4.denominatorIm _ SharedResidualExportControlV4.denominatorIm_identity
    denominatorIm_degree denominatorIm (clearingDenominator removed) (clearingDenominator small)
    denominatorIm_identity scale_identity t z (ne_of_gt (clearingDenominator_pos _ _))


#print axioms IndependentCircleCoefficientMutation.scale_identity

#print axioms IndependentCircleCoefficientMutation.denominatorIm_degree

#print axioms IndependentCircleCoefficientMutation.denominatorIm_identity

#print axioms IndependentCircleCoefficientMutation.denominatorIm_represents

end

end IndependentCircleCoefficientMutation
