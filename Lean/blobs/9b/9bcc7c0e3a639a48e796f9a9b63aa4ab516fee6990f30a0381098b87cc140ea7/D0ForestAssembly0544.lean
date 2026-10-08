import D0FullInterface
import D0ForestAssembly0543
import D0ForestChunk2143
import D0ForestChunk2144
import D0ForestChunk2145
import D0ForestChunk2146
import D0ForestChunk2147
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2595250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 20)))
theorem cover_2595250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595250 := by
  apply coveredState_split_literal (state := state_2595250) 3
    state_2595251 state_2595298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595251
  · exact cover_2595298
#print axioms cover_2595250

def state_2595228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 20)))
theorem cover_2595228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595228 := by
  apply coveredState_split_literal (state := state_2595228) 2
    state_2595229 state_2595250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595229
  · exact cover_2595250
#print axioms cover_2595228

def state_2595184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 20)))
theorem cover_2595184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595184 := by
  apply coveredState_split_literal (state := state_2595184) 1
    state_2595185 state_2595228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595185
  · exact cover_2595228
#print axioms cover_2595184

def state_2595183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 10)))
theorem cover_2595183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595183 := by
  apply coveredState_split_literal (state := state_2595183) 4
    state_2595184 state_2595319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595184
  · exact cover_2595319
#print axioms cover_2595183

def state_2595182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 10)))
theorem cover_2595182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595182 := by
  apply coveredState_split_literal (state := state_2595182) 0
    state_2595183 state_2595322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595183
  · exact cover_2595322
#print axioms cover_2595182

def state_2595181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 10)))
theorem cover_2595181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595181 := by
  apply coveredState_split_literal (state := state_2595181) 3
    state_2595182 state_2595355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595182
  · exact cover_2595355
#print axioms cover_2595181

def state_2595385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 10)))
theorem cover_2595385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595385 := by
  apply coveredState_split_literal (state := state_2595385) 0
    state_2595386 state_2595449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595386
  · exact cover_2595449
#print axioms cover_2595385

def state_2595384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 10)))
theorem cover_2595384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595384 := by
  apply coveredState_split_literal (state := state_2595384) 3
    state_2595385 state_2595488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595385
  · exact cover_2595488
#print axioms cover_2595384

def state_2595180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
theorem cover_2595180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595180 := by
  apply coveredState_split_literal (state := state_2595180) 2
    state_2595181 state_2595384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595181
  · exact cover_2595384
#print axioms cover_2595180

def state_2595114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
theorem cover_2595114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595114 := by
  apply coveredState_split_literal (state := state_2595114) 1
    state_2595115 state_2595180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595115
  · exact cover_2595180
#print axioms cover_2595114

def state_2595113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 5)))
theorem cover_2595113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595113 := by
  apply coveredState_split_literal (state := state_2595113) 4
    state_2595114 state_2595507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595114
  · exact cover_2595507
#print axioms cover_2595113

def state_2595112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_2595112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595112 := by
  apply coveredState_split_literal (state := state_2595112) 3
    state_2595113 state_2595530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595113
  · exact cover_2595530
#print axioms cover_2595112

def state_2595111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2595111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595111 := by
  apply coveredState_split_literal (state := state_2595111) 2
    state_2595112 state_2595559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595112
  · exact cover_2595559
#print axioms cover_2595111

def state_2595033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2595033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595033 := by
  apply coveredState_split_literal (state := state_2595033) 0
    state_2595034 state_2595111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595034
  · exact cover_2595111
#print axioms cover_2595033

def state_2593371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2593371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593371 := by
  apply coveredState_split_literal (state := state_2593371) 4
    state_2593372 state_2595033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593372
  · exact cover_2595033
#print axioms cover_2593371

def state_2593370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2593370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593370 := by
  apply coveredState_split_literal (state := state_2593370) 3
    state_2593371 state_2595606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593371
  · exact cover_2595606
#print axioms cover_2593370

def state_2593369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2593369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593369 := by
  apply coveredState_split_literal (state := state_2593369) 2
    state_2593370 state_2595609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593370
  · exact cover_2595609
#print axioms cover_2593369

def state_2595621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_2595621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595621 := by
  apply coveredState_split_literal (state := state_2595621) 4
    state_2595622 state_2595635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595622
  · exact cover_2595635
#print axioms cover_2595621

def state_2595620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_2595620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595620 := by
  apply coveredState_split_literal (state := state_2595620) 3
    state_2595621 state_2595690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595621
  · exact cover_2595690
#print axioms cover_2595620

def state_2595619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2595619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595619 := by
  apply coveredState_split_literal (state := state_2595619) 2
    state_2595620 state_2595691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595620
  · exact cover_2595691
#print axioms cover_2595619

def state_2595618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2595618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595618 := by
  apply coveredState_split_literal (state := state_2595618) 1
    state_2595619 state_2595692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595619
  · exact cover_2595692
#print axioms cover_2595618

def state_2595703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
theorem cover_2595703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595703 := by
  apply coveredState_split_literal (state := state_2595703) 2
    state_2595704 state_2595759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595704
  · exact cover_2595759
#print axioms cover_2595703

def state_2595816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 19)))
theorem cover_2595816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595816 := by
  apply coveredState_split_literal (state := state_2595816) 2
    state_2595817 state_2595880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595817
  · exact cover_2595880
#print axioms cover_2595816

def state_2595772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2595772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595772 := by
  apply coveredState_split_literal (state := state_2595772) 4
    state_2595773 state_2595816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595773
  · exact cover_2595816
#print axioms cover_2595772

def state_2595771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2595771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595771 := by
  apply coveredState_split_literal (state := state_2595771) 1
    state_2595772 state_2595907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595772
  · exact cover_2595907
#print axioms cover_2595771

def state_2595770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2595770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595770 := by
  apply coveredState_split_literal (state := state_2595770) 0
    state_2595771 state_2595910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595771
  · exact cover_2595910
#print axioms cover_2595770

def state_2595941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 9)))
theorem cover_2595941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595941 := by
  apply coveredState_split_literal (state := state_2595941) 0
    state_2595942 state_2596005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595942
  · exact cover_2596005
#print axioms cover_2595941

def state_2595769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 9)))
theorem cover_2595769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595769 := by
  apply coveredState_split_literal (state := state_2595769) 3
    state_2595770 state_2595941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595770
  · exact cover_2595941
#print axioms cover_2595769

def state_2595768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
theorem cover_2595768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595768 := by
  apply coveredState_split_literal (state := state_2595768) 2
    state_2595769 state_2596044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595769
  · exact cover_2596044
#print axioms cover_2595768

def state_2595702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_2595702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595702 := by
  apply coveredState_split_literal (state := state_2595702) 4
    state_2595703 state_2595768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595703
  · exact cover_2595768
#print axioms cover_2595702

def state_2595701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_2595701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595701 := by
  apply coveredState_split_literal (state := state_2595701) 3
    state_2595702 state_2596093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595702
  · exact cover_2596093
#print axioms cover_2595701

def state_2595700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2595700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595700 := by
  apply coveredState_split_literal (state := state_2595700) 2
    state_2595701 state_2596126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595701
  · exact cover_2596126
#print axioms cover_2595700
end Mub6.Numerical.CircleFullD0.Forest
