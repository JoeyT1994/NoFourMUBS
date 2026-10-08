import D0FullInterface
import D0ForestAssembly0030
import D0ForestChunk0125
import D0ForestChunk0126
import D0ForestChunk0127
import D0ForestChunk0128
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_967623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
theorem cover_967623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967623 := by
  apply coveredState_split_literal (state := state_967623) 0
    state_967624 state_967679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967624
  · exact cover_967679
#print axioms cover_967623

def state_967621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 56)))
theorem cover_967621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967621 := by
  apply coveredState_split_literal (state := state_967621) 3
    state_967622 state_967623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967622
  · exact cover_967623
#print axioms cover_967621

def state_967620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 28)))
theorem cover_967620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967620 := by
  apply coveredState_split_literal (state := state_967620) 4
    state_967621 state_967690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967621
  · exact cover_967690
#print axioms cover_967620

def state_967580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967580 := by
  apply coveredState_split_literal (state := state_967580) 2
    state_967581 state_967620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967581
  · exact cover_967620
#print axioms cover_967580

def state_967579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967579 := by
  apply coveredState_split_literal (state := state_967579) 1
    state_967580 state_967747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967580
  · exact cover_967747
#print axioms cover_967579

def state_967578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
theorem cover_967578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967578 := by
  apply coveredState_split_literal (state := state_967578) 0
    state_967579 state_967810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967579
  · exact cover_967810
#print axioms cover_967578

def state_967570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 28)))
theorem cover_967570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967570 := by
  apply coveredState_split_literal (state := state_967570) 3
    state_967571 state_967578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967571
  · exact cover_967578
#print axioms cover_967570

def state_967844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
theorem cover_967844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967844 := by
  apply coveredState_split_literal (state := state_967844) 2
    state_967845 state_967872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967845
  · exact cover_967872
#print axioms cover_967844

def state_967834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
theorem cover_967834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967834 := by
  apply coveredState_split_literal (state := state_967834) 1
    state_967835 state_967844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967835
  · exact cover_967844
#print axioms cover_967834

def state_967833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
theorem cover_967833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967833 := by
  apply coveredState_split_literal (state := state_967833) 0
    state_967834 state_967923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967834
  · exact cover_967923
#print axioms cover_967833

def state_967825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 29)))
theorem cover_967825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967825 := by
  apply coveredState_split_literal (state := state_967825) 3
    state_967826 state_967833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967826
  · exact cover_967833
#print axioms cover_967825

def state_967569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 14)))
theorem cover_967569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967569 := by
  apply coveredState_split_literal (state := state_967569) 4
    state_967570 state_967825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967570
  · exact cover_967825
#print axioms cover_967569

def state_967531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_967531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967531 := by
  apply coveredState_split_literal (state := state_967531) 2
    state_967532 state_967569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967532
  · exact cover_967569
#print axioms cover_967531

def state_967339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_967339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967339 := by
  apply coveredState_split_literal (state := state_967339) 1
    state_967340 state_967531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967340
  · exact cover_967531
#print axioms cover_967339

def state_966983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_966983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966983 := by
  apply coveredState_split_literal (state := state_966983) 0
    state_966984 state_967339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966984
  · exact cover_967339
#print axioms cover_966983

def state_966982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 7)))
theorem cover_966982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966982 := by
  apply coveredState_split_literal (state := state_966982) 4
    state_966983 state_967932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966983
  · exact cover_967932
#print axioms cover_966982

def state_967951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_967951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967951 := by
  apply coveredState_split_literal (state := state_967951) 1
    state_967952 state_967977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967952
  · exact cover_967977
#print axioms cover_967951

def state_968034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
theorem cover_968034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968034 := by
  apply coveredState_split_literal (state := state_968034) 1
    state_968035 state_968046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968035
  · exact cover_968046
#print axioms cover_968034

def state_968033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
theorem cover_968033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968033 := by
  apply coveredState_split_literal (state := state_968033) 0
    state_968034 state_968103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968034
  · exact cover_968103
#print axioms cover_968033

def state_968032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 14)))
theorem cover_968032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968032 := by
  apply coveredState_split_literal (state := state_968032) 4
    state_968033 state_968116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968033
  · exact cover_968116
#print axioms cover_968032

def state_968031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 14)))
theorem cover_968031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968031 := by
  apply coveredState_split_literal (state := state_968031) 3
    state_968032 state_968119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968032
  · exact cover_968119
#print axioms cover_968031

def state_968023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_968023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968023 := by
  apply coveredState_split_literal (state := state_968023) 2
    state_968024 state_968031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968024
  · exact cover_968031
#print axioms cover_968023

def state_968138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 28)))
theorem cover_968138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968138 := by
  apply coveredState_split_literal (state := state_968138) 4
    state_968139 state_968158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968139
  · exact cover_968158
#print axioms cover_968138

def state_968134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
theorem cover_968134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968134 := by
  apply coveredState_split_literal (state := state_968134) 2
    state_968135 state_968138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968135
  · exact cover_968138
#print axioms cover_968134

def state_968133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
theorem cover_968133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968133 := by
  apply coveredState_split_literal (state := state_968133) 1
    state_968134 state_968211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968134
  · exact cover_968211
#print axioms cover_968133

def state_968132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
theorem cover_968132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968132 := by
  apply coveredState_split_literal (state := state_968132) 0
    state_968133 state_968274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968133
  · exact cover_968274
#print axioms cover_968132

def state_968300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 29)))
theorem cover_968300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968300 := by
  apply coveredState_split_literal (state := state_968300) 3
    state_968301 state_968362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968301
  · exact cover_968362
#print axioms cover_968300

def state_968298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_968298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968298 := by
  apply coveredState_split_literal (state := state_968298) 2
    state_968299 state_968300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968299
  · exact cover_968300
#print axioms cover_968298

def state_968288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_968288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968288 := by
  apply coveredState_split_literal (state := state_968288) 1
    state_968289 state_968298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968289
  · exact cover_968298
#print axioms cover_968288

def state_968287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
theorem cover_968287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968287 := by
  apply coveredState_split_literal (state := state_968287) 0
    state_968288 state_968375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968288
  · exact cover_968375
#print axioms cover_968287

def state_968131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 14)))
theorem cover_968131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968131 := by
  apply coveredState_split_literal (state := state_968131) 4
    state_968132 state_968287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968132
  · exact cover_968287
#print axioms cover_968131

def state_968130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 14)))
theorem cover_968130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968130 := by
  apply coveredState_split_literal (state := state_968130) 3
    state_968131 state_968394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968131
  · exact cover_968394
#print axioms cover_968130
end Mub6.Numerical.CircleFullD0.Forest
