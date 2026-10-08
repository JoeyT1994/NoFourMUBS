import D0FullInterface
import D0ForestAssembly0155
import D0ForestChunk0597
import D0ForestChunk0598
import D0ForestChunk0599
import D0ForestChunk0600
import D0ForestChunk0601
import D0ForestChunk0602
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1331889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 23 else 24)))
theorem cover_1331889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331889 := by
  apply coveredState_split_literal (state := state_1331889) 3
    state_1331890 state_1332083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331890
  · exact cover_1332083
#print axioms cover_1331889

def state_1331888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
theorem cover_1331888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331888 := by
  apply coveredState_split_literal (state := state_1331888) 2
    state_1331889 state_1332186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331889
  · exact cover_1332186
#print axioms cover_1331888

def state_1331887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
theorem cover_1331887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331887 := by
  apply coveredState_split_literal (state := state_1331887) 1
    state_1331888 state_1332235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331888
  · exact cover_1332235
#print axioms cover_1331887

def state_1332269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 50)))
theorem cover_1332269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332269 := by
  apply coveredState_split_literal (state := state_1332269) 2
    state_1332270 state_1332317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332270
  · exact cover_1332317
#print axioms cover_1332269

def state_1332268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 50)))
theorem cover_1332268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332268 := by
  apply coveredState_split_literal (state := state_1332268) 1
    state_1332269 state_1332364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332269
  · exact cover_1332364
#print axioms cover_1332268

def state_1332267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 25)))
theorem cover_1332267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332267 := by
  apply coveredState_split_literal (state := state_1332267) 4
    state_1332268 state_1332415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332268
  · exact cover_1332415
#print axioms cover_1332267

def state_1332249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 25)))
theorem cover_1332249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332249 := by
  apply coveredState_split_literal (state := state_1332249) 0
    state_1332250 state_1332267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332250
  · exact cover_1332267
#print axioms cover_1332249

def state_1332502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 61 else (if j.val < 4 then 47 else 50)))
theorem cover_1332502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332502 := by
  apply coveredState_split_literal (state := state_1332502) 3
    state_1332503 state_1332564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332503
  · exact cover_1332564
#print axioms cover_1332502

def state_1332446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
theorem cover_1332446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332446 := by
  apply coveredState_split_literal (state := state_1332446) 2
    state_1332447 state_1332502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332447
  · exact cover_1332502
#print axioms cover_1332446

def state_1332577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 100)))
theorem cover_1332577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332577 := by
  apply coveredState_split_literal (state := state_1332577) 0
    state_1332578 state_1332591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332578
  · exact cover_1332591
#print axioms cover_1332577

def state_1332666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 101)))
theorem cover_1332666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332666 := by
  apply coveredState_split_literal (state := state_1332666) 1
    state_1332667 state_1332730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332667
  · exact cover_1332730
#print axioms cover_1332666

def state_1332646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 101)))
theorem cover_1332646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332646 := by
  apply coveredState_split_literal (state := state_1332646) 0
    state_1332647 state_1332666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332647
  · exact cover_1332666
#print axioms cover_1332646

def state_1332576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 50)))
theorem cover_1332576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332576 := by
  apply coveredState_split_literal (state := state_1332576) 4
    state_1332577 state_1332646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332577
  · exact cover_1332646
#print axioms cover_1332576

def state_1332575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 47 else 50)))
theorem cover_1332575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332575 := by
  apply coveredState_split_literal (state := state_1332575) 3
    state_1332576 state_1332731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332576
  · exact cover_1332731
#print axioms cover_1332575

def state_1332573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
theorem cover_1332573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332573 := by
  apply coveredState_split_literal (state := state_1332573) 2
    state_1332574 state_1332575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332574
  · exact cover_1332575
#print axioms cover_1332573

def state_1332445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
theorem cover_1332445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332445 := by
  apply coveredState_split_literal (state := state_1332445) 1
    state_1332446 state_1332573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332446
  · exact cover_1332573
