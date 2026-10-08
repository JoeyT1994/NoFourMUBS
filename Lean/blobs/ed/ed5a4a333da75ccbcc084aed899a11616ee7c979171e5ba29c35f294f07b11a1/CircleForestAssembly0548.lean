import CircleFullInterface
import CircleForestChunk2161
import CircleForestChunk2162
import CircleForestChunk2163
import CircleForestChunk2164
import CircleForestChunk2165
import CircleForestChunk2166
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2599452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2599452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599452 := by
  apply coveredState_split_literal (state := state_2599452) 0
    state_2599453 state_2599504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599453
  · exact cover_2599504
#print axioms cover_2599452

def state_2599451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_2599451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599451 := by
  apply coveredState_split_literal (state := state_2599451) 4
    state_2599452 state_2599519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599452
  · exact cover_2599519
#print axioms cover_2599451

def state_2599443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_2599443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599443 := by
  apply coveredState_split_literal (state := state_2599443) 3
    state_2599444 state_2599451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599444
  · exact cover_2599451
#print axioms cover_2599443

def state_2599403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2599403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599403 := by
  apply coveredState_split_literal (state := state_2599403) 2
    state_2599404 state_2599443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599404
  · exact cover_2599443
#print axioms cover_2599403

def state_2599554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_2599554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599554 := by
  apply coveredState_split_literal (state := state_2599554) 4
    state_2599555 state_2599598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599555
  · exact cover_2599598
#print axioms cover_2599554

def state_2599694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_2599694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599694 := by
  apply coveredState_split_literal (state := state_2599694) 2
    state_2599695 state_2599726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599695
  · exact cover_2599726
#print axioms cover_2599694

def state_2599830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_2599830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599830 := by
  apply coveredState_split_literal (state := state_2599830) 4
    state_2599831 state_2599852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599831
  · exact cover_2599852
#print axioms cover_2599830

def state_2599962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
theorem cover_2599962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599962 := by
  apply coveredState_split_literal (state := state_2599962) 2
    state_2599963 state_2599994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599963
  · exact cover_2599994
#print axioms cover_2599962

def state_2600210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 63)))
theorem cover_2600210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600210 := by
  apply coveredState_split_literal (state := state_2600210) 2
    state_2600211 state_2600258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600211
  · exact cover_2600258
#print axioms cover_2600210

def state_2600337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 51 else 63)))
theorem cover_2600337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600337 := by
  apply coveredState_split_literal (state := state_2600337) 3
    state_2600338 state_2600365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600338
  · exact cover_2600365
#print axioms cover_2600337

def state_2600307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 63)))
theorem cover_2600307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600307 := by
  apply coveredState_split_literal (state := state_2600307) 2
    state_2600308 state_2600337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600308
  · exact cover_2600337
#print axioms cover_2600307

def state_2600209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 63)))
theorem cover_2600209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600209 := by
  apply coveredState_split_literal (state := state_2600209) 0
    state_2600210 state_2600307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600210
  · exact cover_2600307
#print axioms cover_2600209

def state_2600169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 31)))
theorem cover_2600169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600169 := by
  apply coveredState_split_literal (state := state_2600169) 4
    state_2600170 state_2600209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600170
  · exact cover_2600209
#print axioms cover_2600169

def state_2600109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 31)))
theorem cover_2600109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600109 := by
  apply coveredState_split_literal (state := state_2600109) 1
    state_2600110 state_2600169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600110
  · exact cover_2600169
#print axioms cover_2600109

def state_2600079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 25 else 31)))
theorem cover_2600079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600079 := by
  apply coveredState_split_literal (state := state_2600079) 3
    state_2600080 state_2600109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600080
  · exact cover_2600109
#print axioms cover_2600079

def state_2600047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
theorem cover_2600047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600047 := by
  apply coveredState_split_literal (state := state_2600047) 2
    state_2600048 state_2600079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600048
  · exact cover_2600079
#print axioms cover_2600047

def state_2599961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
theorem cover_2599961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599961 := by
  apply coveredState_split_literal (state := state_2599961) 0
    state_2599962 state_2600047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599962
  · exact cover_2600047
#print axioms cover_2599961

def state_2599907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_2599907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599907 := by
  apply coveredState_split_literal (state := state_2599907) 4
    state_2599908 state_2599961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599908
  · exact cover_2599961
#print axioms cover_2599907

def state_2599829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_2599829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599829 := by
  apply coveredState_split_literal (state := state_2599829) 1
    state_2599830 state_2599907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599830
  · exact cover_2599907
#print axioms cover_2599829

def state_2599799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
theorem cover_2599799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599799 := by
  apply coveredState_split_literal (state := state_2599799) 3
    state_2599800 state_2599829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599800
  · exact cover_2599829
#print axioms cover_2599799

def state_2599767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_2599767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599767 := by
  apply coveredState_split_literal (state := state_2599767) 2
    state_2599768 state_2599799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599768
  · exact cover_2599799
#print axioms cover_2599767

def state_2599693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_2599693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599693 := by
  apply coveredState_split_literal (state := state_2599693) 0
    state_2599694 state_2599767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599694
  · exact cover_2599767
#print axioms cover_2599693

def state_2599645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_2599645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599645 := by
  apply coveredState_split_literal (state := state_2599645) 4
    state_2599646 state_2599693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599646
  · exact cover_2599693
#print axioms cover_2599645

def state_2599553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_2599553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599553 := by
  apply coveredState_split_literal (state := state_2599553) 1
    state_2599554 state_2599645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599554
  · exact cover_2599645
#print axioms cover_2599553

def state_2600436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 15)))
theorem cover_2600436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600436 := by
  apply coveredState_split_literal (state := state_2600436) 0
    state_2600437 state_2600446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600437
  · exact cover_2600446
#print axioms cover_2600436

def state_2600430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
theorem cover_2600430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600430 := by
  apply coveredState_split_literal (state := state_2600430) 4
    state_2600431 state_2600436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600431
  · exact cover_2600436
#print axioms cover_2600430

def state_2600424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
theorem cover_2600424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600424 := by
  apply coveredState_split_literal (state := state_2600424) 1
    state_2600425 state_2600430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600425
  · exact cover_2600430
#print axioms cover_2600424

def state_2599552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_2599552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599552 := by
  apply coveredState_split_literal (state := state_2599552) 3
    state_2599553 state_2600424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599553
  · exact cover_2600424
#print axioms cover_2599552

def state_2600520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 15)))
theorem cover_2600520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600520 := by
  apply coveredState_split_literal (state := state_2600520) 0
    state_2600521 state_2600528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600521
  · exact cover_2600528
#print axioms cover_2600520

def state_2600516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
theorem cover_2600516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600516 := by
  apply coveredState_split_literal (state := state_2600516) 4
    state_2600517 state_2600520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600517
  · exact cover_2600520
#print axioms cover_2600516

def state_2600508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
theorem cover_2600508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600508 := by
  apply coveredState_split_literal (state := state_2600508) 1
    state_2600509 state_2600516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600509
  · exact cover_2600516
#print axioms cover_2600508

def state_2600507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
theorem cover_2600507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600507 := by
  apply coveredState_split_literal (state := state_2600507) 3
    state_2600508 state_2600589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600508
  · exact cover_2600589
#print axioms cover_2600507
end Mub6.Numerical.CircleFullD0.Forest
