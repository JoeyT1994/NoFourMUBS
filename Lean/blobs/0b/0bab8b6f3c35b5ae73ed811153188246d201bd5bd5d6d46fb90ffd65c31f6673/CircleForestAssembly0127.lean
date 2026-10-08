import CircleFullInterface
import CircleForestAssembly0125
import CircleForestAssembly0126
import CircleForestChunk0494
import CircleForestChunk0495
import CircleForestChunk0496
import CircleForestChunk0497
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1305326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
theorem cover_1305326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305326 := by
  apply coveredState_split_literal (state := state_1305326) 3
    state_1305327 state_1305498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305327
  · exact cover_1305498
#print axioms cover_1305326

def state_1307362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 46)))
theorem cover_1307362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307362 := by
  apply coveredState_split_literal (state := state_1307362) 3
    state_1307363 state_1307382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307363
  · exact cover_1307382
#print axioms cover_1307362

def state_1307361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 46)))
theorem cover_1307361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307361 := by
  apply coveredState_split_literal (state := state_1307361) 1
    state_1307362 state_1307445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307362
  · exact cover_1307445
#print axioms cover_1307361

def state_1307360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 23)))
theorem cover_1307360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307360 := by
  apply coveredState_split_literal (state := state_1307360) 4
    state_1307361 state_1307458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307361
  · exact cover_1307458
#print axioms cover_1307360

def state_1307507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 98 else (if j.val < 4 then 59 else 92)))
theorem cover_1307507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307507 := by
  apply coveredState_split_literal (state := state_1307507) 1
    state_1307508 state_1307553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307508
  · exact cover_1307553
#print axioms cover_1307507

def state_1307506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 98 else (if j.val < 4 then 59 else 46)))
theorem cover_1307506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307506 := by
  apply coveredState_split_literal (state := state_1307506) 4
    state_1307507 state_1307572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307507
  · exact cover_1307572
#print axioms cover_1307506

def state_1307505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 46)))
theorem cover_1307505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307505 := by
  apply coveredState_split_literal (state := state_1307505) 2
    state_1307506 state_1307603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307506
  · exact cover_1307603
#print axioms cover_1307505

def state_1307483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 46)))
theorem cover_1307483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307483 := by
  apply coveredState_split_literal (state := state_1307483) 0
    state_1307484 state_1307505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307484
  · exact cover_1307505
#print axioms cover_1307483

def state_1307465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 46)))
theorem cover_1307465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307465 := by
  apply coveredState_split_literal (state := state_1307465) 3
    state_1307466 state_1307483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307466
  · exact cover_1307483
#print axioms cover_1307465

def state_1307464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 46)))
theorem cover_1307464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307464 := by
  apply coveredState_split_literal (state := state_1307464) 1
    state_1307465 state_1307626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307465
  · exact cover_1307626
#print axioms cover_1307464

def state_1307463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 23)))
theorem cover_1307463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307463 := by
  apply coveredState_split_literal (state := state_1307463) 4
    state_1307464 state_1307643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307464
  · exact cover_1307643
#print axioms cover_1307463

def state_1307359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 23)))
theorem cover_1307359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307359 := by
  apply coveredState_split_literal (state := state_1307359) 2
    state_1307360 state_1307463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307360
  · exact cover_1307463
#print axioms cover_1307359

def state_1307309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 23)))
theorem cover_1307309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307309 := by
  apply coveredState_split_literal (state := state_1307309) 0
    state_1307310 state_1307359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307310
  · exact cover_1307359
#print axioms cover_1307309

def state_1307297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_1307297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307297 := by
  apply coveredState_split_literal (state := state_1307297) 3
    state_1307298 state_1307309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307298
  · exact cover_1307309
#print axioms cover_1307297

def state_1305325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_1305325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305325 := by
  apply coveredState_split_literal (state := state_1305325) 4
    state_1305326 state_1307297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305326
  · exact cover_1307297
#print axioms cover_1305325

def state_1305324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1305324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305324 := by
  apply coveredState_split_literal (state := state_1305324) 2
    state_1305325 state_1307656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305325
  · exact cover_1307656
#print axioms cover_1305324

def state_1305323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1305323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305323 := by
  apply coveredState_split_literal (state := state_1305323) 1
    state_1305324 state_1307701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305324
  · exact cover_1307701
#print axioms cover_1305323

def state_1307797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 23)))
theorem cover_1307797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307797 := by
  apply coveredState_split_literal (state := state_1307797) 4
    state_1307798 state_1307841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307798
  · exact cover_1307841
#print axioms cover_1307797

def state_1307777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 23)))
theorem cover_1307777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307777 := by
  apply coveredState_split_literal (state := state_1307777) 2
    state_1307778 state_1307797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307778
  · exact cover_1307797
#print axioms cover_1307777

def state_1307776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 23)))
theorem cover_1307776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307776 := by
  apply coveredState_split_literal (state := state_1307776) 3
    state_1307777 state_1307868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307777
  · exact cover_1307868
#print axioms cover_1307776

def state_1307768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 23)))
theorem cover_1307768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307768 := by
  apply coveredState_split_literal (state := state_1307768) 0
    state_1307769 state_1307776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307769
  · exact cover_1307776
#print axioms cover_1307768

def state_1307752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 11)))
theorem cover_1307752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307752 := by
  apply coveredState_split_literal (state := state_1307752) 4
    state_1307753 state_1307768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307753
  · exact cover_1307768
#print axioms cover_1307752

def state_1307751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
theorem cover_1307751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307751 := by
  apply coveredState_split_literal (state := state_1307751) 2
    state_1307752 state_1307871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307752
  · exact cover_1307871
#print axioms cover_1307751

def state_1307750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
theorem cover_1307750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307750 := by
  apply coveredState_split_literal (state := state_1307750) 1
    state_1307751 state_1307912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307751
  · exact cover_1307912
#print axioms cover_1307750

def state_1305322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1305322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305322 := by
  apply coveredState_split_literal (state := state_1305322) 3
    state_1305323 state_1307750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305323
  · exact cover_1307750
#print axioms cover_1305322

def state_1307974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 46)))
theorem cover_1307974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307974 := by
  apply coveredState_split_literal (state := state_1307974) 1
    state_1307975 state_1308038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307975
  · exact cover_1308038
#print axioms cover_1307974

def state_1307973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 23)))
theorem cover_1307973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307973 := by
  apply coveredState_split_literal (state := state_1307973) 4
    state_1307974 state_1308039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307974
  · exact cover_1308039
#print axioms cover_1307973

def state_1307953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 23)))
theorem cover_1307953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307953 := by
  apply coveredState_split_literal (state := state_1307953) 2
    state_1307954 state_1307973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307954
  · exact cover_1307973
#print axioms cover_1307953

def state_1307951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_1307951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307951 := by
  apply coveredState_split_literal (state := state_1307951) 3
    state_1307952 state_1307953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307952
  · exact cover_1307953
#print axioms cover_1307951

def state_1307950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_1307950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307950 := by
  apply coveredState_split_literal (state := state_1307950) 0
    state_1307951 state_1308060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307951
  · exact cover_1308060
#print axioms cover_1307950

def state_1307924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_1307924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307924 := by
  apply coveredState_split_literal (state := state_1307924) 4
    state_1307925 state_1307950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307925
  · exact cover_1307950
#print axioms cover_1307924

def state_1308061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
theorem cover_1308061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308061 := by
  apply coveredState_split_literal (state := state_1308061) 4
    state_1308062 state_1308083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308062
  · exact cover_1308083
#print axioms cover_1308061
end Mub6.Numerical.CircleFullD0.Forest
