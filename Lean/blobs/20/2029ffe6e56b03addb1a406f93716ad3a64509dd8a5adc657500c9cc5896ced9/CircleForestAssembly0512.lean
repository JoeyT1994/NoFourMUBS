import CircleFullInterface
import CircleForestAssembly0511
import CircleForestChunk2011
import CircleForestChunk2013
import CircleForestChunk2014
import CircleForestChunk2015
import CircleForestChunk2016
import CircleForestChunk2017
import CircleForestChunk2018
import CircleForestChunk2019
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2563720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
theorem cover_2563720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563720 := by
  apply coveredState_split_literal (state := state_2563720) 0
    state_2563721 state_2563768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563721
  · exact cover_2563768
#print axioms cover_2563720

def state_2563586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2563586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563586 := by
  apply coveredState_split_literal (state := state_2563586) 4
    state_2563587 state_2563720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563587
  · exact cover_2563720
#print axioms cover_2563586

def state_2564086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 22)))
theorem cover_2564086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564086 := by
  apply coveredState_split_literal (state := state_2564086) 2
    state_2564087 state_2564098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564087
  · exact cover_2564098
#print axioms cover_2564086

def state_2564068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_2564068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564068 := by
  apply coveredState_split_literal (state := state_2564068) 3
    state_2564069 state_2564086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564069
  · exact cover_2564086
#print axioms cover_2564068

def state_2564056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_2564056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564056 := by
  apply coveredState_split_literal (state := state_2564056) 0
    state_2564057 state_2564068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564057
  · exact cover_2564068
#print axioms cover_2564056

def state_2564226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 23)))
theorem cover_2564226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564226 := by
  apply coveredState_split_literal (state := state_2564226) 4
    state_2564227 state_2564260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564227
  · exact cover_2564260
#print axioms cover_2564226

def state_2564401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 63 else (if j.val < 4 then 55 else 46)))
theorem cover_2564401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564401 := by
  apply coveredState_split_literal (state := state_2564401) 4
    state_2564402 state_2564441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564402
  · exact cover_2564441
#print axioms cover_2564401

def state_2564345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 55 else 46)))
theorem cover_2564345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564345 := by
  apply coveredState_split_literal (state := state_2564345) 2
    state_2564346 state_2564401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564346
  · exact cover_2564401
#print axioms cover_2564345

def state_2564325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
theorem cover_2564325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564325 := by
  apply coveredState_split_literal (state := state_2564325) 3
    state_2564326 state_2564345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564326
  · exact cover_2564345
#print axioms cover_2564325

def state_2564297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
theorem cover_2564297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564297 := by
  apply coveredState_split_literal (state := state_2564297) 0
    state_2564298 state_2564325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564298
  · exact cover_2564325
#print axioms cover_2564297

def state_2564296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
theorem cover_2564296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564296 := by
  apply coveredState_split_literal (state := state_2564296) 1
    state_2564297 state_2564478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564297
  · exact cover_2564478
#print axioms cover_2564296

def state_2564295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 23)))
theorem cover_2564295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564295 := by
  apply coveredState_split_literal (state := state_2564295) 4
    state_2564296 state_2564505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564296
  · exact cover_2564505
#print axioms cover_2564295

def state_2564225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 23)))
theorem cover_2564225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564225 := by
  apply coveredState_split_literal (state := state_2564225) 2
    state_2564226 state_2564295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564226
  · exact cover_2564295
#print axioms cover_2564225

def state_2564189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
theorem cover_2564189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564189 := by
  apply coveredState_split_literal (state := state_2564189) 3
    state_2564190 state_2564225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564190
  · exact cover_2564225
#print axioms cover_2564189

def state_2564151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
theorem cover_2564151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564151 := by
  apply coveredState_split_literal (state := state_2564151) 0
    state_2564152 state_2564189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564152
  · exact cover_2564189
#print axioms cover_2564151

def state_2564055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2564055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564055 := by
  apply coveredState_split_literal (state := state_2564055) 4
    state_2564056 state_2564151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564056
  · exact cover_2564151
#print axioms cover_2564055

def state_2563585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2563585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563585 := by
  apply coveredState_split_literal (state := state_2563585) 1
    state_2563586 state_2564055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563586
  · exact cover_2564055
#print axioms cover_2563585

def state_2563191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_2563191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563191 := by
  apply coveredState_split_literal (state := state_2563191) 2
    state_2563192 state_2563585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563192
  · exact cover_2563585
#print axioms cover_2563191

def state_2563137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_2563137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563137 := by
  apply coveredState_split_literal (state := state_2563137) 4
    state_2563138 state_2563191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563138
  · exact cover_2563191
#print axioms cover_2563137

def state_2563065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2563065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563065 := by
  apply coveredState_split_literal (state := state_2563065) 3
    state_2563066 state_2563137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563066
  · exact cover_2563137
#print axioms cover_2563065

def state_2563064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2563064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563064 := by
  apply coveredState_split_literal (state := state_2563064) 1
    state_2563065 state_2564548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2563065
  · exact cover_2564548
#print axioms cover_2563064

def state_2564685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 23)))
theorem cover_2564685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564685 := by
  apply coveredState_split_literal (state := state_2564685) 2
    state_2564686 state_2564703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564686
  · exact cover_2564703
#print axioms cover_2564685

def state_2564683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_2564683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564683 := by
  apply coveredState_split_literal (state := state_2564683) 3
    state_2564684 state_2564685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564684
  · exact cover_2564685
#print axioms cover_2564683

def state_2564633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_2564633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564633 := by
  apply coveredState_split_literal (state := state_2564633) 4
    state_2564634 state_2564683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564634
  · exact cover_2564683
#print axioms cover_2564633

def state_2564632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_2564632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564632 := by
  apply coveredState_split_literal (state := state_2564632) 1
    state_2564633 state_2564758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564633
  · exact cover_2564758
#print axioms cover_2564632

def state_2564631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_2564631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564631 := by
  apply coveredState_split_literal (state := state_2564631) 0
    state_2564632 state_2564779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564632
  · exact cover_2564779
#print axioms cover_2564631

def state_2564796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2564796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564796 := by
  apply coveredState_split_literal (state := state_2564796) 4
    state_2564797 state_2564816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564797
  · exact cover_2564816
#print axioms cover_2564796

def state_2564866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 22)))
theorem cover_2564866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564866 := by
  apply coveredState_split_literal (state := state_2564866) 2
    state_2564867 state_2564894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564867
  · exact cover_2564894
#print axioms cover_2564866

def state_2564864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_2564864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564864 := by
  apply coveredState_split_literal (state := state_2564864) 3
    state_2564865 state_2564866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564865
  · exact cover_2564866
#print axioms cover_2564864

def state_2564940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 23)))
theorem cover_2564940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564940 := by
  apply coveredState_split_literal (state := state_2564940) 4
    state_2564941 state_2564992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2564941
  · exact cover_2564992
#print axioms cover_2564940

def state_2565020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 55 else 46)))
theorem cover_2565020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565020 := by
  apply coveredState_split_literal (state := state_2565020) 2
    state_2565021 state_2565070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565021
  · exact cover_2565070
#print axioms cover_2565020

def state_2565018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
theorem cover_2565018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565018 := by
  apply coveredState_split_literal (state := state_2565018) 3
    state_2565019 state_2565020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2565019
  · exact cover_2565020
#print axioms cover_2565018
end Mub6.Numerical.CircleFullD0.Forest
