import D0FullInterface
import D0ForestAssembly0345
import D0ForestChunk1337
import D0ForestChunk1338
import D0ForestChunk1339
import D0ForestChunk1340
import D0ForestChunk1341
import D0ForestChunk1342
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1621896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 65)))
theorem cover_1621896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621896 := by
  apply coveredState_split_literal (state := state_1621896) 2
    state_1621897 state_1621918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621897
  · exact cover_1621918
#print axioms cover_1621896

def state_1621997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 65)))
theorem cover_1621997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621997 := by
  apply coveredState_split_literal (state := state_1621997) 0
    state_1621998 state_1622061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621998
  · exact cover_1622061
#print axioms cover_1621997

def state_1621965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 65)))
theorem cover_1621965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621965 := by
  apply coveredState_split_literal (state := state_1621965) 2
    state_1621966 state_1621997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621966
  · exact cover_1621997
#print axioms cover_1621965

def state_1621895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 65)))
theorem cover_1621895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621895 := by
  apply coveredState_split_literal (state := state_1621895) 1
    state_1621896 state_1621965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621896
  · exact cover_1621965
#print axioms cover_1621895

def state_1621821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 65)))
theorem cover_1621821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621821 := by
  apply coveredState_split_literal (state := state_1621821) 3
    state_1621822 state_1621895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621822
  · exact cover_1621895
#print axioms cover_1621821

def state_1621819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
theorem cover_1621819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621819 := by
  apply coveredState_split_literal (state := state_1621819) 4
    state_1621820 state_1621821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621820
  · exact cover_1621821
#print axioms cover_1621819

def state_1621407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
theorem cover_1621407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621407 := by
  apply coveredState_split_literal (state := state_1621407) 0
    state_1621408 state_1621819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621408
  · exact cover_1621819
#print axioms cover_1621407

def state_1622094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 32)))
theorem cover_1622094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622094 := by
  apply coveredState_split_literal (state := state_1622094) 4
    state_1622095 state_1622106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622095
  · exact cover_1622106
#print axioms cover_1622094

def state_1622068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 32)))
theorem cover_1622068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622068 := by
  apply coveredState_split_literal (state := state_1622068) 0
    state_1622069 state_1622094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622069
  · exact cover_1622094
#print axioms cover_1622068

def state_1621406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
theorem cover_1621406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621406 := by
  apply coveredState_split_literal (state := state_1621406) 2
    state_1621407 state_1622068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621407
  · exact cover_1622068
#print axioms cover_1621406

def state_1621304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
theorem cover_1621304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621304 := by
  apply coveredState_split_literal (state := state_1621304) 1
    state_1621305 state_1621406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621305
  · exact cover_1621406
#print axioms cover_1621304

def state_1621303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 32)))
theorem cover_1621303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621303 := by
  apply coveredState_split_literal (state := state_1621303) 3
    state_1621304 state_1622165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621304
  · exact cover_1622165
#print axioms cover_1621303

def state_1622225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
theorem cover_1622225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622225 := by
  apply coveredState_split_literal (state := state_1622225) 0
    state_1622226 state_1622287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622226
  · exact cover_1622287
#print axioms cover_1622225

def state_1622300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
theorem cover_1622300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622300 := by
  apply coveredState_split_literal (state := state_1622300) 0
    state_1622301 state_1622352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622301
  · exact cover_1622352
#print axioms cover_1622300

def state_1622224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1622224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622224 := by
  apply coveredState_split_literal (state := state_1622224) 2
    state_1622225 state_1622300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622225
  · exact cover_1622300
#print axioms cover_1622224

def state_1622444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 66)))
theorem cover_1622444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622444 := by
  apply coveredState_split_literal (state := state_1622444) 4
    state_1622445 state_1622504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622445
  · exact cover_1622504
#print axioms cover_1622444

def state_1622436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 66)))
theorem cover_1622436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622436 := by
  apply coveredState_split_literal (state := state_1622436) 0
    state_1622437 state_1622444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622437
  · exact cover_1622444
#print axioms cover_1622436

def state_1622416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 66)))
theorem cover_1622416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622416 := by
  apply coveredState_split_literal (state := state_1622416) 2
    state_1622417 state_1622436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622417
  · exact cover_1622436
#print axioms cover_1622416

def state_1622513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 66)))
theorem cover_1622513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622513 := by
  apply coveredState_split_literal (state := state_1622513) 2
    state_1622514 state_1622539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622514
  · exact cover_1622539
#print axioms cover_1622513

def state_1622415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 66)))
theorem cover_1622415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622415 := by
  apply coveredState_split_literal (state := state_1622415) 1
    state_1622416 state_1622513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622416
  · exact cover_1622513
#print axioms cover_1622415

def state_1622589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 66)))
theorem cover_1622589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622589 := by
  apply coveredState_split_literal (state := state_1622589) 2
    state_1622590 state_1622611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622590
  · exact cover_1622611
#print axioms cover_1622589

def state_1622588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 66)))
theorem cover_1622588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622588 := by
  apply coveredState_split_literal (state := state_1622588) 1
    state_1622589 state_1622674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622589
  · exact cover_1622674
#print axioms cover_1622588

def state_1622414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 66)))
theorem cover_1622414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622414 := by
  apply coveredState_split_literal (state := state_1622414) 3
    state_1622415 state_1622588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622415
  · exact cover_1622588
#print axioms cover_1622414

def state_1622413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
theorem cover_1622413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622413 := by
  apply coveredState_split_literal (state := state_1622413) 4
    state_1622414 state_1622711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622414
  · exact cover_1622711
#print axioms cover_1622413

def state_1622791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 66)))
theorem cover_1622791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622791 := by
  apply coveredState_split_literal (state := state_1622791) 4
    state_1622792 state_1622847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622792
  · exact cover_1622847
#print axioms cover_1622791

def state_1622790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 66)))
theorem cover_1622790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622790 := by
  apply coveredState_split_literal (state := state_1622790) 0
    state_1622791 state_1622876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622791
  · exact cover_1622876
#print axioms cover_1622790

def state_1622776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 66)))
theorem cover_1622776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622776 := by
  apply coveredState_split_literal (state := state_1622776) 2
    state_1622777 state_1622790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622777
  · exact cover_1622790
#print axioms cover_1622776

def state_1622913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 132)))
theorem cover_1622913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622913 := by
  apply coveredState_split_literal (state := state_1622913) 3
    state_1622914 state_1622957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622914
  · exact cover_1622957
#print axioms cover_1622913

def state_1622912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 66)))
theorem cover_1622912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622912 := by
  apply coveredState_split_literal (state := state_1622912) 4
    state_1622913 state_1622986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622913
  · exact cover_1622986
#print axioms cover_1622912

def state_1622911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 66)))
theorem cover_1622911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622911 := by
  apply coveredState_split_literal (state := state_1622911) 0
    state_1622912 state_1622999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622912
  · exact cover_1622999
#print axioms cover_1622911

def state_1622889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 66)))
theorem cover_1622889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622889 := by
  apply coveredState_split_literal (state := state_1622889) 2
    state_1622890 state_1622911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622890
  · exact cover_1622911
#print axioms cover_1622889

def state_1622775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 66)))
theorem cover_1622775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622775 := by
  apply coveredState_split_literal (state := state_1622775) 1
    state_1622776 state_1622889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622776
  · exact cover_1622889
#print axioms cover_1622775
end Mub6.Numerical.CircleFullD0.Forest
