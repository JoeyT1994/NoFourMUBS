import RegularCarrierData
import IntervalKernel
import NumericalBridge
import Hadamard6.TaoAtlas
import Hadamard6.ConcreteClassification

/-! Exact separation of the proposed regular carrier region from the current
intrinsic H2 and Tao loci. This does not assert the region is physically nonempty. -/
namespace ClassificationCover.RegularBenchmark
open Hadamard6
open Mub6
open Mub6.Numerical
open Mub6.Numerical.IntervalKernel

set_option maxRecDepth 100000
set_option maxHeartbeats 0

def boxNonzeroCheck (q : RationalRectangle) : Bool :=
  excludes (reInterval q) 0 || excludes (imInterval q) 0

theorem boxNonzeroCheck_sound {q : RationalRectangle} {z : ℂ}
    (hc : boxNonzeroCheck q = true) (hz : MemRectangle q z) : z ≠ 0 := by
  intro he
  subst z
  rcases Bool.or_eq_true_iff.mp hc with hr | hi
  · exact excludes_sound hr ⟨hz.1, hz.2.1⟩ (by norm_num)
  · exact excludes_sound hi ⟨hz.2.2.1, hz.2.2.2⟩ (by norm_num)

def permanent (H : BasisMatrix) (r s c d : Fin 6) : ℂ :=
  H r c * H s d + H r d * H s c

def permanentBox (E : CarrierRegion) (r s c d : Fin 6) : RationalRectangle :=
  boxAdd (boxMul (E r c) (E s d)) (boxMul (E r d) (E s c))

theorem mem_permanentBox {E : CarrierRegion} {H : BasisMatrix}
    (hH : CarrierBox E H) (r s c d : Fin 6) :
    MemRectangle (permanentBox E r s c d) (permanent H r s c d) := by
  exact mem_boxAdd (mem_boxMul (hH r c) (hH s d)) (mem_boxMul (hH r d) (hH s c))

/-- All 225 exact rational computations are evaluated by the Lean kernel. -/
theorem permanent_checks : ∀ i j : Fin 15,
    boxNonzeroCheck (permanentBox carrier (orderedPairs i).1 (orderedPairs i).2
      (orderedPairs j).1 (orderedPairs j).2) = true := by decide +kernel

theorem increasing_permanent_nonzero {H : BasisMatrix} (hH : CarrierBox carrier H)
    (r s c d : Fin 6) (hrs : r < s) (hcd : c < d) : permanent H r s c d ≠ 0 := by
  obtain ⟨i, hi⟩ := orderedPairs_cover r s hrs
  obtain ⟨j, hj⟩ := orderedPairs_cover c d hcd
  have hc := permanent_checks i j
  simp only [hi, hj] at hc
  exact boxNonzeroCheck_sound hc (mem_permanentBox hH r s c d)

theorem every_permanent_nonzero {H : BasisMatrix} (hH : CarrierBox carrier H)
    (r s c d : Fin 6) (hrs : r ≠ s) (hcd : c ≠ d) : permanent H r s c d ≠ 0 := by
  rcases lt_or_gt_of_ne hrs with hrs | hrs <;> rcases lt_or_gt_of_ne hcd with hcd | hcd
  · exact increasing_permanent_nonzero hH r s c d hrs hcd
  · simpa [permanent, add_comm, mul_comm] using increasing_permanent_nonzero hH r s d c hrs hcd
  · simpa [permanent, add_comm, mul_comm] using increasing_permanent_nonzero hH s r c d hrs hcd
  · simpa [permanent, add_comm, mul_comm] using increasing_permanent_nonzero hH s r d c hrs hcd

def boxCube (q : RationalRectangle) : RationalRectangle := boxMul (boxMul q q) q

theorem mem_boxCube {q : RationalRectangle} {z : ℂ} (hz : MemRectangle q z) :
    MemRectangle (boxCube q) (z ^ 3) := by
  simpa [boxCube, pow_succ, pow_two] using mem_boxMul (mem_boxMul hz hz) hz

