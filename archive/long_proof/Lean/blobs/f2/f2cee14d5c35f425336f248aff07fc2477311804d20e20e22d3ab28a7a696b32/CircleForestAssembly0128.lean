import CircleFullInterface
import CircleForestAssembly0124
import CircleForestAssembly0127
import CircleForestChunk0497
import CircleForestChunk0498
import CircleForestChunk0499
import CircleForestChunk0500
import CircleForestChunk0501
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1307923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1307923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307923 := by
  apply coveredState_split_literal (state := state_1307923) 2
    state_1307924 state_1308061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307924
  · exact cover_1308061
#print axioms cover_1307923

def state_1307922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_1307922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307922 := by
  apply coveredState_split_literal (state := state_1307922) 1
    state_1307923 state_1308134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307923
  · exact cover_1308134
#print axioms cover_1307922

def state_1308209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 46)))
theorem cover_1308209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308209 := by
  apply coveredState_split_literal (state := state_1308209) 2
    state_1308210 state_1308227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308210
  · exact cover_1308227
#print axioms cover_1308209

def state_1308208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 46)))
theorem cover_1308208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308208 := by
  apply coveredState_split_literal (state := state_1308208) 3
    state_1308209 state_1308280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308209
  · exact cover_1308280
#print axioms cover_1308208

def state_1308207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 46)))
theorem cover_1308207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308207 := by
  apply coveredState_split_literal (state := state_1308207) 0
    state_1308208 state_1308283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308208
  · exact cover_1308283
#print axioms cover_1308207

def state_1308206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 46)))
theorem cover_1308206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308206 := by
  apply coveredState_split_literal (state := state_1308206) 1
    state_1308207 state_1308322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308207
  · exact cover_1308322
#print axioms cover_1308206

def state_1308326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 47)))
theorem cover_1308326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308326 := by
  apply coveredState_split_literal (state := state_1308326) 0
    state_1308327 state_1308382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308327
  · exact cover_1308382
#print axioms cover_1308326

def state_1308325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 47)))
theorem cover_1308325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308325 := by
  apply coveredState_split_literal (state := state_1308325) 1
    state_1308326 state_1308425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308326
  · exact cover_1308425
#print axioms cover_1308325

def state_1308205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 23)))
theorem cover_1308205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308205 := by
  apply coveredState_split_literal (state := state_1308205) 4
    state_1308206 state_1308325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308206
  · exact cover_1308325
#print axioms cover_1308205

def state_1308181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 23)))
theorem cover_1308181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308181 := by
  apply coveredState_split_literal (state := state_1308181) 2
    state_1308182 state_1308205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308182
  · exact cover_1308205
#print axioms cover_1308181

def state_1308180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 23)))
theorem cover_1308180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308180 := by
  apply coveredState_split_literal (state := state_1308180) 3
    state_1308181 state_1308442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308181
  · exact cover_1308442
#print axioms cover_1308180

def state_1308179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 23)))
theorem cover_1308179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308179 := by
  apply coveredState_split_literal (state := state_1308179) 0
    state_1308180 state_1308451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308180
  · exact cover_1308451
#print axioms cover_1308179

def state_1308149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 11)))
theorem cover_1308149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308149 := by
  apply coveredState_split_literal (state := state_1308149) 4
    state_1308150 state_1308179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308150
  · exact cover_1308179
#print axioms cover_1308149

def state_1308519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 46)))
theorem cover_1308519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308519 := by
  apply coveredState_split_literal (state := state_1308519) 1
    state_1308520 state_1308579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308520
  · exact cover_1308579
#print axioms cover_1308519

def state_1308638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 47)))
theorem cover_1308638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308638 := by
  apply coveredState_split_literal (state := state_1308638) 3
    state_1308639 state_1308680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308639
  · exact cover_1308680
#print axioms cover_1308638

def state_1308606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 47)))
theorem cover_1308606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308606 := by
  apply coveredState_split_literal (state := state_1308606) 0
    state_1308607 state_1308638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308607
  · exact cover_1308638
#print axioms cover_1308606

def state_1308605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 47)))
theorem cover_1308605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308605 := by
  apply coveredState_split_literal (state := state_1308605) 2
    state_1308606 state_1308735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308606
  · exact cover_1308735
#print axioms cover_1308605

def state_1308604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 47)))
theorem cover_1308604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308604 := by
  apply coveredState_split_literal (state := state_1308604) 1
    state_1308605 state_1308742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308605
  · exact cover_1308742
#print axioms cover_1308604

def state_1308518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 23)))
theorem cover_1308518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308518 := by
  apply coveredState_split_literal (state := state_1308518) 4
    state_1308519 state_1308604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308519
  · exact cover_1308604
#print axioms cover_1308518

def state_1308517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 23)))
theorem cover_1308517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308517 := by
  apply coveredState_split_literal (state := state_1308517) 3
    state_1308518 state_1308783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308518
  · exact cover_1308783
#print axioms cover_1308517

def state_1308835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 47)))
theorem cover_1308835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308835 := by
  apply coveredState_split_literal (state := state_1308835) 0
    state_1308836 state_1308899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308836
  · exact cover_1308899
#print axioms cover_1308835

def state_1308834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 47)))
theorem cover_1308834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308834 := by
  apply coveredState_split_literal (state := state_1308834) 2
    state_1308835 state_1308900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308835
  · exact cover_1308900
#print axioms cover_1308834

def state_1308833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 47)))
theorem cover_1308833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308833 := by
  apply coveredState_split_literal (state := state_1308833) 1
    state_1308834 state_1308939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308834
  · exact cover_1308939
#print axioms cover_1308833

def state_1308805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 23)))
theorem cover_1308805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308805 := by
  apply coveredState_split_literal (state := state_1308805) 4
    state_1308806 state_1308833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308806
  · exact cover_1308833
#print axioms cover_1308805

def state_1308804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 23)))
theorem cover_1308804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308804 := by
  apply coveredState_split_literal (state := state_1308804) 3
    state_1308805 state_1308970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308805
  · exact cover_1308970
#print axioms cover_1308804

def state_1308516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 23)))
theorem cover_1308516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308516 := by
  apply coveredState_split_literal (state := state_1308516) 0
    state_1308517 state_1308804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308517
  · exact cover_1308804
#print axioms cover_1308516

def state_1308490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 11)))
theorem cover_1308490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308490 := by
  apply coveredState_split_literal (state := state_1308490) 4
    state_1308491 state_1308516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308491
  · exact cover_1308516
#print axioms cover_1308490

def state_1308148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
theorem cover_1308148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308148 := by
  apply coveredState_split_literal (state := state_1308148) 2
    state_1308149 state_1308490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308149
  · exact cover_1308490
#print axioms cover_1308148

def state_1308147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
theorem cover_1308147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308147 := by
  apply coveredState_split_literal (state := state_1308147) 1
    state_1308148 state_1309031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308148
  · exact cover_1309031
#print axioms cover_1308147

def state_1307921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1307921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307921 := by
  apply coveredState_split_literal (state := state_1307921) 3
    state_1307922 state_1308147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307922
  · exact cover_1308147
#print axioms cover_1307921

def state_1305321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_1305321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305321 := by
  apply coveredState_split_literal (state := state_1305321) 0
    state_1305322 state_1307921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305322
  · exact cover_1307921
#print axioms cover_1305321

def state_1305235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_1305235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305235 := by
  apply coveredState_split_literal (state := state_1305235) 4
    state_1305236 state_1305321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305236
  · exact cover_1305321
#print axioms cover_1305235
end Mub6.Numerical.CircleFullD0.Forest
