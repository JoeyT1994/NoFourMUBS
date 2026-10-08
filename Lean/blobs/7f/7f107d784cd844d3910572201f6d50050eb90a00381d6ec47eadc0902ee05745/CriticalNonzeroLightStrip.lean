import CriticalWholeMoments
import CriticalNewtonCore

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNonzeroPhysicalBinding20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open CriticalStripMoments20261003
noncomputable section

/-- The literal first and last three columns, using the same definitions as
CriticalStripNewton. The final join checks definitional equality to that layer.
Only its six linear-input consequences are needed during reconstruction. -/
def leftBlock (H : CompactCover.Mat6) : CompactCover.Mat3 :=
  H.submatrix GoodMinor.front GoodMinor.front
def rightBlock (H : CompactCover.Mat6) : CompactCover.Mat3 :=
  H.submatrix GoodMinor.front (fun j : Fin 3 => j.natAdd 3)
def leftData (H : CompactCover.Mat6) : CriticalNewton20261003.Data :=
  CriticalNewton20261003.dataOf (leftBlock H 1) (leftBlock H 2)
def rightData (H : CompactCover.Mat6) : CriticalNewton20261003.Data :=
  CriticalNewton20261003.dataOf (rightBlock H 1) (rightBlock H 2)

theorem moment_split (H : CompactCover.Mat6) (a b : ℤ) :
    stripMoment H a b=
      CriticalNewton20261003.moment (leftBlock H 1) (leftBlock H 2) a b+
      CriticalNewton20261003.moment (rightBlock H 1) (rightBlock H 2) a b := by
  simp [stripMoment,CriticalNewton20261003.moment,leftBlock,rightBlock,
    Matrix.submatrix,GoodMinor.front,Fin.sum_univ_succ,Fin.succ,Fin.natAdd]
  ring

theorem opposite_moment (H : CompactCover.Mat6) (a b : ℤ)
    (hz : stripMoment H a b=0) :
    CriticalNewton20261003.moment (rightBlock H 1) (rightBlock H 2) a b=
      -CriticalNewton20261003.moment (leftBlock H 1) (leftBlock H 2) a b := by
  have h := moment_split H a b
  rw [hz] at h
  linear_combination -h

/-- This reuses the admitted whole-row moment zeros; it does not identify the
nonlinear reconstruction fields or assume either block is invertible. -/
theorem normalized_opposite_inputs {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    (rightData H).s= -(leftData H).s ∧ (rightData H).S= -(leftData H).S ∧
    (rightData H).t= -(leftData H).t ∧ (rightData H).T= -(leftData H).T ∧
    (rightData H).r= -(leftData H).r ∧ (rightData H).Q= -(leftData H).Q := by
  rcases stripMoment_six_zeros hH with ⟨h10,hm10,h01,h0m1,h1m1,hm11⟩
  have h1 := opposite_moment H 1 0 h10
  have h2 := opposite_moment H (-1) 0 hm10
  have h3 := opposite_moment H 0 1 h01
  have h4 := opposite_moment H 0 (-1) h0m1
  have h5 := opposite_moment H (-1) 1 hm11
  have h6 := opposite_moment H 1 (-1) h1m1
  simpa [rightData,leftData,CriticalNewton20261003.dataOf,
    CriticalNewton20261003.rowSum,CriticalNewton20261003.moment,
    CriticalNewton20261003.invRow,CriticalNewton20261003.ratio,
    div_eq_mul_inv,mul_comm] using And.intro h1 (And.intro h2
      (And.intro h3 (And.intro h4 (And.intro h5 h6))))

end
#print axioms moment_split
#print axioms opposite_moment
#print axioms normalized_opposite_inputs
end CriticalNonzeroPhysicalBinding20261003
