import CircleFullInterface
import CircleForestAssembly0169
import CircleForestChunk0663
import CircleForestChunk0664
import CircleForestChunk0665
import CircleForestChunk0666
import CircleForestChunk0667
import CircleForestChunk0668
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_764888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
theorem cover_764888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764888 := by
  apply coveredState_split_literal (state := state_764888) 3
    state_764889 state_764910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764889
  · exact cover_764910
#print axioms cover_764888

def state_765021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
theorem cover_765021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765021 := by
  apply coveredState_split_literal (state := state_765021) 1
    state_765022 state_765075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765022
  · exact cover_765075
#print axioms cover_765021

def state_765015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_765015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765015 := by
  apply coveredState_split_literal (state := state_765015) 3
    state_765016 state_765021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765016
  · exact cover_765021
#print axioms cover_765015

def state_764887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_764887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764887 := by
  apply coveredState_split_literal (state := state_764887) 2
    state_764888 state_765015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764888
  · exact cover_765015
#print axioms cover_764887

def state_764861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_764861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764861 := by
  apply coveredState_split_literal (state := state_764861) 0
    state_764862 state_764887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764862
  · exact cover_764887
#print axioms cover_764861

def state_764860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_764860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764860 := by
  apply coveredState_split_literal (state := state_764860) 4
    state_764861 state_765094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764861
  · exact cover_765094
#print axioms cover_764860

def state_765100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_765100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765100 := by
  apply coveredState_split_literal (state := state_765100) 0
    state_765101 state_765128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765101
  · exact cover_765128
#print axioms cover_765100

def state_765099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_765099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765099 := by
  apply coveredState_split_literal (state := state_765099) 4
    state_765100 state_765173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765100
  · exact cover_765173
#print axioms cover_765099

def state_764859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_764859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764859 := by
  apply coveredState_split_literal (state := state_764859) 3
    state_764860 state_765099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764860
  · exact cover_765099
#print axioms cover_764859

def state_764789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_764789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764789 := by
  apply coveredState_split_literal (state := state_764789) 2
    state_764790 state_764859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764790
  · exact cover_764859
#print axioms cover_764789

def state_764788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_764788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764788 := by
  apply coveredState_split_literal (state := state_764788) 1
    state_764789 state_765192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764789
  · exact cover_765192
#print axioms cover_764788

def state_765264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_765264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765264 := by
  apply coveredState_split_literal (state := state_765264) 2
    state_765265 state_765286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765265
  · exact cover_765286
#print axioms cover_765264

def state_765263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_765263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765263 := by
  apply coveredState_split_literal (state := state_765263) 4
    state_765264 state_765343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765264
  · exact cover_765343
#print axioms cover_765263

def state_765262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_765262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765262 := by
  apply coveredState_split_literal (state := state_765262) 3
    state_765263 state_765354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765263
  · exact cover_765354
#print axioms cover_765262

def state_765248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_765248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765248 := by
  apply coveredState_split_literal (state := state_765248) 2
    state_765249 state_765262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765249
  · exact cover_765262
#print axioms cover_765248

def state_765247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_765247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765247 := by
  apply coveredState_split_literal (state := state_765247) 1
    state_765248 state_765393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765248
  · exact cover_765393
#print axioms cover_765247

def state_764787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_764787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764787 := by
  apply coveredState_split_literal (state := state_764787) 0
    state_764788 state_765247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764788
  · exact cover_765247
#print axioms cover_764787

def state_765446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_765446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765446 := by
  apply coveredState_split_literal (state := state_765446) 0
    state_765447 state_765500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765447
  · exact cover_765500
#print axioms cover_765446

def state_764786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_764786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764786 := by
  apply coveredState_split_literal (state := state_764786) 4
    state_764787 state_765446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764787
  · exact cover_765446
#print axioms cover_764786

def state_764020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_764020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764020 := by
  apply coveredState_split_literal (state := state_764020) 3
    state_764021 state_764786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764021
  · exact cover_764786
#print axioms cover_764020

def state_765512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_765512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765512 := by
  apply coveredState_split_literal (state := state_765512) 4
    state_765513 state_765570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765513
  · exact cover_765570
#print axioms cover_765512

def state_765629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_765629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765629 := by
  apply coveredState_split_literal (state := state_765629) 1
    state_765630 state_765677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765630
  · exact cover_765677
#print axioms cover_765629

def state_765804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_765804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765804 := by
  apply coveredState_split_literal (state := state_765804) 2
    state_765805 state_765854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765805
  · exact cover_765854
#print axioms cover_765804

def state_765776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_765776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765776 := by
  apply coveredState_split_literal (state := state_765776) 4
    state_765777 state_765804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765777
  · exact cover_765804
#print axioms cover_765776

def state_765742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_765742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765742 := by
  apply coveredState_split_literal (state := state_765742) 3
    state_765743 state_765776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765743
  · exact cover_765776
#print axioms cover_765742

def state_765741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_765741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765741 := by
  apply coveredState_split_literal (state := state_765741) 2
    state_765742 state_765877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765742
  · exact cover_765877
#print axioms cover_765741

def state_765906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_765906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765906 := by
  apply coveredState_split_literal (state := state_765906) 1
    state_765907 state_765954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765907
  · exact cover_765954
#print axioms cover_765906

def state_765982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
theorem cover_765982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765982 := by
  apply coveredState_split_literal (state := state_765982) 0
    state_765983 state_766004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765983
  · exact cover_766004
#print axioms cover_765982

def state_765981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_765981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765981 := by
  apply coveredState_split_literal (state := state_765981) 4
    state_765982 state_766055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_765982
  · exact cover_766055
#print axioms cover_765981

def state_766097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 10)))
theorem cover_766097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766097 := by
  apply coveredState_split_literal (state := state_766097) 1
    state_766098 state_766113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766098
  · exact cover_766113
#print axioms cover_766097

def state_766081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
theorem cover_766081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766081 := by
  apply coveredState_split_literal (state := state_766081) 3
    state_766082 state_766097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766082
  · exact cover_766097
#print axioms cover_766081

def state_766059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
theorem cover_766059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766059 := by
  apply coveredState_split_literal (state := state_766059) 0
    state_766060 state_766081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766060
  · exact cover_766081
#print axioms cover_766059
end Mub6.Numerical.CircleFullPrototype.Forest
