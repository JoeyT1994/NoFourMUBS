import CircleFullInterface
import CircleForestAssembly0507
import CircleForestChunk1986
import CircleForestChunk1997
import CircleForestChunk1998
import CircleForestChunk1999
import CircleForestChunk2000
import CircleForestChunk2001
import CircleForestChunk2002
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2557320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2557320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557320 := by
  apply coveredState_split_literal (state := state_2557320) 1
    state_2557321 state_2557382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557321
  · exact cover_2557382
#print axioms cover_2557320

def state_2557319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2557319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557319 := by
  apply coveredState_split_literal (state := state_2557319) 0
    state_2557320 state_2559977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557320
  · exact cover_2559977
#print axioms cover_2557319

def state_2560077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 25)))
theorem cover_2560077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560077 := by
  apply coveredState_split_literal (state := state_2560077) 3
    state_2560078 state_2560095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560078
  · exact cover_2560095
#print axioms cover_2560077

def state_2560076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 25)))
theorem cover_2560076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560076 := by
  apply coveredState_split_literal (state := state_2560076) 2
    state_2560077 state_2560154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560077
  · exact cover_2560154
#print axioms cover_2560076

def state_2560012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2560012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560012 := by
  apply coveredState_split_literal (state := state_2560012) 4
    state_2560013 state_2560076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560013
  · exact cover_2560076
#print axioms cover_2560012

def state_2560236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 93) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
theorem cover_2560236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560236 := by
  apply coveredState_split_literal (state := state_2560236) 4
    state_2560237 state_2560300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560237
  · exact cover_2560300
#print axioms cover_2560236

def state_2560212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
theorem cover_2560212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560212 := by
  apply coveredState_split_literal (state := state_2560212) 1
    state_2560213 state_2560236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560213
  · exact cover_2560236
#print axioms cover_2560212

def state_2560329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 61 else 49)))
theorem cover_2560329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560329 := by
  apply coveredState_split_literal (state := state_2560329) 1
    state_2560330 state_2560367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560330
  · exact cover_2560367
#print axioms cover_2560329

def state_2560211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 49)))
theorem cover_2560211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560211 := by
  apply coveredState_split_literal (state := state_2560211) 3
    state_2560212 state_2560329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560212
  · exact cover_2560329
#print axioms cover_2560211

def state_2560210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2560210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560210 := by
  apply coveredState_split_literal (state := state_2560210) 2
    state_2560211 state_2560418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560211
  · exact cover_2560418
#print axioms cover_2560210

def state_2560209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2560209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560209 := by
  apply coveredState_split_literal (state := state_2560209) 0
    state_2560210 state_2560467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560210
  · exact cover_2560467
#print axioms cover_2560209

def state_2560169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
theorem cover_2560169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560169 := by
  apply coveredState_split_literal (state := state_2560169) 4
    state_2560170 state_2560209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560170
  · exact cover_2560209
#print axioms cover_2560169

def state_2560526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
theorem cover_2560526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560526 := by
  apply coveredState_split_literal (state := state_2560526) 4
    state_2560527 state_2560566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560527
  · exact cover_2560566
#print axioms cover_2560526

def state_2560525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
theorem cover_2560525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560525 := by
  apply coveredState_split_literal (state := state_2560525) 1
    state_2560526 state_2560623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560526
  · exact cover_2560623
#print axioms cover_2560525

def state_2560524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 49)))
theorem cover_2560524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560524 := by
  apply coveredState_split_literal (state := state_2560524) 3
    state_2560525 state_2560642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560525
  · exact cover_2560642
#print axioms cover_2560524

def state_2560674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 60 else 49)))
theorem cover_2560674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560674 := by
  apply coveredState_split_literal (state := state_2560674) 1
    state_2560675 state_2560730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560675
  · exact cover_2560730
#print axioms cover_2560674

def state_2560673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 49)))
theorem cover_2560673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560673 := by
  apply coveredState_split_literal (state := state_2560673) 3
    state_2560674 state_2560749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560674
  · exact cover_2560749
#print axioms cover_2560673

def state_2560523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2560523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560523 := by
  apply coveredState_split_literal (state := state_2560523) 2
    state_2560524 state_2560673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560524
  · exact cover_2560673
#print axioms cover_2560523

def state_2560522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2560522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560522 := by
  apply coveredState_split_literal (state := state_2560522) 0
    state_2560523 state_2560764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560523
  · exact cover_2560764
#print axioms cover_2560522

def state_2560480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
theorem cover_2560480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560480 := by
  apply coveredState_split_literal (state := state_2560480) 4
    state_2560481 state_2560522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560481
  · exact cover_2560522
#print axioms cover_2560480

def state_2560168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
theorem cover_2560168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560168 := by
  apply coveredState_split_literal (state := state_2560168) 1
    state_2560169 state_2560480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560169
  · exact cover_2560480
#print axioms cover_2560168

def state_2560167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 24)))
theorem cover_2560167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560167 := by
  apply coveredState_split_literal (state := state_2560167) 3
    state_2560168 state_2560797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560168
  · exact cover_2560797
#print axioms cover_2560167

def state_2560166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
theorem cover_2560166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560166 := by
  apply coveredState_split_literal (state := state_2560166) 2
    state_2560167 state_2560848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560167
  · exact cover_2560848
#print axioms cover_2560166

def state_2560914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
theorem cover_2560914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560914 := by
  apply coveredState_split_literal (state := state_2560914) 0
    state_2560915 state_2560976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560915
  · exact cover_2560976
#print axioms cover_2560914

def state_2560983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 50)))
theorem cover_2560983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560983 := by
  apply coveredState_split_literal (state := state_2560983) 2
    state_2560984 state_2561039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560984
  · exact cover_2561039
#print axioms cover_2560983

def state_2560982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
theorem cover_2560982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560982 := by
  apply coveredState_split_literal (state := state_2560982) 4
    state_2560983 state_2561062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560983
  · exact cover_2561062
#print axioms cover_2560982

def state_2560981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
theorem cover_2560981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560981 := by
  apply coveredState_split_literal (state := state_2560981) 0
    state_2560982 state_2561067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560982
  · exact cover_2561067
#print axioms cover_2560981

def state_2560913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
theorem cover_2560913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560913 := by
  apply coveredState_split_literal (state := state_2560913) 1
    state_2560914 state_2560981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2560914
  · exact cover_2560981
#print axioms cover_2560913

def state_2561083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 62 else 50)))
theorem cover_2561083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561083 := by
  apply coveredState_split_literal (state := state_2561083) 1
    state_2561084 state_2561109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561084
  · exact cover_2561109
#print axioms cover_2561083

def state_2561082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 31 else 50)))
theorem cover_2561082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561082 := by
  apply coveredState_split_literal (state := state_2561082) 3
    state_2561083 state_2561148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561083
  · exact cover_2561148
#print axioms cover_2561082

def state_2561081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 50)))
theorem cover_2561081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561081 := by
  apply coveredState_split_literal (state := state_2561081) 2
    state_2561082 state_2561199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561082
  · exact cover_2561199
#print axioms cover_2561081

def state_2561080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 25)))
theorem cover_2561080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2561080 := by
  apply coveredState_split_literal (state := state_2561080) 4
    state_2561081 state_2561220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2561081
  · exact cover_2561220
#print axioms cover_2561080
end Mub6.Numerical.CircleFullD0.Forest
