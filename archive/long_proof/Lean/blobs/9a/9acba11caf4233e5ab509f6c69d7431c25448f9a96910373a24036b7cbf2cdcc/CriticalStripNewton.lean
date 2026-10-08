import CriticalNewtonTable
import CriticalWholeMoments

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification
open CompactCover GlobalCornerDomain
noncomputable section

def stripLeftBlock (H : CompactCover.Mat6) : CompactCover.Mat3 :=
  H.submatrix GoodMinor.front GoodMinor.front

def stripRightBlock (H : CompactCover.Mat6) : CompactCover.Mat3 :=
  H.submatrix GoodMinor.front (fun j : Fin 3 => j.natAdd 3)

def stripLeftData (H : CompactCover.Mat6) : CriticalNewton20261003.Data :=
  CriticalNewton20261003.dataOf (stripLeftBlock H 1) (stripLeftBlock H 2)

def stripRightData (H : CompactCover.Mat6) : CriticalNewton20261003.Data :=
  CriticalNewton20261003.dataOf (stripRightBlock H 1) (stripRightBlock H 2)

/-- The literal first and last three columns partition every integer moment. -/
theorem stripMoment_split (H : CompactCover.Mat6) (a b : ℤ) :
    stripMoment H a b =
      CriticalNewton20261003.moment (stripLeftBlock H 1) (stripLeftBlock H 2) a b +
      CriticalNewton20261003.moment (stripRightBlock H 1) (stripRightBlock H 2) a b := by
  simp [stripMoment,CriticalNewton20261003.moment,stripLeftBlock,stripRightBlock,
    Matrix.submatrix,GoodMinor.front,Fin.sum_univ_succ,Fin.succ,Fin.natAdd]
  ring

/-- All 43 table entries are tied to the two actual complementary phase blocks.
No block invertibility or correlation denominator is required. -/
theorem normalized_strip_newton_table {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (k : Fin 43) :
    stripMoment H (CriticalNewton20261003.momentIndices k).1
      (CriticalNewton20261003.momentIndices k).2 =
      CriticalNewton20261003.newtonTable (stripLeftData H) k +
      CriticalNewton20261003.newtonTable (stripRightData H) k := by
  rw [stripMoment_split]
  exact congrArg₂ (·+·)
    (CriticalNewton20261003.phase_block_newton_table (stripLeftBlock H)
      (fun i j => hH.1.1 (GoodMinor.front i) (GoodMinor.front j)) k)
    (CriticalNewton20261003.phase_block_newton_table (stripRightBlock H)
      (fun i j => hH.1.1 (GoodMinor.front i) (j.natAdd 3)) k)

theorem complementary_block_moment (H : CompactCover.Mat6) (a b : ℤ)
    (hz : stripMoment H a b=0) :
    CriticalNewton20261003.moment (stripRightBlock H 1) (stripRightBlock H 2) a b =
      -CriticalNewton20261003.moment (stripLeftBlock H 1) (stripLeftBlock H 2) a b := by
  have h := stripMoment_split H a b
  rw [hz] at h
  linear_combination -h

/-- Exactly the six linear inputs negated between the two halves in the
external moment verifier. Product and permanent fields are not identified. -/
theorem normalized_opposite_data {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    (stripRightData H).s= -(stripLeftData H).s ∧
    (stripRightData H).S= -(stripLeftData H).S ∧
    (stripRightData H).t= -(stripLeftData H).t ∧
    (stripRightData H).T= -(stripLeftData H).T ∧
    (stripRightData H).r= -(stripLeftData H).r ∧
    (stripRightData H).Q= -(stripLeftData H).Q := by
  rcases stripMoment_six_zeros hH with ⟨h10,hm10,h01,h0m1,h1m1,hm11⟩
  have h1 := complementary_block_moment H 1 0 h10
  have h2 := complementary_block_moment H (-1) 0 hm10
  have h3 := complementary_block_moment H 0 1 h01
  have h4 := complementary_block_moment H 0 (-1) h0m1
  have h5 := complementary_block_moment H (-1) 1 hm11
  have h6 := complementary_block_moment H 1 (-1) h1m1
  simpa [stripRightData,stripLeftData,CriticalNewton20261003.dataOf,
    CriticalNewton20261003.rowSum,CriticalNewton20261003.moment,
    CriticalNewton20261003.invRow,CriticalNewton20261003.ratio,
    div_eq_mul_inv,mul_comm] using And.intro h1 (And.intro h2
      (And.intro h3 (And.intro h4 (And.intro h5 h6))))

end
#print axioms stripMoment_split
#print axioms normalized_strip_newton_table
#print axioms complementary_block_moment
#print axioms normalized_opposite_data
end CriticalStripMoments20261003
