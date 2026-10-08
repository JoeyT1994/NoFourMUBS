import KarlssonCoreBoxes

namespace Mub6.Classification.KarlssonCompiler
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.KarlssonCover
noncomputable section
set_option maxHeartbeats 1600000

def rightBox (z : RationalRectangle) : Boxes2 :=
  !![boxPoint 1 0,boxPoint 1 0;z,boxNeg z]
def leftBox (z : RationalRectangle) : Boxes2 :=
  !![boxPoint 1 0,z;boxPoint 1 0,boxNeg z]
def blockBox (l : RationalRectangle) (a : Boxes2) (r : RationalRectangle) : Boxes2 :=
  scale2 (boxPoint (1/2) 0) (mul2 (mul2 (leftBox l) a) (rightBox r))

theorem rightBox_sound {b : RationalRectangle} {z : ℂ} (hz : MemRectangle b z) :
    Mem2 (rightBox b) (karlssonZRight z) := by
  intro i j
  fin_cases i <;> fin_cases j
  · exact realPoint_mem 1
  · exact realPoint_mem 1
  · exact hz
  · exact mem_boxNeg hz
theorem leftBox_sound {b : RationalRectangle} {z : ℂ} (hz : MemRectangle b z) :
    Mem2 (leftBox b) (karlssonZLeft z) := by
  intro i j
  fin_cases i <;> fin_cases j
  · exact realPoint_mem 1
  · exact hz
  · exact realPoint_mem 1
  · exact mem_boxNeg hz
theorem blockBox_sound {l r : RationalRectangle} {a : Boxes2} {L R : ℂ} {A : Mat2}
    (hl : MemRectangle l L) (ha : Mem2 a A) (hr : MemRectangle r R) :
    Mem2 (blockBox l a r) (karlssonBlockProduct L A R) := by
  apply scale2_sound
  · simpa using realPoint_mem (1/2)
  · exact mul2_sound (mul2_sound (leftBox_sound hl) ha) (rightBox_sound hr)

def rawLiteral (A B : Mat2) (z : Fin 4 → ℂ) : Mub6.BasisMatrix :=
  let a := karlssonBlockProduct (z 2) A (z 0)
  let b := karlssonBlockProduct (z 2) B (z 1)
  let c := karlssonBlockProduct (z 3) B (z 0)
  let d := karlssonBlockProduct (z 3) A (z 1)
  ![![1,1,1,1,1,1],![1,-1,z 0,-z 0,z 1,-z 1],
    ![1,z 2,a 0 0,a 0 1,b 0 0,b 0 1],![1,-z 2,a 1 0,a 1 1,b 1 0,b 1 1],
    ![1,z 3,c 0 0,c 0 1,d 0 0,d 0 1],![1,-z 3,c 1 0,c 1 1,d 1 0,d 1 1]]

theorem raw_to_literal (t : ℝ) (p : ℂ) (z : Fin 4 → ℂ) :
    ClassificationCover.toNumerical (karlssonRawMatrix t p (z 0) (z 1) (z 2) (z 3))=
    rawLiteral (karlssonCoreA t p) (karlssonCoreB t p) z := by
  funext i j
  fin_cases i <;> fin_cases j <;> rfl

theorem raw_phases_unit {t : ℝ} {p : ℂ} {z : Fin 4 → ℂ}
    (hH : IsHadamard (karlssonRawMatrix t p (z 0) (z 1) (z 2) (z 3))) :
    ∀ i, normSq (z i)=1 := by
  have h := (ClassificationCover.numerical_of_public hH).1
  rw [raw_to_literal] at h
  intro i
  fin_cases i
  · exact h 1 2
  · exact h 1 4
  · exact h 2 1
  · exact h 4 1

def rawBoxes (A B : Boxes2) (z : Fin 4 → RationalRectangle) : CarrierRegion :=
  let a := blockBox (z 2) A (z 0)
  let b := blockBox (z 2) B (z 1)
  let c := blockBox (z 3) B (z 0)
  let d := blockBox (z 3) A (z 1)
  let one := boxPoint 1 0
  ![![one,one,one,one,one,one],![one,boxPoint (-1) 0,z 0,boxNeg (z 0),z 1,boxNeg (z 1)],
    ![one,z 2,a 0 0,a 0 1,b 0 0,b 0 1],![one,boxNeg (z 2),a 1 0,a 1 1,b 1 0,b 1 1],
    ![one,z 3,c 0 0,c 0 1,d 0 0,d 0 1],![one,boxNeg (z 3),c 1 0,c 1 1,d 1 0,d 1 1]]

theorem rawBoxes_sound {A B : Boxes2} {z : Fin 4 → RationalRectangle}
    {a b : Mat2} {w : Fin 4 → ℂ} (ha : Mem2 A a) (hb : Mem2 B b)
    (hw : ∀ i, MemRectangle (z i) (w i)) : CarrierBox (rawBoxes A B z) (rawLiteral a b w) := by
  have hA := blockBox_sound (hw 2) ha (hw 0)
  have hB := blockBox_sound (hw 2) hb (hw 1)
  have hC := blockBox_sound (hw 3) hb (hw 0)
  have hD := blockBox_sound (hw 3) ha (hw 1)
  intro i j
  fin_cases i <;> fin_cases j <;> first
    | exact realPoint_mem 1
    | exact realPoint_mem (-1)
    | exact hw 0
    | exact hw 1
    | exact hw 2
    | exact hw 3
    | exact mem_boxNeg (hw 0)
    | exact mem_boxNeg (hw 1)
    | exact mem_boxNeg (hw 2)
    | exact mem_boxNeg (hw 3)
    | exact hA 0 0
    | exact hA 0 1
    | exact hA 1 0
    | exact hA 1 1
    | exact hB 0 0
    | exact hB 0 1
    | exact hB 1 0
    | exact hB 1 1
    | exact hC 0 0
    | exact hC 0 1
    | exact hC 1 0
    | exact hC 1 1
    | exact hD 0 0
    | exact hD 0 1
    | exact hD 1 0
    | exact hD 1 1

def clipCarrier (b : CarrierRegion) : CarrierRegion := fun i j => clipUnit (b i j)
theorem clipCarrier_sound {b : CarrierRegion} {H : Mub6.BasisMatrix}
    (hb : CarrierBox b H) (hH : ∀ i j, normSq (H i j)=1) : CarrierBox (clipCarrier b) H :=
  fun i j => clipUnit_sound (hb i j) (hH i j)

#print axioms raw_to_literal
#print axioms raw_phases_unit
#print axioms rawBoxes_sound
#print axioms clipCarrier_sound
end
end Mub6.Classification.KarlssonCompiler
