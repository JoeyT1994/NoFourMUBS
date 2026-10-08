import CircleFullInterface
import CircleForestAssembly0034
import CircleForestChunk0141
import CircleForestChunk0142
import CircleForestChunk0143
import CircleForestChunk0144
import CircleForestChunk0145
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_971147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_971147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971147 := by
  apply coveredState_split_literal (state := state_971147) 4
    state_971148 state_971325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971148
  · exact cover_971325
#print axioms cover_971147

def state_942027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_942027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942027 := by
  apply coveredState_split_literal (state := state_942027) 3
    state_942028 state_971147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942028
  · exact cover_971147
#print axioms cover_942027

def state_971618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_971618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971618 := by
  apply coveredState_split_literal (state := state_971618) 1
    state_971619 state_971652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971619
  · exact cover_971652
#print axioms cover_971618

def state_971606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_971606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971606 := by
  apply coveredState_split_literal (state := state_971606) 0
    state_971607 state_971618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971607
  · exact cover_971618
#print axioms cover_971606

def state_971594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 9 else 27)))
theorem cover_971594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971594 := by
  apply coveredState_split_literal (state := state_971594) 3
    state_971595 state_971606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971595
  · exact cover_971606
#print axioms cover_971594

def state_971593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 27)))
theorem cover_971593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971593 := by
  apply coveredState_split_literal (state := state_971593) 2
    state_971594 state_971711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971594
  · exact cover_971711
#print axioms cover_971593

def state_971543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_971543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971543 := by
  apply coveredState_split_literal (state := state_971543) 4
    state_971544 state_971593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971544
  · exact cover_971593
#print axioms cover_971543

def state_971503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_971503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971503 := by
  apply coveredState_split_literal (state := state_971503) 1
    state_971504 state_971543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971504
  · exact cover_971543
#print axioms cover_971503

def state_971833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_971833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971833 := by
  apply coveredState_split_literal (state := state_971833) 2
    state_971834 state_971889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971834
  · exact cover_971889
#print axioms cover_971833

def state_971967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 55)))
theorem cover_971967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971967 := by
  apply coveredState_split_literal (state := state_971967) 0
    state_971968 state_972011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971968
  · exact cover_972011
#print axioms cover_971967

def state_971947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 27)))
theorem cover_971947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971947 := by
  apply coveredState_split_literal (state := state_971947) 4
    state_971948 state_971967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971948
  · exact cover_971967
#print axioms cover_971947

def state_971917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 19 else 27)))
theorem cover_971917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971917 := by
  apply coveredState_split_literal (state := state_971917) 3
    state_971918 state_971947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971918
  · exact cover_971947
#print axioms cover_971917

def state_972052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 57 else (if j.val < 4 then 19 else 27)))
theorem cover_972052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972052 := by
  apply coveredState_split_literal (state := state_972052) 3
    state_972053 state_972058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972053
  · exact cover_972058
#print axioms cover_972052

def state_971916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_971916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971916 := by
  apply coveredState_split_literal (state := state_971916) 2
    state_971917 state_972052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971917
  · exact cover_972052
#print axioms cover_971916

def state_971832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_971832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971832 := by
  apply coveredState_split_literal (state := state_971832) 1
    state_971833 state_971916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971833
  · exact cover_971916
#print axioms cover_971832

def state_971831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_971831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971831 := by
  apply coveredState_split_literal (state := state_971831) 0
    state_971832 state_972121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971832
  · exact cover_972121
#print axioms cover_971831

def state_971811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 9 else 27)))
theorem cover_971811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971811 := by
  apply coveredState_split_literal (state := state_971811) 3
    state_971812 state_971831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971812
  · exact cover_971831
#print axioms cover_971811

def state_971810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 27)))
theorem cover_971810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971810 := by
  apply coveredState_split_literal (state := state_971810) 2
    state_971811 state_972156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971811
  · exact cover_972156
#print axioms cover_971810

def state_971788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_971788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971788 := by
  apply coveredState_split_literal (state := state_971788) 4
    state_971789 state_971810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971789
  · exact cover_971810
#print axioms cover_971788

def state_971726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_971726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971726 := by
  apply coveredState_split_literal (state := state_971726) 1
    state_971727 state_971788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971727
  · exact cover_971788
#print axioms cover_971726

def state_971502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_971502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971502 := by
  apply coveredState_split_literal (state := state_971502) 0
    state_971503 state_971726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971503
  · exact cover_971726
#print axioms cover_971502

def state_971492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 13)))
theorem cover_971492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971492 := by
  apply coveredState_split_literal (state := state_971492) 3
    state_971493 state_971502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971493
  · exact cover_971502
#print axioms cover_971492

def state_971491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
theorem cover_971491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971491 := by
  apply coveredState_split_literal (state := state_971491) 2
    state_971492 state_972185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971492
  · exact cover_972185
#print axioms cover_971491

def state_971465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_971465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971465 := by
  apply coveredState_split_literal (state := state_971465) 4
    state_971466 state_971491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971466
  · exact cover_971491
#print axioms cover_971465

def state_972266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 27)))
theorem cover_972266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972266 := by
  apply coveredState_split_literal (state := state_972266) 4
    state_972267 state_972274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972267
  · exact cover_972274
#print axioms cover_972266

def state_972260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 56 else (if j.val < 4 then 19 else 27)))
theorem cover_972260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972260 := by
  apply coveredState_split_literal (state := state_972260) 3
    state_972261 state_972266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972261
  · exact cover_972266
#print axioms cover_972260

def state_972259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_972259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972259 := by
  apply coveredState_split_literal (state := state_972259) 2
    state_972260 state_972335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972260
  · exact cover_972335
#print axioms cover_972259

def state_972258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_972258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972258 := by
  apply coveredState_split_literal (state := state_972258) 1
    state_972259 state_972342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972259
  · exact cover_972342
#print axioms cover_972258

def state_972257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
theorem cover_972257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972257 := by
  apply coveredState_split_literal (state := state_972257) 0
    state_972258 state_972351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972258
  · exact cover_972351
#print axioms cover_972257

def state_972255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 9 else 27)))
theorem cover_972255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972255 := by
  apply coveredState_split_literal (state := state_972255) 3
    state_972256 state_972257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972256
  · exact cover_972257
#print axioms cover_972255

def state_972254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 27)))
theorem cover_972254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972254 := by
  apply coveredState_split_literal (state := state_972254) 2
    state_972255 state_972368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972255
  · exact cover_972368
#print axioms cover_972254

def state_972252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_972252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972252 := by
  apply coveredState_split_literal (state := state_972252) 4
    state_972253 state_972254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972253
  · exact cover_972254
#print axioms cover_972252
end Mub6.Numerical.CircleFullD0.Forest
