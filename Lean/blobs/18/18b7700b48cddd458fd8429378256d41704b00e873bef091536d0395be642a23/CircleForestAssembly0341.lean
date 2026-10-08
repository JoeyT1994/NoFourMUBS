import CircleFullInterface
import CircleForestAssembly0295
import CircleForestAssembly0340
import CircleForestChunk1320
import CircleForestChunk1321
import CircleForestChunk1322
import CircleForestChunk1323
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1572522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1572522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572522 := by
  apply coveredState_split_literal (state := state_1572522) 3
    state_1572523 state_1572862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572523
  · exact cover_1572862
#print axioms cover_1572522

def state_1570134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1570134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570134 := by
  apply coveredState_split_literal (state := state_1570134) 2
    state_1570135 state_1572522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570135
  · exact cover_1572522
#print axioms cover_1570134

def state_1617459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1617459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617459 := by
  apply coveredState_split_literal (state := state_1617459) 1
    state_1617460 state_1617517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617460
  · exact cover_1617517
#print axioms cover_1617459

def state_1617588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1617588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617588 := by
  apply coveredState_split_literal (state := state_1617588) 3
    state_1617589 state_1617612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617589
  · exact cover_1617612
#print axioms cover_1617588

def state_1617578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1617578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617578 := by
  apply coveredState_split_literal (state := state_1617578) 2
    state_1617579 state_1617588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617579
  · exact cover_1617588
#print axioms cover_1617578

def state_1617538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1617538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617538 := by
  apply coveredState_split_literal (state := state_1617538) 1
    state_1617539 state_1617578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617539
  · exact cover_1617578
#print axioms cover_1617538

def state_1617458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1617458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617458 := by
  apply coveredState_split_literal (state := state_1617458) 0
    state_1617459 state_1617538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617459
  · exact cover_1617538
#print axioms cover_1617458

def state_1617664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1617664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617664 := by
  apply coveredState_split_literal (state := state_1617664) 1
    state_1617665 state_1617700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617665
  · exact cover_1617700
#print axioms cover_1617664

def state_1617793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1617793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617793 := by
  apply coveredState_split_literal (state := state_1617793) 2
    state_1617794 state_1617799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617794
  · exact cover_1617799
#print axioms cover_1617793

def state_1617729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1617729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617729 := by
  apply coveredState_split_literal (state := state_1617729) 1
    state_1617730 state_1617793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617730
  · exact cover_1617793
#print axioms cover_1617729

def state_1617663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1617663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617663 := by
  apply coveredState_split_literal (state := state_1617663) 0
    state_1617664 state_1617729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617664
  · exact cover_1617729
#print axioms cover_1617663

def state_1617457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1617457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617457 := by
  apply coveredState_split_literal (state := state_1617457) 4
    state_1617458 state_1617663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617458
  · exact cover_1617663
#print axioms cover_1617457

def state_1617895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1617895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617895 := by
  apply coveredState_split_literal (state := state_1617895) 1
    state_1617896 state_1617937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617896
  · exact cover_1617937
#print axioms cover_1617895

def state_1617859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1617859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617859 := by
  apply coveredState_split_literal (state := state_1617859) 0
    state_1617860 state_1617895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617860
  · exact cover_1617895
#print axioms cover_1617859

def state_1617972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1617972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617972 := by
  apply coveredState_split_literal (state := state_1617972) 1
    state_1617973 state_1618036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617973
  · exact cover_1618036
#print axioms cover_1617972

def state_1617960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1617960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617960 := by
  apply coveredState_split_literal (state := state_1617960) 0
    state_1617961 state_1617972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617961
  · exact cover_1617972
#print axioms cover_1617960

def state_1617858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1617858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617858 := by
  apply coveredState_split_literal (state := state_1617858) 4
    state_1617859 state_1617960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617859
  · exact cover_1617960
#print axioms cover_1617858

def state_1617456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1617456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617456 := by
  apply coveredState_split_literal (state := state_1617456) 3
    state_1617457 state_1617858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617457
  · exact cover_1617858
#print axioms cover_1617456

def state_1618188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 16)))
theorem cover_1618188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618188 := by
  apply coveredState_split_literal (state := state_1618188) 4
    state_1618189 state_1618248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618189
  · exact cover_1618248
#print axioms cover_1618188

def state_1618186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 16)))
theorem cover_1618186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618186 := by
  apply coveredState_split_literal (state := state_1618186) 0
    state_1618187 state_1618188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618187
  · exact cover_1618188
#print axioms cover_1618186

def state_1618172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 16)))
theorem cover_1618172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618172 := by
  apply coveredState_split_literal (state := state_1618172) 2
    state_1618173 state_1618186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618173
  · exact cover_1618186
#print axioms cover_1618172

def state_1618154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 16)))
theorem cover_1618154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618154 := by
  apply coveredState_split_literal (state := state_1618154) 1
    state_1618155 state_1618172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618155
  · exact cover_1618172
#print axioms cover_1618154

def state_1618146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 16)))
theorem cover_1618146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618146 := by
  apply coveredState_split_literal (state := state_1618146) 3
    state_1618147 state_1618154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618147
  · exact cover_1618154
#print axioms cover_1618146

def state_1618145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
theorem cover_1618145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618145 := by
  apply coveredState_split_literal (state := state_1618145) 4
    state_1618146 state_1618253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618146
  · exact cover_1618253
#print axioms cover_1618145

def state_1618277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 32)))
theorem cover_1618277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618277 := by
  apply coveredState_split_literal (state := state_1618277) 3
    state_1618278 state_1618291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618278
  · exact cover_1618291
#print axioms cover_1618277

def state_1618276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 16)))
theorem cover_1618276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618276 := by
  apply coveredState_split_literal (state := state_1618276) 4
    state_1618277 state_1618344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618277
  · exact cover_1618344
#print axioms cover_1618276

def state_1618275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 16)))
theorem cover_1618275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618275 := by
  apply coveredState_split_literal (state := state_1618275) 0
    state_1618276 state_1618361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618276
  · exact cover_1618361
#print axioms cover_1618275

def state_1618273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 16)))
theorem cover_1618273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618273 := by
  apply coveredState_split_literal (state := state_1618273) 2
    state_1618274 state_1618275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618274
  · exact cover_1618275
#print axioms cover_1618273

def state_1618271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 16)))
theorem cover_1618271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618271 := by
  apply coveredState_split_literal (state := state_1618271) 1
    state_1618272 state_1618273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618272
  · exact cover_1618273
#print axioms cover_1618271

def state_1618259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 16)))
theorem cover_1618259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618259 := by
  apply coveredState_split_literal (state := state_1618259) 3
    state_1618260 state_1618271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618260
  · exact cover_1618271
#print axioms cover_1618259

def state_1618258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
theorem cover_1618258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618258 := by
  apply coveredState_split_literal (state := state_1618258) 4
    state_1618259 state_1618362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618259
  · exact cover_1618362
#print axioms cover_1618258

def state_1618144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
theorem cover_1618144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618144 := by
  apply coveredState_split_literal (state := state_1618144) 0
    state_1618145 state_1618258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618145
  · exact cover_1618258
#print axioms cover_1618144
end Mub6.Numerical.CircleFullD0.Forest
