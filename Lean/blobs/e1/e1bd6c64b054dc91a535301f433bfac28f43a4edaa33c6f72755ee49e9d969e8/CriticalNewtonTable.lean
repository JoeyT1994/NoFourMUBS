import CriticalNewtonBatch00
import CriticalNewtonBatch01
import CriticalNewtonBatch02
import CriticalNewtonBatch03
import CriticalNewtonBatch04
import CriticalNewtonBatch05
import CriticalNewtonBatch06
import CriticalNewtonPhysical
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewton20261003
noncomputable section

def momentIndices : Fin 43 → ℤ × ℤ := ![(-4,2),(-3,0),(-3,1),(-3,2),(-3,3),(-2,-2),(-2,-1),(-2,0),(-2,1),(-2,2),(-2,3),(-2,4),(-1,-2),(-1,-1),(-1,0),(-1,1),(-1,2),(-1,3),(0,-3),(0,-2),(0,-1),(0,0),(0,1),(0,2),(0,3),(1,-3),(1,-2),(1,-1),(1,0),(1,1),(1,2),(2,-4),(2,-3),(2,-2),(2,-1),(2,0),(2,1),(2,2),(3,-3),(3,-2),(3,-1),(3,0),(4,-2)]

def newtonTable (D : Data) : Fin 43 → ℂ := ![newton_m4_p2 D,newton_m3_p0 D,newton_m3_p1 D,newton_m3_p2 D,newton_m3_p3 D,newton_m2_m2 D,newton_m2_m1 D,newton_m2_p0 D,newton_m2_p1 D,newton_m2_p2 D,newton_m2_p3 D,newton_m2_p4 D,newton_m1_m2 D,newton_m1_m1 D,newton_m1_p0 D,newton_m1_p1 D,newton_m1_p2 D,newton_m1_p3 D,newton_p0_m3 D,newton_p0_m2 D,newton_p0_m1 D,newton_p0_p0 D,newton_p0_p1 D,newton_p0_p2 D,newton_p0_p3 D,newton_p1_m3 D,newton_p1_m2 D,newton_p1_m1 D,newton_p1_p0 D,newton_p1_p1 D,newton_p1_p2 D,newton_p2_m4 D,newton_p2_m3 D,newton_p2_m2 D,newton_p2_m1 D,newton_p2_p0 D,newton_p2_p1 D,newton_p2_p2 D,newton_p3_m3 D,newton_p3_m2 D,newton_p3_m1 D,newton_p3_p0 D,newton_p4_m2 D]

/-- Every implemented external moment is the literal sum on three existing
columns. The only excluded inputs are zero entries, impossible for phases. -/
theorem actual_newton_table (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) (k : Fin 43) :
    moment x y (momentIndices k).1 (momentIndices k).2 = newtonTable (dataOf x y) k := by
  fin_cases k
  · exact actual_m4_p2 x y hx hy
  · exact actual_m3_p0 x y hx hy
  · exact actual_m3_p1 x y hx hy
  · exact actual_m3_p2 x y hx hy
  · exact actual_m3_p3 x y hx hy
  · exact actual_m2_m2 x y hx hy
  · exact actual_m2_m1 x y hx hy
  · exact actual_m2_p0 x y hx hy
  · exact actual_m2_p1 x y hx hy
  · exact actual_m2_p2 x y hx hy
  · exact actual_m2_p3 x y hx hy
  · exact actual_m2_p4 x y hx hy
  · exact actual_m1_m2 x y hx hy
  · exact actual_m1_m1 x y hx hy
  · exact actual_m1_p0 x y hx hy
  · exact actual_m1_p1 x y hx hy
  · exact actual_m1_p2 x y hx hy
  · exact actual_m1_p3 x y hx hy
  · exact actual_p0_m3 x y hx hy
  · exact actual_p0_m2 x y hx hy
  · exact actual_p0_m1 x y hx hy
  · exact actual_p0_p0 x y hx hy
  · exact actual_p0_p1 x y hx hy
  · exact actual_p0_p2 x y hx hy
  · exact actual_p0_p3 x y hx hy
  · exact actual_p1_m3 x y hx hy
  · exact actual_p1_m2 x y hx hy
  · exact actual_p1_m1 x y hx hy
  · exact actual_p1_p0 x y hx hy
  · exact actual_p1_p1 x y hx hy
  · exact actual_p1_p2 x y hx hy
  · exact actual_p2_m4 x y hx hy
  · exact actual_p2_m3 x y hx hy
  · exact actual_p2_m2 x y hx hy
  · exact actual_p2_m1 x y hx hy
  · exact actual_p2_p0 x y hx hy
  · exact actual_p2_p1 x y hx hy
  · exact actual_p2_p2 x y hx hy
  · exact actual_p3_m3 x y hx hy
  · exact actual_p3_m2 x y hx hy
  · exact actual_p3_m1 x y hx hy
  · exact actual_p3_p0 x y hx hy
  · exact actual_p4_m2 x y hx hy

/-- Application directly to the second and third rows of any actual unit-entry
3 by 3 block. No determinant or correlation condition is assumed. -/
theorem phase_block_newton_table (E : Matrix (Fin 3) (Fin 3) ℂ)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (k : Fin 43) :
    moment (E 1) (E 2) (momentIndices k).1 (momentIndices k).2 =
      newtonTable (dataOf (E 1) (E 2)) k :=
  actual_newton_table (E 1) (E 2) (fun j => phase_nonzero (hE 1 j))
    (fun j => phase_nonzero (hE 2 j)) k

end
#print axioms actual_newton_table
#print axioms phase_block_newton_table
end CriticalNewton20261003
