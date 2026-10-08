import CriticalNonzeroLightData
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNonzeroLight20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]

def linearA (X Y k : F) : F :=
  let Z := p k-X-Y
  let Lp := pole k 1 Z
  let Lm := pole k (-1) Z
  let zp := sheet k 1
  let zm := sheet k (-1)
  2*X*Lp*Lm-(3-Z)*X*(zp*Lm+zm*Lp)-J k*(zp*Lm-zm*Lp)
def linearB (X Y k : F) : F :=
  -(X-Y)*(sheet k 1*pole k (-1) (p k-X-Y)-sheet k (-1)*pole k 1 (p k-X-Y))
def linearD (X Y k : F) : F := X*pole k 1 (p k-X-Y)*pole k (-1) (p k-X-Y)

/-- The first complete paired Newton moment already lies in the linear
span of 1 and the shared reciprocal correlation. All three divisors are
literal and explicit; no splitting or generic-root claim is needed. -/
theorem paired_p1_p1 (X Y k r : F) (hX : X≠0)
    (hp : pole k 1 (p k-X-Y)≠0) (hm : pole k (-1) (p k-X-Y)≠0) :
    newton_p1_p1 (nonzeroSide X Y k r 1)+
      newton_p1_p1 (nonzeroSide X Y k r (-1)) =
      (linearA X Y k+linearB X Y k*r)/linearD X Y k := by
  dsimp only [nonzeroSide,reconstructionData,newton_p1_p1,linearA,linearB,linearD]
  field_simp [hX,hp,hm]
  <;> ring

def quadraticRawN (X Y k r : F) : F :=
  let Lp := pole k 1 Y
  let Lm := pole k (-1) Y
  let zp := sheet k 1
  let zm := sheet k (-1)
  2*X*r*Lp*Lm-(zp*Lm-zm*Lp)*(X^2+Y*r^2)-
    (zp*Lm+zm*Lp)*X*r*(3-Y)
def quadraticA (X Y k : F) : F :=
  X*(p k-X-Y-X)*(sheet k 1*pole k (-1) Y-sheet k (-1)*pole k 1 Y)
def quadraticB (X Y k : F) : F :=
  2*X*pole k 1 Y*pole k (-1) Y-
    J k*(sheet k 1*pole k (-1) Y-sheet k (-1)*pole k 1 Y)-
    X*(3-Y)*(sheet k 1*pole k (-1) Y+sheet k (-1)*pole k 1 Y)
def quadraticD (Y k : F) : F := pole k 1 Y*pole k (-1) Y

theorem paired_m2_p1_raw (X Y k r : F)
    (hp : pole k 1 Y≠0) (hm : pole k (-1) Y≠0) :
    newton_m2_p1 (nonzeroSide X Y k r 1)+
      newton_m2_p1 (nonzeroSide X Y k r (-1)) =
      quadraticRawN X Y k r/quadraticD Y k := by
  dsimp only [nonzeroSide,reconstructionData,newton_m2_p1,quadraticRawN,quadraticD]
  field_simp [hp,hm]
  <;> ring

theorem quadratic_numerator_reduction (X Y k r : F)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    quadraticRawN X Y k r=quadraticA X Y k+quadraticB X Y k*r := by
  dsimp only [quadraticRawN,quadraticA,quadraticB]
  linear_combination -(sheet k 1*pole k (-1) Y-sheet k (-1)*pole k 1 Y)*hq

/-- The second paired moment is reduced using the exact nonzero-J
quadratic, retaining the common r across both complementary sides. -/
theorem paired_m2_p1 (X Y k r : F)
    (hp : pole k 1 Y≠0) (hm : pole k (-1) Y≠0)
    (hq : Y*r^2-J k*r+X*(p k-X-Y)=0) :
    newton_m2_p1 (nonzeroSide X Y k r 1)+
      newton_m2_p1 (nonzeroSide X Y k r (-1)) =
      (quadraticA X Y k+quadraticB X Y k*r)/quadraticD Y k := by
  rw [paired_m2_p1_raw X Y k r hp hm,quadratic_numerator_reduction X Y k r hq]

end
#print axioms paired_p1_p1
#print axioms paired_m2_p1_raw
#print axioms quadratic_numerator_reduction
#print axioms paired_m2_p1
end CriticalNonzeroLight20261003
