import CircleFullInterface
import CircleForestAssembly0074
import CircleForestAssembly0075
import CircleForestChunk0302
import CircleForestChunk0303
import CircleForestChunk0304
import CircleForestChunk0305
import CircleForestChunk0306
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1008696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1008696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008696 := by
  apply coveredState_split_literal (state := state_1008696) 2
    state_1008697 state_1009652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008697
  · exact cover_1009652
#print axioms cover_1008696

def state_1008695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1008695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008695 := by
  apply coveredState_split_literal (state := state_1008695) 1
    state_1008696 state_1010093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008696
  · exact cover_1010093
#print axioms cover_1008695

def state_1008625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_1008625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008625 := by
  apply coveredState_split_literal (state := state_1008625) 4
    state_1008626 state_1008695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008626
  · exact cover_1008695
#print axioms cover_1008625

def state_1010186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_1010186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010186 := by
  apply coveredState_split_literal (state := state_1010186) 3
    state_1010187 state_1010220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010187
  · exact cover_1010220
#print axioms cover_1010186

def state_1010138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_1010138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010138 := by
  apply coveredState_split_literal (state := state_1010138) 0
    state_1010139 state_1010186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010139
  · exact cover_1010186
#print axioms cover_1010138

def state_1010128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_1010128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010128 := by
  apply coveredState_split_literal (state := state_1010128) 2
    state_1010129 state_1010138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010129
  · exact cover_1010138
#print axioms cover_1010128

def state_1010127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_1010127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010127 := by
  apply coveredState_split_literal (state := state_1010127) 1
    state_1010128 state_1010259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010128
  · exact cover_1010259
#print axioms cover_1010127

def state_1010378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 45)))
theorem cover_1010378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010378 := by
  apply coveredState_split_literal (state := state_1010378) 0
    state_1010379 state_1010440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010379
  · exact cover_1010440
#print axioms cover_1010378

def state_1010366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
theorem cover_1010366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010366 := by
  apply coveredState_split_literal (state := state_1010366) 2
    state_1010367 state_1010378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010367
  · exact cover_1010378
#print axioms cover_1010366

def state_1010365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
theorem cover_1010365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010365 := by
  apply coveredState_split_literal (state := state_1010365) 1
    state_1010366 state_1010457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010366
  · exact cover_1010457
#print axioms cover_1010365

def state_1010364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_1010364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010364 := by
  apply coveredState_split_literal (state := state_1010364) 3
    state_1010365 state_1010464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010365
  · exact cover_1010464
#print axioms cover_1010364

def state_1010340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_1010340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010340 := by
  apply coveredState_split_literal (state := state_1010340) 4
    state_1010341 state_1010364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010341
  · exact cover_1010364
#print axioms cover_1010340

def state_1010339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_1010339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010339 := by
  apply coveredState_split_literal (state := state_1010339) 0
    state_1010340 state_1010481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010340
  · exact cover_1010481
#print axioms cover_1010339

def state_1010329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
theorem cover_1010329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010329 := by
  apply coveredState_split_literal (state := state_1010329) 2
    state_1010330 state_1010339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010330
  · exact cover_1010339
#print axioms cover_1010329

def state_1010328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
theorem cover_1010328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010328 := by
  apply coveredState_split_literal (state := state_1010328) 1
    state_1010329 state_1010496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010329
  · exact cover_1010496
#print axioms cover_1010328

def state_1010327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_1010327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010327 := by
  apply coveredState_split_literal (state := state_1010327) 3
    state_1010328 state_1010503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010328
  · exact cover_1010503
#print axioms cover_1010327

def state_1010531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 23)))
theorem cover_1010531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010531 := by
  apply coveredState_split_literal (state := state_1010531) 4
    state_1010532 state_1010585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010532
  · exact cover_1010585
#print axioms cover_1010531

def state_1010530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 23)))
theorem cover_1010530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010530 := by
  apply coveredState_split_literal (state := state_1010530) 0
    state_1010531 state_1010600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010531
  · exact cover_1010600
#print axioms cover_1010530

def state_1010522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
theorem cover_1010522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010522 := by
  apply coveredState_split_literal (state := state_1010522) 2
    state_1010523 state_1010530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010523
  · exact cover_1010530
#print axioms cover_1010522

def state_1010521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
theorem cover_1010521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010521 := by
  apply coveredState_split_literal (state := state_1010521) 1
    state_1010522 state_1010613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010522
  · exact cover_1010613
#print axioms cover_1010521

def state_1010520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_1010520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010520 := by
  apply coveredState_split_literal (state := state_1010520) 3
    state_1010521 state_1010660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010521
  · exact cover_1010660
#print axioms cover_1010520

def state_1010326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1010326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010326 := by
  apply coveredState_split_literal (state := state_1010326) 4
    state_1010327 state_1010520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010327
  · exact cover_1010520
#print axioms cover_1010326

def state_1010266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1010266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010266 := by
  apply coveredState_split_literal (state := state_1010266) 0
    state_1010267 state_1010326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010267
  · exact cover_1010326
#print axioms cover_1010266

def state_1010710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_1010710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010710 := by
  apply coveredState_split_literal (state := state_1010710) 3
    state_1010711 state_1010766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010711
  · exact cover_1010766
#print axioms cover_1010710

def state_1010674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1010674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010674 := by
  apply coveredState_split_literal (state := state_1010674) 4
    state_1010675 state_1010710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010675
  · exact cover_1010710
#print axioms cover_1010674

def state_1010668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1010668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010668 := by
  apply coveredState_split_literal (state := state_1010668) 0
    state_1010669 state_1010674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010669
  · exact cover_1010674
#print axioms cover_1010668

def state_1010667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_1010667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010667 := by
  apply coveredState_split_literal (state := state_1010667) 2
    state_1010668 state_1010775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010668
  · exact cover_1010775
#print axioms cover_1010667

def state_1010666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_1010666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010666 := by
  apply coveredState_split_literal (state := state_1010666) 1
    state_1010667 state_1010784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010667
  · exact cover_1010784
#print axioms cover_1010666

def state_1010665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1010665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010665 := by
  apply coveredState_split_literal (state := state_1010665) 3
    state_1010666 state_1010795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010666
  · exact cover_1010795
#print axioms cover_1010665

def state_1010664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1010664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010664 := by
  apply coveredState_split_literal (state := state_1010664) 4
    state_1010665 state_1010816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010665
  · exact cover_1010816
#print axioms cover_1010664

def state_1010934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 44)))
theorem cover_1010934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010934 := by
  apply coveredState_split_literal (state := state_1010934) 2
    state_1010935 state_1010968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010935
  · exact cover_1010968
#print axioms cover_1010934

def state_1010933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 44)))
theorem cover_1010933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010933 := by
  apply coveredState_split_literal (state := state_1010933) 1
    state_1010934 state_1011025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010934
  · exact cover_1011025
#print axioms cover_1010933
end Mub6.Numerical.CircleFullD0.Forest
