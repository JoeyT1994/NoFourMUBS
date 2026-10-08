import CircleFullInterface
import CircleForestAssembly0149
import CircleForestChunk0585
import CircleForestChunk0586
import CircleForestChunk0587
import CircleForestChunk0588
import CircleForestChunk0589
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_379420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_379420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379420 := by
  apply coveredState_split_literal (state := state_379420) 2
    state_379421 state_379430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379421
  · exact cover_379430
#print axioms cover_379420

def state_379412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_379412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379412 := by
  apply coveredState_split_literal (state := state_379412) 1
    state_379413 state_379420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379413
  · exact cover_379420
#print axioms cover_379412

def state_379380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_379380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379380 := by
  apply coveredState_split_literal (state := state_379380) 0
    state_379381 state_379412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379381
  · exact cover_379412
#print axioms cover_379380

def state_379379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_379379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379379 := by
  apply coveredState_split_literal (state := state_379379) 4
    state_379380 state_379493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379380
  · exact cover_379493
#print axioms cover_379379

def state_379069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_379069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379069 := by
  apply coveredState_split_literal (state := state_379069) 3
    state_379070 state_379379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379070
  · exact cover_379379
#print axioms cover_379069

def state_378973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_378973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378973 := by
  apply coveredState_split_literal (state := state_378973) 2
    state_378974 state_379069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378974
  · exact cover_379069
#print axioms cover_378973

def state_378905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_378905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378905 := by
  apply coveredState_split_literal (state := state_378905) 1
    state_378906 state_378973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378906
  · exact cover_378973
#print axioms cover_378905

def state_378813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_378813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378813 := by
  apply coveredState_split_literal (state := state_378813) 0
    state_378814 state_378905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378814
  · exact cover_378905
#print axioms cover_378813

def state_379522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_379522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379522 := by
  apply coveredState_split_literal (state := state_379522) 0
    state_379523 state_379552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379523
  · exact cover_379552
#print axioms cover_379522

def state_378812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_378812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378812 := by
  apply coveredState_split_literal (state := state_378812) 4
    state_378813 state_379522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378813
  · exact cover_379522
#print axioms cover_378812

def state_378646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_378646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378646 := by
  apply coveredState_split_literal (state := state_378646) 3
    state_378647 state_378812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378647
  · exact cover_378812
#print axioms cover_378646

def state_371974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_371974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371974 := by
  apply coveredState_split_literal (state := state_371974) 2
    state_371975 state_378646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371975
  · exact cover_378646
#print axioms cover_371974

def state_379603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_379603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379603 := by
  apply coveredState_split_literal (state := state_379603) 3
    state_379604 state_379663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379604
  · exact cover_379663
#print axioms cover_379603

def state_379602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_379602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379602 := by
  apply coveredState_split_literal (state := state_379602) 2
    state_379603 state_379720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379603
  · exact cover_379720
#print axioms cover_379602

def state_379601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_379601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379601 := by
  apply coveredState_split_literal (state := state_379601) 1
    state_379602 state_379781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379602
  · exact cover_379781
#print axioms cover_379601

def state_379796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_379796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379796 := by
  apply coveredState_split_literal (state := state_379796) 3
    state_379797 state_379844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379797
  · exact cover_379844
#print axioms cover_379796

def state_379896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_379896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379896 := by
  apply coveredState_split_literal (state := state_379896) 4
    state_379897 state_379908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379897
  · exact cover_379908
#print axioms cover_379896

def state_379978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_379978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379978 := by
  apply coveredState_split_literal (state := state_379978) 3
    state_379979 state_380002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379979
  · exact cover_380002
#print axioms cover_379978

def state_379977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_379977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379977 := by
  apply coveredState_split_literal (state := state_379977) 2
    state_379978 state_380057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379978
  · exact cover_380057
#print axioms cover_379977

def state_379976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_379976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379976 := by
  apply coveredState_split_literal (state := state_379976) 1
    state_379977 state_380072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379977
  · exact cover_380072
#print axioms cover_379976

def state_379975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_379975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379975 := by
  apply coveredState_split_literal (state := state_379975) 0
    state_379976 state_380085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379976
  · exact cover_380085
#print axioms cover_379975

def state_379967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_379967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379967 := by
  apply coveredState_split_literal (state := state_379967) 4
    state_379968 state_379975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379968
  · exact cover_379975
#print axioms cover_379967

def state_379895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_379895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379895 := by
  apply coveredState_split_literal (state := state_379895) 3
    state_379896 state_379967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379896
  · exact cover_379967
#print axioms cover_379895

def state_379795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_379795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379795 := by
  apply coveredState_split_literal (state := state_379795) 2
    state_379796 state_379895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379796
  · exact cover_379895
#print axioms cover_379795

def state_379794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_379794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379794 := by
  apply coveredState_split_literal (state := state_379794) 1
    state_379795 state_380138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379795
  · exact cover_380138
#print axioms cover_379794

def state_379600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_379600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379600 := by
  apply coveredState_split_literal (state := state_379600) 0
    state_379601 state_379794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379601
  · exact cover_379794
#print axioms cover_379600

def state_380168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_380168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380168 := by
  apply coveredState_split_literal (state := state_380168) 1
    state_380169 state_380232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380169
  · exact cover_380232
#print axioms cover_380168

def state_380167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
theorem cover_380167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380167 := by
  apply coveredState_split_literal (state := state_380167) 4
    state_380168 state_380247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380168
  · exact cover_380247
#print axioms cover_380167

def state_380248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_380248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380248 := by
  apply coveredState_split_literal (state := state_380248) 4
    state_380249 state_380306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380249
  · exact cover_380306
#print axioms cover_380248

def state_380166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_380166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380166 := by
  apply coveredState_split_literal (state := state_380166) 3
    state_380167 state_380248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380167
  · exact cover_380248
#print axioms cover_380166

def state_380322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 12)))
theorem cover_380322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380322 := by
  apply coveredState_split_literal (state := state_380322) 0
    state_380323 state_380324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380323
  · exact cover_380324
#print axioms cover_380322

def state_380321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 6)))
theorem cover_380321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380321 := by
  apply coveredState_split_literal (state := state_380321) 4
    state_380322 state_380387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380322
  · exact cover_380387
#print axioms cover_380321
end Mub6.Numerical.CircleFullPrototype.Forest
