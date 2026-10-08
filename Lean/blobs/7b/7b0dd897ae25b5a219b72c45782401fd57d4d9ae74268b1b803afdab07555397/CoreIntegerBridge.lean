import SeedPhaseCore
import SquareNormBounds
import IntegerPhaseDifference
import Mathlib.Algebra.BigOperators.Fin

/-! Exact bridge from the Std-only integer operations to the existing checked
integer/complex semantics. No concrete table or cell is specialized here. -/
set_option autoImplicit false
open scoped BigOperators
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007

namespace Seed0024PhaseCoreBridge20261007

theorem fiveSum_eq_sum (v : Vec5 Int) : fiveSum v = ∑ i, v i := by
  simpa only [fiveSum] using (Fin.sum_univ_five v).symm

theorem fiveSumWithQ_eq_integerFiveSum (v : Vec5 Pair) :
    fiveSumWithQ v = integerFiveSum 67108864 v := by
  simp only [fiveSumWithQ,Seed0024PhaseCore20261007.Q,integerFiveSum,fiveSum_eq_sum]

theorem pairSub_eq_integerPairSub (x y : Pair) :
    pairSub x y = integerPairSub x y := rfl

theorem pairSquare_eq_integerPairSquare (z : Pair) :
    pairSquare z = integerPairSquare z := rfl

theorem normSquareNat_eq_integerNormSq (z : Pair) :
    normSquareNat z = integerNormSq z.1 z.2 := rfl

theorem floorWitnessCheck_eq_normFloorWitnessCheck (z : Pair) (r : Nat) :
    floorWitnessCheck z r = normFloorWitnessCheck z r := rfl

theorem conjugateProductQuotient_eq_integerConjProductQuotient (c t : Pair) :
    conjugateProductQuotient c t = integerConjProductQuotient 67108864 c t := rfl

theorem ceilDiv_eq_integerCeilDiv (a b : Int) : ceilDiv a b = integerCeilDiv a b := rfl

theorem core_floor_witness_exact (z : Pair) (r : Nat)
    (h : floorWitnessCheck z r = true) : (r : Int) = integerPairNormFloor z := by
  rw [floorWitnessCheck_eq_normFloorWitnessCheck] at h
  exact normFloorWitnessCheck_eq z r h

theorem core_floor_witness_complex_error (z : Pair) (r : Nat)
    (h : floorWitnessCheck z r = true) :
    |(r : ℝ)-‖integerPairComplex z‖| < 1 := by
  have he : (r : ℝ) = (integerPairNormFloor z : ℝ) := by
    exact_mod_cast core_floor_witness_exact z r h
  rw [he]
  exact integerPairNormFloor_error z

theorem core_five_sum_complex (v : Vec5 Pair) :
    integerPairComplex (fiveSumWithQ v) =
      (67108864 : ℂ)+∑ i,integerPairComplex (v i) := by
  rw [fiveSumWithQ_eq_integerFiveSum]
  exact integerFiveSum_complex 67108864 v

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.fiveSum_eq_sum
#print axioms Seed0024PhaseCoreBridge20261007.fiveSumWithQ_eq_integerFiveSum
#print axioms Seed0024PhaseCoreBridge20261007.pairSub_eq_integerPairSub
#print axioms Seed0024PhaseCoreBridge20261007.pairSquare_eq_integerPairSquare
#print axioms Seed0024PhaseCoreBridge20261007.normSquareNat_eq_integerNormSq
#print axioms Seed0024PhaseCoreBridge20261007.floorWitnessCheck_eq_normFloorWitnessCheck
#print axioms Seed0024PhaseCoreBridge20261007.conjugateProductQuotient_eq_integerConjProductQuotient
#print axioms Seed0024PhaseCoreBridge20261007.ceilDiv_eq_integerCeilDiv
#print axioms Seed0024PhaseCoreBridge20261007.core_floor_witness_exact
#print axioms Seed0024PhaseCoreBridge20261007.core_floor_witness_complex_error
#print axioms Seed0024PhaseCoreBridge20261007.core_five_sum_complex
