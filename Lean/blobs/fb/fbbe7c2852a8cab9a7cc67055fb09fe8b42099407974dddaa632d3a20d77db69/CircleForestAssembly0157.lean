import CircleFullInterface
import CircleForestAssembly0156
import CircleForestChunk0615
import CircleForestChunk0616
import CircleForestChunk0617
import CircleForestChunk0618
import CircleForestChunk0619
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_386438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_386438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386438 := by
  apply coveredState_split_literal (state := state_386438) 3
    state_386439 state_386482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386439
  · exact cover_386482
#print axioms cover_386438

def state_386584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_386584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386584 := by
  apply coveredState_split_literal (state := state_386584) 2
    state_386585 state_386646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386585
  · exact cover_386646
#print axioms cover_386584

def state_386538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_386538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386538 := by
  apply coveredState_split_literal (state := state_386538) 1
    state_386539 state_386584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386539
  · exact cover_386584
#print axioms cover_386538

def state_386506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_386506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386506 := by
  apply coveredState_split_literal (state := state_386506) 4
    state_386507 state_386538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386507
  · exact cover_386538
#print axioms cover_386506

def state_386505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_386505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386505 := by
  apply coveredState_split_literal (state := state_386505) 3
    state_386506 state_386703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386506
  · exact cover_386703
#print axioms cover_386505

def state_386437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_386437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386437 := by
  apply coveredState_split_literal (state := state_386437) 2
    state_386438 state_386505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386438
  · exact cover_386505
#print axioms cover_386437

def state_386813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 11)))
theorem cover_386813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386813 := by
  apply coveredState_split_literal (state := state_386813) 0
    state_386814 state_386829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386814
  · exact cover_386829
#print axioms cover_386813

def state_386801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 5)))
theorem cover_386801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386801 := by
  apply coveredState_split_literal (state := state_386801) 4
    state_386802 state_386813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386802
  · exact cover_386813
#print axioms cover_386801

def state_386773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_386773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386773 := by
  apply coveredState_split_literal (state := state_386773) 3
    state_386774 state_386801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386774
  · exact cover_386801
#print axioms cover_386773

def state_386771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_386771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386771 := by
  apply coveredState_split_literal (state := state_386771) 2
    state_386772 state_386773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386772
  · exact cover_386773
#print axioms cover_386771

def state_386729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_386729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386729 := by
  apply coveredState_split_literal (state := state_386729) 4
    state_386730 state_386771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386730
  · exact cover_386771
#print axioms cover_386729

def state_386904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_386904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386904 := by
  apply coveredState_split_literal (state := state_386904) 0
    state_386905 state_386928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386905
  · exact cover_386928
#print axioms cover_386904

def state_386900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_386900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386900 := by
  apply coveredState_split_literal (state := state_386900) 4
    state_386901 state_386904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386901
  · exact cover_386904
#print axioms cover_386900

def state_386882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_386882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386882 := by
  apply coveredState_split_literal (state := state_386882) 2
    state_386883 state_386900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386883
  · exact cover_386900
#print axioms cover_386882

def state_386880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_386880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386880 := by
  apply coveredState_split_literal (state := state_386880) 4
    state_386881 state_386882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386881
  · exact cover_386882
#print axioms cover_386880

def state_386728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_386728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386728 := by
  apply coveredState_split_literal (state := state_386728) 3
    state_386729 state_386880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386729
  · exact cover_386880
#print axioms cover_386728

def state_386722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_386722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386722 := by
  apply coveredState_split_literal (state := state_386722) 2
    state_386723 state_386728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386723
  · exact cover_386728
#print axioms cover_386722

def state_386436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_386436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386436 := by
  apply coveredState_split_literal (state := state_386436) 1
    state_386437 state_386722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386437
  · exact cover_386722
#print axioms cover_386436

def state_386072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_386072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386072 := by
  apply coveredState_split_literal (state := state_386072) 0
    state_386073 state_386436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386073
  · exact cover_386436
#print axioms cover_386072

def state_387032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_387032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387032 := by
  apply coveredState_split_literal (state := state_387032) 3
    state_387033 state_387044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387033
  · exact cover_387044
#print axioms cover_387032

def state_387026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_387026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387026 := by
  apply coveredState_split_literal (state := state_387026) 2
    state_387027 state_387032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387027
  · exact cover_387032
#print axioms cover_387026

def state_386992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_386992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386992 := by
  apply coveredState_split_literal (state := state_386992) 1
    state_386993 state_387026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386993
  · exact cover_387026
#print axioms cover_386992

def state_386991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_386991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386991 := by
  apply coveredState_split_literal (state := state_386991) 0
    state_386992 state_387099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386992
  · exact cover_387099
#print axioms cover_386991

def state_386990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_386990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386990 := by
  apply coveredState_split_literal (state := state_386990) 4
    state_386991 state_387162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386991
  · exact cover_387162
#print axioms cover_386990

def state_386989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_386989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386989 := by
  apply coveredState_split_literal (state := state_386989) 3
    state_386990 state_387173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386990
  · exact cover_387173
#print axioms cover_386989

def state_386971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_386971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386971 := by
  apply coveredState_split_literal (state := state_386971) 2
    state_386972 state_386989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386972
  · exact cover_386989
#print axioms cover_386971

def state_387238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_387238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387238 := by
  apply coveredState_split_literal (state := state_387238) 3
    state_387239 state_387278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387239
  · exact cover_387278
#print axioms cover_387238

def state_387230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_387230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387230 := by
  apply coveredState_split_literal (state := state_387230) 2
    state_387231 state_387238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387231
  · exact cover_387238
#print axioms cover_387230

def state_386970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_386970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386970 := by
  apply coveredState_split_literal (state := state_386970) 1
    state_386971 state_387230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386971
  · exact cover_387230
#print axioms cover_386970

def state_387345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_387345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387345 := by
  apply coveredState_split_literal (state := state_387345) 4
    state_387346 state_387405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387346
  · exact cover_387405
#print axioms cover_387345

def state_387344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_387344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387344 := by
  apply coveredState_split_literal (state := state_387344) 3
    state_387345 state_387416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387345
  · exact cover_387416
#print axioms cover_387344

def state_387336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_387336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387336 := by
  apply coveredState_split_literal (state := state_387336) 2
    state_387337 state_387344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387337
  · exact cover_387344
#print axioms cover_387336
end Mub6.Numerical.CircleFullPrototype.Forest
