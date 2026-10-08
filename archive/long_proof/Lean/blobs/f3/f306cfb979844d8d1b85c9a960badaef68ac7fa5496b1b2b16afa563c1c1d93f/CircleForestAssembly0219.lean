import CircleFullInterface
import CircleForestAssembly0217
import CircleForestAssembly0218
import CircleForestChunk0826
import CircleForestChunk0827
import CircleForestChunk0828
import CircleForestChunk0829
import CircleForestChunk0830
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1499220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 120)))
theorem cover_1499220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499220 := by
  apply coveredState_split_literal (state := state_1499220) 1
    state_1499221 state_1499292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499221
  · exact cover_1499292
#print axioms cover_1499220

def state_1499219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
theorem cover_1499219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499219 := by
  apply coveredState_split_literal (state := state_1499219) 3
    state_1499220 state_1499383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499220
  · exact cover_1499383
#print axioms cover_1499219

def state_1499218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
theorem cover_1499218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499218 := by
  apply coveredState_split_literal (state := state_1499218) 0
    state_1499219 state_1499384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499219
  · exact cover_1499384
#print axioms cover_1499218

def state_1499217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 60)))
theorem cover_1499217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499217 := by
  apply coveredState_split_literal (state := state_1499217) 4
    state_1499218 state_1499393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499218
  · exact cover_1499393
#print axioms cover_1499217

def state_1499203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
theorem cover_1499203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499203 := by
  apply coveredState_split_literal (state := state_1499203) 2
    state_1499204 state_1499217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499204
  · exact cover_1499217
#print axioms cover_1499203

def state_1499187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
theorem cover_1499187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499187 := by
  apply coveredState_split_literal (state := state_1499187) 1
    state_1499188 state_1499203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499188
  · exact cover_1499203
#print axioms cover_1499187

def state_1499047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1499047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499047 := by
  apply coveredState_split_literal (state := state_1499047) 3
    state_1499048 state_1499187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499048
  · exact cover_1499187
#print axioms cover_1499047

def state_1499046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1499046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499046 := by
  apply coveredState_split_literal (state := state_1499046) 0
    state_1499047 state_1499418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499047
  · exact cover_1499418
#print axioms cover_1499046

def state_1499045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 30)))
theorem cover_1499045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499045 := by
  apply coveredState_split_literal (state := state_1499045) 4
    state_1499046 state_1499435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499046
  · exact cover_1499435
#print axioms cover_1499045

def state_1499506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 60)))
theorem cover_1499506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499506 := by
  apply coveredState_split_literal (state := state_1499506) 2
    state_1499507 state_1499564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499507
  · exact cover_1499564
#print axioms cover_1499506

def state_1499464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 60)))
theorem cover_1499464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499464 := by
  apply coveredState_split_literal (state := state_1499464) 1
    state_1499465 state_1499506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499465
  · exact cover_1499506
#print axioms cover_1499464

def state_1499446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
theorem cover_1499446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499446 := by
  apply coveredState_split_literal (state := state_1499446) 3
    state_1499447 state_1499464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499447
  · exact cover_1499464
#print axioms cover_1499446

def state_1499445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
theorem cover_1499445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499445 := by
  apply coveredState_split_literal (state := state_1499445) 0
    state_1499446 state_1499571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499446
  · exact cover_1499571
#print axioms cover_1499445

def state_1499444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 30)))
theorem cover_1499444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499444 := by
  apply coveredState_split_literal (state := state_1499444) 4
    state_1499445 state_1499592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499445
  · exact cover_1499592
#print axioms cover_1499444

def state_1499044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
theorem cover_1499044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499044 := by
  apply coveredState_split_literal (state := state_1499044) 2
    state_1499045 state_1499444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499045
  · exact cover_1499444
#print axioms cover_1499044

def state_1499018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
theorem cover_1499018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499018 := by
  apply coveredState_split_literal (state := state_1499018) 1
    state_1499019 state_1499044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499019
  · exact cover_1499044
#print axioms cover_1499018

def state_1498956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1498956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498956 := by
  apply coveredState_split_literal (state := state_1498956) 3
    state_1498957 state_1499018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498957
  · exact cover_1499018
#print axioms cover_1498956

def state_1498955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1498955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498955 := by
  apply coveredState_split_literal (state := state_1498955) 0
    state_1498956 state_1499607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498956
  · exact cover_1499607
#print axioms cover_1498955

def state_1498954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 15)))
theorem cover_1498954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498954 := by
  apply coveredState_split_literal (state := state_1498954) 4
    state_1498955 state_1499626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498955
  · exact cover_1499626
#print axioms cover_1498954

def state_1498953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
theorem cover_1498953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498953 := by
  apply coveredState_split_literal (state := state_1498953) 2
    state_1498954 state_1499635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498954
  · exact cover_1499635
#print axioms cover_1498953

def state_1498939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
theorem cover_1498939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498939 := by
  apply coveredState_split_literal (state := state_1498939) 1
    state_1498940 state_1498953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498940
  · exact cover_1498953
#print axioms cover_1498939

def state_1498915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1498915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498915 := by
  apply coveredState_split_literal (state := state_1498915) 3
    state_1498916 state_1498939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498916
  · exact cover_1498939
#print axioms cover_1498915

def state_1498135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1498135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498135 := by
  apply coveredState_split_literal (state := state_1498135) 0
    state_1498136 state_1498915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498136
  · exact cover_1498915
#print axioms cover_1498135

def state_1494041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
theorem cover_1494041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494041 := by
  apply coveredState_split_literal (state := state_1494041) 4
    state_1494042 state_1498135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494042
  · exact cover_1498135
#print axioms cover_1494041

def state_1499751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 57)))
theorem cover_1499751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499751 := by
  apply coveredState_split_literal (state := state_1499751) 0
    state_1499752 state_1499775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499752
  · exact cover_1499775
#print axioms cover_1499751

def state_1499834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 57)))
theorem cover_1499834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499834 := by
  apply coveredState_split_literal (state := state_1499834) 0
    state_1499835 state_1499846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499835
  · exact cover_1499846
#print axioms cover_1499834

def state_1499750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
theorem cover_1499750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499750 := by
  apply coveredState_split_literal (state := state_1499750) 2
    state_1499751 state_1499834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499751
  · exact cover_1499834
#print axioms cover_1499750

def state_1499899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
theorem cover_1499899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499899 := by
  apply coveredState_split_literal (state := state_1499899) 2
    state_1499900 state_1499927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499900
  · exact cover_1499927
#print axioms cover_1499899

def state_1499749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
theorem cover_1499749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499749 := by
  apply coveredState_split_literal (state := state_1499749) 1
    state_1499750 state_1499899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499750
  · exact cover_1499899
#print axioms cover_1499749

def state_1499711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 28)))
theorem cover_1499711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499711 := by
  apply coveredState_split_literal (state := state_1499711) 4
    state_1499712 state_1499749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499712
  · exact cover_1499749
#print axioms cover_1499711

def state_1499996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 57)))
theorem cover_1499996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499996 := by
  apply coveredState_split_literal (state := state_1499996) 1
    state_1499997 state_1500050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499997
  · exact cover_1500050
#print axioms cover_1499996

def state_1499978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 28)))
theorem cover_1499978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499978 := by
  apply coveredState_split_literal (state := state_1499978) 4
    state_1499979 state_1499996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499979
  · exact cover_1499996
#print axioms cover_1499978
end Mub6.Numerical.CircleFullD0.Forest
