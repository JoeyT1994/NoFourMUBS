import CircleFullInterface
import CircleForestAssembly0037
import CircleForestChunk0148
import CircleForestChunk0149
import CircleForestChunk0150
import CircleForestChunk0151
import CircleForestChunk0152
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_56668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_56668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56668 := by
  apply coveredState_split_literal (state := state_56668) 0
    state_56669 state_56934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56669
  · exact cover_56934
#print axioms cover_56668

def state_56318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_56318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56318 := by
  apply coveredState_split_literal (state := state_56318) 4
    state_56319 state_56668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56319
  · exact cover_56668
#print axioms cover_56318

def state_56317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_56317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56317 := by
  apply coveredState_split_literal (state := state_56317) 3
    state_56318 state_56979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56318
  · exact cover_56979
#print axioms cover_56317

def state_56992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_56992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56992 := by
  apply coveredState_split_literal (state := state_56992) 3
    state_56993 state_57050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56993
  · exact cover_57050
#print axioms cover_56992

def state_56991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_56991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56991 := by
  apply coveredState_split_literal (state := state_56991) 2
    state_56992 state_57075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56992
  · exact cover_57075
#print axioms cover_56991

def state_56990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_56990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56990 := by
  apply coveredState_split_literal (state := state_56990) 0
    state_56991 state_57086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56991
  · exact cover_57086
#print axioms cover_56990

def state_56989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_56989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56989 := by
  apply coveredState_split_literal (state := state_56989) 4
    state_56990 state_57115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56990
  · exact cover_57115
#print axioms cover_56989

def state_57182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_57182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57182 := by
  apply coveredState_split_literal (state := state_57182) 0
    state_57183 state_57192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57183
  · exact cover_57192
#print axioms cover_57182

def state_57164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_57164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57164 := by
  apply coveredState_split_literal (state := state_57164) 4
    state_57165 state_57182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57165
  · exact cover_57182
#print axioms cover_57164

def state_56988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_56988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56988 := by
  apply coveredState_split_literal (state := state_56988) 3
    state_56989 state_57164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56989
  · exact cover_57164
#print axioms cover_56988

def state_56316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_56316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56316 := by
  apply coveredState_split_literal (state := state_56316) 2
    state_56317 state_56988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56317
  · exact cover_56988
#print axioms cover_56316

def state_57293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_57293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57293 := by
  apply coveredState_split_literal (state := state_57293) 3
    state_57294 state_57355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57294
  · exact cover_57355
#print axioms cover_57293

def state_57279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_57279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57279 := by
  apply coveredState_split_literal (state := state_57279) 2
    state_57280 state_57293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57280
  · exact cover_57293
#print axioms cover_57279

def state_57261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_57261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57261 := by
  apply coveredState_split_literal (state := state_57261) 4
    state_57262 state_57279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57262
  · exact cover_57279
#print axioms cover_57261

def state_57260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_57260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57260 := by
  apply coveredState_split_literal (state := state_57260) 3
    state_57261 state_57380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57261
  · exact cover_57380
#print axioms cover_57260

def state_57259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_57259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57259 := by
  apply coveredState_split_literal (state := state_57259) 1
    state_57260 state_57387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57260
  · exact cover_57387
#print axioms cover_57259

def state_57258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_57258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57258 := by
  apply coveredState_split_literal (state := state_57258) 0
    state_57259 state_57400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57259
  · exact cover_57400
#print axioms cover_57258

def state_57505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_57505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57505 := by
  apply coveredState_split_literal (state := state_57505) 0
    state_57506 state_57545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57506
  · exact cover_57545
#print axioms cover_57505

def state_57449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_57449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57449 := by
  apply coveredState_split_literal (state := state_57449) 3
    state_57450 state_57505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57450
  · exact cover_57505
#print axioms cover_57449

def state_57448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_57448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57448 := by
  apply coveredState_split_literal (state := state_57448) 4
    state_57449 state_57580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57449
  · exact cover_57580
#print axioms cover_57448

def state_57420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_57420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57420 := by
  apply coveredState_split_literal (state := state_57420) 2
    state_57421 state_57448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57421
  · exact cover_57448
#print axioms cover_57420

def state_57419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_57419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57419 := by
  apply coveredState_split_literal (state := state_57419) 3
    state_57420 state_57589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57420
  · exact cover_57589
#print axioms cover_57419

def state_57418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_57418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57418 := by
  apply coveredState_split_literal (state := state_57418) 1
    state_57419 state_57624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57419
  · exact cover_57624
#print axioms cover_57418

def state_57417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_57417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57417 := by
  apply coveredState_split_literal (state := state_57417) 0
    state_57418 state_57643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57418
  · exact cover_57643
#print axioms cover_57417

def state_57257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_57257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57257 := by
  apply coveredState_split_literal (state := state_57257) 4
    state_57258 state_57417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57258
  · exact cover_57417
#print axioms cover_57257

def state_57256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_57256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57256 := by
  apply coveredState_split_literal (state := state_57256) 3
    state_57257 state_57670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57257
  · exact cover_57670
#print axioms cover_57256

def state_57751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_57751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57751 := by
  apply coveredState_split_literal (state := state_57751) 1
    state_57752 state_57801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57752
  · exact cover_57801
#print axioms cover_57751

def state_57750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_57750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57750 := by
  apply coveredState_split_literal (state := state_57750) 0
    state_57751 state_57826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57751
  · exact cover_57826
#print axioms cover_57750

def state_57690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_57690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57690 := by
  apply coveredState_split_literal (state := state_57690) 4
    state_57691 state_57750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57691
  · exact cover_57750
#print axioms cover_57690

def state_57689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_57689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57689 := by
  apply coveredState_split_literal (state := state_57689) 3
    state_57690 state_57887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57690
  · exact cover_57887
#print axioms cover_57689

def state_57255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_57255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57255 := by
  apply coveredState_split_literal (state := state_57255) 2
    state_57256 state_57689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57256
  · exact cover_57689
#print axioms cover_57255

def state_56315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_56315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56315 := by
  apply coveredState_split_literal (state := state_56315) 1
    state_56316 state_57255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56316
  · exact cover_57255
#print axioms cover_56315
end Mub6.Numerical.CircleFullPrototype.Forest