#print axioms cover_1332445

def state_1332444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 25)))
theorem cover_1332444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332444 := by
  apply coveredState_split_literal (state := state_1332444) 4
    state_1332445 state_1332772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332445
  · exact cover_1332772
#print axioms cover_1332444

def state_1332428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 25)))
theorem cover_1332428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332428 := by
  apply coveredState_split_literal (state := state_1332428) 0
    state_1332429 state_1332444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332429
  · exact cover_1332444
#print axioms cover_1332428

def state_1332248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 23 else 25)))
theorem cover_1332248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332248 := by
  apply coveredState_split_literal (state := state_1332248) 3
    state_1332249 state_1332428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332249
  · exact cover_1332428
#print axioms cover_1332248

def state_1332978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 124 else (if j.val < 4 then 94 else 101)))
theorem cover_1332978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332978 := by
  apply coveredState_split_literal (state := state_1332978) 3
    state_1332979 state_1332994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332979
  · exact cover_1332994
#print axioms cover_1332978

def state_1332977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 101)))
theorem cover_1332977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332977 := by
  apply coveredState_split_literal (state := state_1332977) 2
    state_1332978 state_1333045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332978
  · exact cover_1333045
#print axioms cover_1332977

def state_1332976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 101)))
theorem cover_1332976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332976 := by
  apply coveredState_split_literal (state := state_1332976) 1
    state_1332977 state_1333070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332977
  · exact cover_1333070
#print axioms cover_1332976

def state_1332952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 101)))
theorem cover_1332952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332952 := by
  apply coveredState_split_literal (state := state_1332952) 0
    state_1332953 state_1332976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332953
  · exact cover_1332976
#print axioms cover_1332952

def state_1332930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 50)))
theorem cover_1332930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332930 := by
  apply coveredState_split_literal (state := state_1332930) 4
    state_1332931 state_1332952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332931
  · exact cover_1332952
#print axioms cover_1332930

def state_1333157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 101)))
theorem cover_1333157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333157 := by
  apply coveredState_split_literal (state := state_1333157) 2
    state_1333158 state_1333189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333158
  · exact cover_1333189
#print axioms cover_1333157

def state_1333107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 101)))
theorem cover_1333107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333107 := by
  apply coveredState_split_literal (state := state_1333107) 1
    state_1333108 state_1333157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333108
  · exact cover_1333157
#print axioms cover_1333107

def state_1333101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 101)))
theorem cover_1333101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333101 := by
  apply coveredState_split_literal (state := state_1333101) 0
    state_1333102 state_1333107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333102
  · exact cover_1333107
#print axioms cover_1333101

def state_1333095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 50)))
theorem cover_1333095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333095 := by
  apply coveredState_split_literal (state := state_1333095) 4
    state_1333096 state_1333101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333096
  · exact cover_1333101
#print axioms cover_1333095

def state_1332929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 47 else 50)))
theorem cover_1332929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332929 := by
  apply coveredState_split_literal (state := state_1332929) 3
    state_1332930 state_1333095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332930
  · exact cover_1333095
#print axioms cover_1332929

def state_1332928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 50)))
theorem cover_1332928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332928 := by
  apply coveredState_split_literal (state := state_1332928) 2
    state_1332929 state_1333236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332929
  · exact cover_1333236
#print axioms cover_1332928

def state_1332898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 50)))
theorem cover_1332898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332898 := by
  apply coveredState_split_literal (state := state_1332898) 1
    state_1332899 state_1332928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332899
  · exact cover_1332928
#print axioms cover_1332898

def state_1333296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 102)))
theorem cover_1333296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333296 := by
  apply coveredState_split_literal (state := state_1333296) 1
    state_1333297 state_1333312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333297
  · exact cover_1333312
#print axioms cover_1333296
end Mub6.Numerical.CircleFullD0.Forest
