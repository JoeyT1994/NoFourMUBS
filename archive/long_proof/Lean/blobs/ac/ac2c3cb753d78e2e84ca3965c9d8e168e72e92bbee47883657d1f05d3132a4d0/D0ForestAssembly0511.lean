import D0FullInterface
import D0ForestAssembly0510
import D0ForestChunk2009
import D0ForestChunk2010
import D0ForestChunk2011
import D0ForestChunk2012
import D0ForestChunk2013
import D0ForestChunk2014
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2562796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2562796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562796 := by
  apply coveredState_split_literal (state := state_2562796) 2
    state_2562797 state_2562808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562797
  · exact cover_2562808
#print axioms cover_2562796

def state_2562795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2562795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562795 := by
  apply coveredState_split_literal (state := state_2562795) 1
    state_2562796 state_2562879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562796
  · exact cover_2562879
#print axioms cover_2562795

def state_2562794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2562794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562794 := by
  apply coveredState_split_literal (state := state_2562794) 0
    state_2562795 state_2562884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562795
  · exact cover_2562884
#print axioms cover_2562794

def state_2562788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2562788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562788 := by
  apply coveredState_split_literal (state := state_2562788) 4
    state_2562789 state_2562794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562789
  · exact cover_2562794
#print axioms cover_2562788

def state_2562985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2562985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562985 := by
  apply coveredState_split_literal (state := state_2562985) 1
    state_2562986 state_2563043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562986
  · exact cover_2563043
#print axioms cover_2562985

def state_2562927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2562927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562927 := by
  apply coveredState_split_literal (state := state_2562927) 0
    state_2562928 state_2562985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562928
  · exact cover_2562985
#print axioms cover_2562927

def state_2562921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_2562921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562921 := by
  apply coveredState_split_literal (state := state_2562921) 4
    state_2562922 state_2562927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562922
  · exact cover_2562927
#print axioms cover_2562921

def state_2562787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2562787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562787 := by
  apply coveredState_split_literal (state := state_2562787) 3
    state_2562788 state_2562921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2562788
  · exact cover_2562921
#print axioms cover_2562787

def state_2563066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_2563066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563066 := by
  apply coveredState_split_literal (state := state_2563066) 4
    state_2563067 state_2563082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563067
  · exact cover_2563082
#print axioms cover_2563066

def state_2563208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_2563208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563208 := by
  apply coveredState_split_literal (state := state_2563208) 3
    state_2563209 state_2563220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563209
  · exact cover_2563220
#print axioms cover_2563208

def state_2563194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_2563194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563194 := by
  apply coveredState_split_literal (state := state_2563194) 0
    state_2563195 state_2563208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563195
  · exact cover_2563208
#print axioms cover_2563194

def state_2563324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 23)))
theorem cover_2563324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563324 := by
  apply coveredState_split_literal (state := state_2563324) 1
    state_2563325 state_2563380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563325
  · exact cover_2563380
#print axioms cover_2563324

def state_2563394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
theorem cover_2563394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563394 := by
  apply coveredState_split_literal (state := state_2563394) 4
    state_2563395 state_2563446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563395
  · exact cover_2563446
#print axioms cover_2563394

def state_2563479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
theorem cover_2563479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563479 := by
  apply coveredState_split_literal (state := state_2563479) 4
    state_2563480 state_2563507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563480
  · exact cover_2563507
#print axioms cover_2563479

def state_2563393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
theorem cover_2563393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563393 := by
  apply coveredState_split_literal (state := state_2563393) 1
    state_2563394 state_2563479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563394
  · exact cover_2563479
#print axioms cover_2563393

def state_2563323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 23)))
theorem cover_2563323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563323 := by
  apply coveredState_split_literal (state := state_2563323) 2
    state_2563324 state_2563393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563324
  · exact cover_2563393
#print axioms cover_2563323

def state_2563317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_2563317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563317 := by
  apply coveredState_split_literal (state := state_2563317) 3
    state_2563318 state_2563323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563318
  · exact cover_2563323
#print axioms cover_2563317

def state_2563275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_2563275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563275 := by
  apply coveredState_split_literal (state := state_2563275) 0
    state_2563276 state_2563317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563276
  · exact cover_2563317
#print axioms cover_2563275

def state_2563193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_2563193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563193 := by
  apply coveredState_split_literal (state := state_2563193) 4
    state_2563194 state_2563275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563194
  · exact cover_2563275
#print axioms cover_2563193

def state_2563192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_2563192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563192 := by
  apply coveredState_split_literal (state := state_2563192) 1
    state_2563193 state_2563544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563193
  · exact cover_2563544
#print axioms cover_2563192

def state_2563627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 22)))
theorem cover_2563627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563627 := by
  apply coveredState_split_literal (state := state_2563627) 2
    state_2563628 state_2563685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563628
  · exact cover_2563685
#print axioms cover_2563627

def state_2563625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_2563625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563625 := by
  apply coveredState_split_literal (state := state_2563625) 3
    state_2563626 state_2563627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563626
  · exact cover_2563627
#print axioms cover_2563625

def state_2563587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_2563587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563587 := by
  apply coveredState_split_literal (state := state_2563587) 0
    state_2563588 state_2563625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563588
  · exact cover_2563625
#print axioms cover_2563587

def state_2563832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 55 else 46)))
theorem cover_2563832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563832 := by
  apply coveredState_split_literal (state := state_2563832) 2
    state_2563833 state_2563858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563833
  · exact cover_2563858
#print axioms cover_2563832

def state_2563830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 46)))
theorem cover_2563830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563830 := by
  apply coveredState_split_literal (state := state_2563830) 3
    state_2563831 state_2563832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563831
  · exact cover_2563832
#print axioms cover_2563830

def state_2563812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 46)))
theorem cover_2563812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563812 := by
  apply coveredState_split_literal (state := state_2563812) 0
    state_2563813 state_2563830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563813
  · exact cover_2563830
#print axioms cover_2563812

def state_2563811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 23)))
theorem cover_2563811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563811 := by
  apply coveredState_split_literal (state := state_2563811) 4
    state_2563812 state_2563907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563812
  · exact cover_2563907
#print axioms cover_2563811

def state_2563771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 23)))
theorem cover_2563771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563771 := by
  apply coveredState_split_literal (state := state_2563771) 1
    state_2563772 state_2563811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563772
  · exact cover_2563811
#print axioms cover_2563771

def state_2563980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 23)))
theorem cover_2563980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563980 := by
  apply coveredState_split_literal (state := state_2563980) 4
    state_2563981 state_2564038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563981
  · exact cover_2564038
#print axioms cover_2563980

def state_2563970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 23)))
theorem cover_2563970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563970 := by
  apply coveredState_split_literal (state := state_2563970) 1
    state_2563971 state_2563980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563971
  · exact cover_2563980
#print axioms cover_2563970

def state_2563770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 23)))
theorem cover_2563770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563770 := by
  apply coveredState_split_literal (state := state_2563770) 2
    state_2563771 state_2563970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563771
  · exact cover_2563970
#print axioms cover_2563770

def state_2563768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
theorem cover_2563768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563768 := by
  apply coveredState_split_literal (state := state_2563768) 3
    state_2563769 state_2563770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563769
  · exact cover_2563770
#print axioms cover_2563768
end Mub6.Numerical.CircleFullD0.Forest