def selectedCubeDifference (H : BasisMatrix) : ℂ :=
  (H 0 0 * H 1 1)^3 - (H 0 1 * H 1 0)^3

def selectedCubeBox (E : CarrierRegion) : RationalRectangle :=
  boxSub (boxCube (boxMul (E 0 0) (E 1 1))) (boxCube (boxMul (E 0 1) (E 1 0)))

theorem selected_cube_check : boxNonzeroCheck (selectedCubeBox carrier) = true := by decide +kernel

theorem selected_cube_difference_nonzero {H : BasisMatrix} (hH : CarrierBox carrier H) :
    selectedCubeDifference H ≠ 0 := by
  apply boxNonzeroCheck_sound selected_cube_check
  exact mem_boxSub (mem_boxCube (mem_boxMul (hH 0 0) (hH 1 1)))
    (mem_boxCube (mem_boxMul (hH 0 1) (hH 1 0)))

def CubicCrossProperty (H : BasisMatrix) : Prop :=
  ∀ r s c d : Fin 6, (H r c * H s d)^3 = (H r d * H s c)^3

theorem not_cubic_cross_property {H : BasisMatrix} (hH : CarrierBox carrier H) :
    ¬ CubicCrossProperty H := by
  intro hc
  exact selected_cube_difference_nonzero hH (sub_eq_zero.mpr (hc 0 1 0 1))

theorem no_hadamard_two_by_two {H : BasisMatrix} (hH : CarrierBox carrier H) :
    ¬ HasHadamardTwoByTwo (toPublic H) := by
  rintro ⟨rows, cols, hsub⟩
  have hr : indexEquiv (rows 0) ≠ indexEquiv (rows 1) := by
    intro he
    exact (by decide : (0 : Fin 2) ≠ 1) (rows.injective (indexEquiv.injective he))
  have hc : indexEquiv (cols 0) ≠ indexEquiv (cols 1) := by
    intro he
    exact (by decide : (0 : Fin 2) ≠ 1) (cols.injective (indexEquiv.injective he))
  have hz := isHadamard2_cross_sum_zero hsub
  exact every_permanent_nonzero hH _ _ _ _ hr hc hz

theorem not_intrinsic_karlsson {H : BasisMatrix} (hH : CarrierBox carrier H) :
    ¬ IsKarlssonConcrete (toPublic H) := by
  intro hk
  exact no_hadamard_two_by_two hH hk.2

theorem tao_has_cubic_cross {H : Mat6} (hH : IsTaoOrbit H) (r s c d : I6) :
    (H r c * H s d)^3 = (H r d * H s c)^3 := by
  rcases hH with ⟨w, hw, he⟩
  rcases equivalent_symm he with ⟨p, q, a, b, _, _, heq⟩
  simp only [heq, mul_pow, taoMatrix_entry_isCubicRoot hw]
  ring

theorem not_tao_orbit {H : BasisMatrix} (hH : CarrierBox carrier H) :
    ¬ IsTaoOrbit (toPublic H) := by
  intro ht
  have hc := tao_has_cubic_cross ht (indexEquiv.symm 0) (indexEquiv.symm 1)
    (indexEquiv.symm 0) (indexEquiv.symm 1)
  have he : (H 0 0 * H 1 1)^3 = (H 0 1 * H 1 0)^3 := by
    simpa [toPublic, Matrix.submatrix, Matrix.of_apply] using hc
  exact selected_cube_difference_nonzero hH (sub_eq_zero.mpr he)

#print axioms permanent_checks
#print axioms every_permanent_nonzero
#print axioms selected_cube_check
#print axioms selected_cube_difference_nonzero
#print axioms not_cubic_cross_property
#print axioms no_hadamard_two_by_two
#print axioms not_intrinsic_karlsson
#print axioms tao_has_cubic_cross
#print axioms not_tao_orbit
end ClassificationCover.RegularBenchmark
