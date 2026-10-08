import CircleFullInterface
import CircleForestAssembly0067
import CircleForestChunk0270
import CircleForestChunk0271
import CircleForestChunk0272
import CircleForestChunk0273
import CircleForestChunk0274
import CircleForestChunk0275
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_140638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
theorem cover_140638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140638 := by
  apply coveredState_split_literal (state := state_140638) 1
    state_140639 state_140690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140639
  · exact cover_140690
#print axioms cover_140638

def state_140626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_140626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140626 := by
  apply coveredState_split_literal (state := state_140626) 2
    state_140627 state_140638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140627
  · exact cover_140638
#print axioms cover_140626

def state_140616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_140616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140616 := by
  apply coveredState_split_literal (state := state_140616) 0
    state_140617 state_140626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140617
  · exact cover_140626
#print axioms cover_140616

def state_140504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_140504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140504 := by
  apply coveredState_split_literal (state := state_140504) 4
    state_140505 state_140616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140505
  · exact cover_140616
#print axioms cover_140504

def state_140492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_140492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140492 := by
  apply coveredState_split_literal (state := state_140492) 3
    state_140493 state_140504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140493
  · exact cover_140504
#print axioms cover_140492

def state_140491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_140491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140491 := by
  apply coveredState_split_literal (state := state_140491) 1
    state_140492 state_140705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140492
  · exact cover_140705
#print axioms cover_140491

def state_140455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_140455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140455 := by
  apply coveredState_split_literal (state := state_140455) 2
    state_140456 state_140491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140456
  · exact cover_140491
#print axioms cover_140455

def state_140411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_140411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140411 := by
  apply coveredState_split_literal (state := state_140411) 0
    state_140412 state_140455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140412
  · exact cover_140455
#print axioms cover_140411

def state_140359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_140359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140359 := by
  apply coveredState_split_literal (state := state_140359) 4
    state_140360 state_140411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140360
  · exact cover_140411
#print axioms cover_140359

def state_140783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 6)))
theorem cover_140783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140783 := by
  apply coveredState_split_literal (state := state_140783) 3
    state_140784 state_140819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140784
  · exact cover_140819
#print axioms cover_140783

def state_140763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_140763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140763 := by
  apply coveredState_split_literal (state := state_140763) 2
    state_140764 state_140783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140764
  · exact cover_140783
#print axioms cover_140763

def state_140723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_140723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140723 := by
  apply coveredState_split_literal (state := state_140723) 0
    state_140724 state_140763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140724
  · exact cover_140763
#print axioms cover_140723

def state_140929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 29)))
theorem cover_140929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140929 := by
  apply coveredState_split_literal (state := state_140929) 0
    state_140930 state_140971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140930
  · exact cover_140971
#print axioms cover_140929

def state_140913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 14)))
theorem cover_140913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140913 := by
  apply coveredState_split_literal (state := state_140913) 4
    state_140914 state_140929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140914
  · exact cover_140929
#print axioms cover_140913

def state_140912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 14)))
theorem cover_140912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140912 := by
  apply coveredState_split_literal (state := state_140912) 1
    state_140913 state_141034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140913
  · exact cover_141034
#print axioms cover_140912

def state_140911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 14)))
theorem cover_140911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140911 := by
  apply coveredState_split_literal (state := state_140911) 3
    state_140912 state_141063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140912
  · exact cover_141063
#print axioms cover_140911

def state_140897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 14)))
theorem cover_140897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140897 := by
  apply coveredState_split_literal (state := state_140897) 2
    state_140898 state_140911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140898
  · exact cover_140911
#print axioms cover_140897

def state_140865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 14)))
theorem cover_140865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140865 := by
  apply coveredState_split_literal (state := state_140865) 0
    state_140866 state_140897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140866
  · exact cover_140897
#print axioms cover_140865

def state_140864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
theorem cover_140864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140864 := by
  apply coveredState_split_literal (state := state_140864) 4
    state_140865 state_141088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140865
  · exact cover_141088
#print axioms cover_140864

def state_140863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
theorem cover_140863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140863 := by
  apply coveredState_split_literal (state := state_140863) 1
    state_140864 state_141141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140864
  · exact cover_141141
#print axioms cover_140863

def state_140862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
theorem cover_140862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140862 := by
  apply coveredState_split_literal (state := state_140862) 3
    state_140863 state_141176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140863
  · exact cover_141176
#print axioms cover_140862

def state_140856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_140856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140856 := by
  apply coveredState_split_literal (state := state_140856) 2
    state_140857 state_140862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140857
  · exact cover_140862
#print axioms cover_140856

def state_140848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_140848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140848 := by
  apply coveredState_split_literal (state := state_140848) 0
    state_140849 state_140856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140849
  · exact cover_140856
#print axioms cover_140848

def state_140722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_140722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140722 := by
  apply coveredState_split_literal (state := state_140722) 4
    state_140723 state_140848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140723
  · exact cover_140848
#print axioms cover_140722

def state_140358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_140358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140358 := by
  apply coveredState_split_literal (state := state_140358) 3
    state_140359 state_140722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140359
  · exact cover_140722
#print axioms cover_140358

def state_141226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 7)))
theorem cover_141226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141226 := by
  apply coveredState_split_literal (state := state_141226) 4
    state_141227 state_141266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141227
  · exact cover_141266
#print axioms cover_141226

def state_141224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 7)))
theorem cover_141224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141224 := by
  apply coveredState_split_literal (state := state_141224) 3
    state_141225 state_141226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141225
  · exact cover_141226
#print axioms cover_141224

def state_141223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_141223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141223 := by
  apply coveredState_split_literal (state := state_141223) 2
    state_141224 state_141315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141224
  · exact cover_141315
#print axioms cover_141223

def state_141222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_141222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141222 := by
  apply coveredState_split_literal (state := state_141222) 1
    state_141223 state_141316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141223
  · exact cover_141316
#print axioms cover_141222

def state_141208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_141208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141208 := by
  apply coveredState_split_literal (state := state_141208) 0
    state_141209 state_141222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141209
  · exact cover_141222
#print axioms cover_141208

def state_141198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_141198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141198 := by
  apply coveredState_split_literal (state := state_141198) 4
    state_141199 state_141208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141199
  · exact cover_141208
#print axioms cover_141198

def state_141479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_141479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141479 := by
  apply coveredState_split_literal (state := state_141479) 1
    state_141480 state_141521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141480
  · exact cover_141521
#print axioms cover_141479
end Mub6.Numerical.CircleFullPrototype.Forest
