import D0FullInterface
import D0ForestAssembly0129
import D0ForestAssembly0130
import D0ForestChunk0503
import D0ForestChunk0509
import D0ForestChunk0510
import D0ForestChunk0511
import D0ForestChunk0512
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1309756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1309756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309756 := by
  apply coveredState_split_literal (state := state_1309756) 2
    state_1309757 state_1310868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309757
  · exact cover_1310868
#print axioms cover_1309756

def state_1309622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1309622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309622 := by
  apply coveredState_split_literal (state := state_1309622) 1
    state_1309623 state_1309756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309623
  · exact cover_1309756
#print axioms cover_1309622

def state_1309621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1309621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309621 := by
  apply coveredState_split_literal (state := state_1309621) 4
    state_1309622 state_1310959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309622
  · exact cover_1310959
#print axioms cover_1309621

def state_1309605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1309605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309605 := by
  apply coveredState_split_literal (state := state_1309605) 3
    state_1309606 state_1309621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309606
  · exact cover_1309621
#print axioms cover_1309605

def state_1309604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1309604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309604 := by
  apply coveredState_split_literal (state := state_1309604) 2
    state_1309605 state_1310964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309605
  · exact cover_1310964
#print axioms cover_1309604

def state_1309594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1309594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309594 := by
  apply coveredState_split_literal (state := state_1309594) 1
    state_1309595 state_1309604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309595
  · exact cover_1309604
#print axioms cover_1309594

def state_1310974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1310974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310974 := by
  apply coveredState_split_literal (state := state_1310974) 2
    state_1310975 state_1311028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310975
  · exact cover_1311028
#print axioms cover_1310974

def state_1311113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1311113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311113 := by
  apply coveredState_split_literal (state := state_1311113) 2
    state_1311114 state_1311121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311114
  · exact cover_1311121
#print axioms cover_1311113

def state_1311099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1311099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311099 := by
  apply coveredState_split_literal (state := state_1311099) 3
    state_1311100 state_1311113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311100
  · exact cover_1311113
#print axioms cover_1311099

def state_1311098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1311098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311098 := by
  apply coveredState_split_literal (state := state_1311098) 4
    state_1311099 state_1311178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311099
  · exact cover_1311178
#print axioms cover_1311098

def state_1311097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1311097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311097 := by
  apply coveredState_split_literal (state := state_1311097) 2
    state_1311098 state_1311187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311098
  · exact cover_1311187
#print axioms cover_1311097

def state_1311242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
theorem cover_1311242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311242 := by
  apply coveredState_split_literal (state := state_1311242) 1
    state_1311243 state_1311294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311243
  · exact cover_1311294
#print axioms cover_1311242

def state_1311310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1311310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311310 := by
  apply coveredState_split_literal (state := state_1311310) 2
    state_1311311 state_1311316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311311
  · exact cover_1311316
#print axioms cover_1311310

def state_1311309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1311309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311309 := by
  apply coveredState_split_literal (state := state_1311309) 1
    state_1311310 state_1311379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311310
  · exact cover_1311379
#print axioms cover_1311309

def state_1311241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 24)))
theorem cover_1311241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311241 := by
  apply coveredState_split_literal (state := state_1311241) 4
    state_1311242 state_1311309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311242
  · exact cover_1311309
#print axioms cover_1311241

def state_1311239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1311239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311239 := by
  apply coveredState_split_literal (state := state_1311239) 3
    state_1311240 state_1311241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311240
  · exact cover_1311241
#print axioms cover_1311239

def state_1311238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1311238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311238 := by
  apply coveredState_split_literal (state := state_1311238) 0
    state_1311239 state_1311424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311239
  · exact cover_1311424
#print axioms cover_1311238

def state_1311237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1311237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311237 := by
  apply coveredState_split_literal (state := state_1311237) 4
    state_1311238 state_1311425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311238
  · exact cover_1311425
#print axioms cover_1311237

def state_1311235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1311235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311235 := by
  apply coveredState_split_literal (state := state_1311235) 2
    state_1311236 state_1311237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311236
  · exact cover_1311237
#print axioms cover_1311235

def state_1311234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1311234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311234 := by
  apply coveredState_split_literal (state := state_1311234) 1
    state_1311235 state_1311474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311235
  · exact cover_1311474
#print axioms cover_1311234

def state_1311232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1311232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311232 := by
  apply coveredState_split_literal (state := state_1311232) 3
    state_1311233 state_1311234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311233
  · exact cover_1311234
#print axioms cover_1311232

def state_1311231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1311231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311231 := by
  apply coveredState_split_literal (state := state_1311231) 4
    state_1311232 state_1311475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311232
  · exact cover_1311475
#print axioms cover_1311231

def state_1311512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 48)))
theorem cover_1311512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311512 := by
  apply coveredState_split_literal (state := state_1311512) 1
    state_1311513 state_1311536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311513
  · exact cover_1311536
#print axioms cover_1311512

def state_1311623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
theorem cover_1311623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311623 := by
  apply coveredState_split_literal (state := state_1311623) 3
    state_1311624 state_1311633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311624
  · exact cover_1311633
#print axioms cover_1311623

def state_1311622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
theorem cover_1311622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311622 := by
  apply coveredState_split_literal (state := state_1311622) 0
    state_1311623 state_1311692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311623
  · exact cover_1311692
#print axioms cover_1311622

def state_1311621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 49)))
theorem cover_1311621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311621 := by
  apply coveredState_split_literal (state := state_1311621) 2
    state_1311622 state_1311701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311622
  · exact cover_1311701
#print axioms cover_1311621

def state_1311587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 49)))
theorem cover_1311587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311587 := by
  apply coveredState_split_literal (state := state_1311587) 1
    state_1311588 state_1311621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311588
  · exact cover_1311621
#print axioms cover_1311587

def state_1311511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 24)))
theorem cover_1311511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311511 := by
  apply coveredState_split_literal (state := state_1311511) 4
    state_1311512 state_1311587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311512
  · exact cover_1311587
#print axioms cover_1311511

def state_1311495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
theorem cover_1311495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311495 := by
  apply coveredState_split_literal (state := state_1311495) 3
    state_1311496 state_1311511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311496
  · exact cover_1311511
#print axioms cover_1311495

def state_1311494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1311494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311494 := by
  apply coveredState_split_literal (state := state_1311494) 2
    state_1311495 state_1311722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311495
  · exact cover_1311722
#print axioms cover_1311494

def state_1311493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1311493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311493 := by
  apply coveredState_split_literal (state := state_1311493) 0
    state_1311494 state_1311731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311494
  · exact cover_1311731
#print axioms cover_1311493

def state_1311784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1311784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311784 := by
  apply coveredState_split_literal (state := state_1311784) 0
    state_1311785 state_1311832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311785
  · exact cover_1311832
#print axioms cover_1311784
end Mub6.Numerical.CircleFullD0.Forest
