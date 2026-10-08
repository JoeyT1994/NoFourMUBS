import CircleFullInterface
import CircleForestAssembly0509
import CircleForestChunk2004
import CircleForestChunk2005
import CircleForestChunk2006
import CircleForestChunk2007
import CircleForestChunk2008
import CircleForestChunk2009
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2561688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2561688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561688 := by
  apply coveredState_split_literal (state := state_2561688) 1
    state_2561689 state_2561820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561689
  · exact cover_2561820
#print axioms cover_2561688

def state_2561624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2561624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561624 := by
  apply coveredState_split_literal (state := state_2561624) 0
    state_2561625 state_2561688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561625
  · exact cover_2561688
#print axioms cover_2561624

def state_2561484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2561484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561484 := by
  apply coveredState_split_literal (state := state_2561484) 4
    state_2561485 state_2561624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561485
  · exact cover_2561624
#print axioms cover_2561484

def state_2561902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2561902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561902 := by
  apply coveredState_split_literal (state := state_2561902) 0
    state_2561903 state_2561928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561903
  · exact cover_2561928
#print axioms cover_2561902

def state_2562052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_2562052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562052 := by
  apply coveredState_split_literal (state := state_2562052) 3
    state_2562053 state_2562098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562053
  · exact cover_2562098
#print axioms cover_2562052

def state_2562034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2562034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562034 := by
  apply coveredState_split_literal (state := state_2562034) 2
    state_2562035 state_2562052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562035
  · exact cover_2562052
#print axioms cover_2562034

def state_2562033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2562033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562033 := by
  apply coveredState_split_literal (state := state_2562033) 1
    state_2562034 state_2562119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562034
  · exact cover_2562119
#print axioms cover_2562033

def state_2561973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2561973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561973 := by
  apply coveredState_split_literal (state := state_2561973) 0
    state_2561974 state_2562033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561974
  · exact cover_2562033
#print axioms cover_2561973

def state_2561901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2561901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561901 := by
  apply coveredState_split_literal (state := state_2561901) 4
    state_2561902 state_2561973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561902
  · exact cover_2561973
#print axioms cover_2561901

def state_2561483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2561483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561483 := by
  apply coveredState_split_literal (state := state_2561483) 3
    state_2561484 state_2561901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561484
  · exact cover_2561901
#print axioms cover_2561483

def state_2562245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_2562245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562245 := by
  apply coveredState_split_literal (state := state_2562245) 4
    state_2562246 state_2562277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562246
  · exact cover_2562277
#print axioms cover_2562245

def state_2562209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_2562209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562209 := by
  apply coveredState_split_literal (state := state_2562209) 3
    state_2562210 state_2562245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562210
  · exact cover_2562245
#print axioms cover_2562209

def state_2562208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_2562208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562208 := by
  apply coveredState_split_literal (state := state_2562208) 1
    state_2562209 state_2562310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562209
  · exact cover_2562310
#print axioms cover_2562208

def state_2562202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_2562202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562202 := by
  apply coveredState_split_literal (state := state_2562202) 4
    state_2562203 state_2562208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562203
  · exact cover_2562208
#print axioms cover_2562202

def state_2562194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_2562194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562194 := by
  apply coveredState_split_literal (state := state_2562194) 3
    state_2562195 state_2562202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562195
  · exact cover_2562202
#print axioms cover_2562194

def state_2562174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2562174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562174 := by
  apply coveredState_split_literal (state := state_2562174) 2
    state_2562175 state_2562194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562175
  · exact cover_2562194
#print axioms cover_2562174

def state_2562173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2562173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562173 := by
  apply coveredState_split_literal (state := state_2562173) 1
    state_2562174 state_2562327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562174
  · exact cover_2562327
#print axioms cover_2562173

def state_2562345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2562345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562345 := by
  apply coveredState_split_literal (state := state_2562345) 2
    state_2562346 state_2562371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562346
  · exact cover_2562371
#print axioms cover_2562345

def state_2562344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2562344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562344 := by
  apply coveredState_split_literal (state := state_2562344) 1
    state_2562345 state_2562410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562345
  · exact cover_2562410
#print axioms cover_2562344

def state_2562172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2562172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562172 := by
  apply coveredState_split_literal (state := state_2562172) 0
    state_2562173 state_2562344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562173
  · exact cover_2562344
#print axioms cover_2562172

def state_2562480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2562480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562480 := by
  apply coveredState_split_literal (state := state_2562480) 2
    state_2562481 state_2562526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562481
  · exact cover_2562526
#print axioms cover_2562480

def state_2562479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2562479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562479 := by
  apply coveredState_split_literal (state := state_2562479) 1
    state_2562480 state_2562551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562480
  · exact cover_2562551
#print axioms cover_2562479

def state_2562419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2562419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562419 := by
  apply coveredState_split_literal (state := state_2562419) 0
    state_2562420 state_2562479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562420
  · exact cover_2562479
#print axioms cover_2562419

def state_2562171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2562171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562171 := by
  apply coveredState_split_literal (state := state_2562171) 4
    state_2562172 state_2562419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562172
  · exact cover_2562419
#print axioms cover_2562171

def state_2562656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_2562656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562656 := by
  apply coveredState_split_literal (state := state_2562656) 4
    state_2562657 state_2562678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562657
  · exact cover_2562678
#print axioms cover_2562656

def state_2562655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2562655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562655 := by
  apply coveredState_split_literal (state := state_2562655) 3
    state_2562656 state_2562723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562656
  · exact cover_2562723
#print axioms cover_2562655

def state_2562654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2562654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562654 := by
  apply coveredState_split_literal (state := state_2562654) 1
    state_2562655 state_2562756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562655
  · exact cover_2562756
#print axioms cover_2562654

def state_2562648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_2562648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562648 := by
  apply coveredState_split_literal (state := state_2562648) 4
    state_2562649 state_2562654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562649
  · exact cover_2562654
#print axioms cover_2562648

def state_2562647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_2562647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562647 := by
  apply coveredState_split_literal (state := state_2562647) 3
    state_2562648 state_2562757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562648
  · exact cover_2562757
#print axioms cover_2562647

def state_2562613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562613 := by
  apply coveredState_split_literal (state := state_2562613) 2
    state_2562614 state_2562647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562614
  · exact cover_2562647
#print axioms cover_2562613

def state_2562612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2562612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562612 := by
  apply coveredState_split_literal (state := state_2562612) 1
    state_2562613 state_2562772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562613
  · exact cover_2562772
#print axioms cover_2562612

def state_2562808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
theorem cover_2562808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562808 := by
  apply coveredState_split_literal (state := state_2562808) 3
    state_2562809 state_2562820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562809
  · exact cover_2562820
#print axioms cover_2562808
end Mub6.Numerical.CircleFullD0.Forest
