import CircleFullInterface
import CircleForestAssembly0170
import CircleForestChunk0650
import CircleForestChunk0652
import CircleForestChunk0653
import CircleForestChunk0654
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1345172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1345172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345172 := by
  apply coveredState_split_literal (state := state_1345172) 3
    state_1345173 state_1345182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345173
  · exact cover_1345182
#print axioms cover_1345172

def state_1345171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1345171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345171 := by
  apply coveredState_split_literal (state := state_1345171) 0
    state_1345172 state_1345459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345172
  · exact cover_1345459
#print axioms cover_1345171

def state_1345149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1345149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345149 := by
  apply coveredState_split_literal (state := state_1345149) 2
    state_1345150 state_1345171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345150
  · exact cover_1345171
#print axioms cover_1345149

def state_1345085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1345085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345085 := by
  apply coveredState_split_literal (state := state_1345085) 1
    state_1345086 state_1345149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345086
  · exact cover_1345149
#print axioms cover_1345085

def state_1345492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1345492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345492 := by
  apply coveredState_split_literal (state := state_1345492) 2
    state_1345493 state_1345522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345493
  · exact cover_1345522
#print axioms cover_1345492

def state_1345491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1345491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345491 := by
  apply coveredState_split_literal (state := state_1345491) 4
    state_1345492 state_1345557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345492
  · exact cover_1345557
#print axioms cover_1345491

def state_1345485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1345485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345485 := by
  apply coveredState_split_literal (state := state_1345485) 3
    state_1345486 state_1345491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345486
  · exact cover_1345491
#print axioms cover_1345485

def state_1345484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1345484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345484 := by
  apply coveredState_split_literal (state := state_1345484) 0
    state_1345485 state_1345560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345485
  · exact cover_1345560
#print axioms cover_1345484

def state_1345478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1345478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345478 := by
  apply coveredState_split_literal (state := state_1345478) 2
    state_1345479 state_1345484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345479
  · exact cover_1345484
#print axioms cover_1345478

def state_1345468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1345468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345468 := by
  apply coveredState_split_literal (state := state_1345468) 1
    state_1345469 state_1345478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345469
  · exact cover_1345478
#print axioms cover_1345468

def state_1345084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1345084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345084 := by
  apply coveredState_split_literal (state := state_1345084) 4
    state_1345085 state_1345468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345085
  · exact cover_1345468
#print axioms cover_1345084

def state_1345658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1345658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345658 := by
  apply coveredState_split_literal (state := state_1345658) 1
    state_1345659 state_1345676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345659
  · exact cover_1345676
#print axioms cover_1345658

def state_1345614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 25)))
theorem cover_1345614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345614 := by
  apply coveredState_split_literal (state := state_1345614) 2
    state_1345615 state_1345658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345615
  · exact cover_1345658
#print axioms cover_1345614

def state_1345613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 25)))
theorem cover_1345613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345613 := by
  apply coveredState_split_literal (state := state_1345613) 3
    state_1345614 state_1345735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345614
  · exact cover_1345735
#print axioms cover_1345613

def state_1345607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1345607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345607 := by
  apply coveredState_split_literal (state := state_1345607) 4
    state_1345608 state_1345613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345608
  · exact cover_1345613
#print axioms cover_1345607

def state_1345606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1345606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345606 := by
  apply coveredState_split_literal (state := state_1345606) 0
    state_1345607 state_1345738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345607
  · exact cover_1345738
#print axioms cover_1345606

def state_1345596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1345596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345596 := by
  apply coveredState_split_literal (state := state_1345596) 2
    state_1345597 state_1345606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345597
  · exact cover_1345606
#print axioms cover_1345596

def state_1345570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1345570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345570 := by
  apply coveredState_split_literal (state := state_1345570) 1
    state_1345571 state_1345596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345571
  · exact cover_1345596
#print axioms cover_1345570

def state_1345569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1345569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345569 := by
  apply coveredState_split_literal (state := state_1345569) 4
    state_1345570 state_1345751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345570
  · exact cover_1345751
#print axioms cover_1345569

def state_1345083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1345083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345083 := by
  apply coveredState_split_literal (state := state_1345083) 3
    state_1345084 state_1345569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345084
  · exact cover_1345569
#print axioms cover_1345083

def state_1345082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1345082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345082 := by
  apply coveredState_split_literal (state := state_1345082) 0
    state_1345083 state_1345792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345083
  · exact cover_1345792
#print axioms cover_1345082

def state_1345081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1345081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345081 := by
  apply coveredState_split_literal (state := state_1345081) 4
    state_1345082 state_1345813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345082
  · exact cover_1345813
#print axioms cover_1345081

def state_1345080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1345080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345080 := by
  apply coveredState_split_literal (state := state_1345080) 3
    state_1345081 state_1345826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345081
  · exact cover_1345826
#print axioms cover_1345080

def state_1345836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1345836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345836 := by
  apply coveredState_split_literal (state := state_1345836) 2
    state_1345837 state_1345900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345837
  · exact cover_1345900
#print axioms cover_1345836

def state_1345835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1345835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345835 := by
  apply coveredState_split_literal (state := state_1345835) 0
    state_1345836 state_1345905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345836
  · exact cover_1345905
#print axioms cover_1345835

def state_1345834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1345834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345834 := by
  apply coveredState_split_literal (state := state_1345834) 4
    state_1345835 state_1345946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345835
  · exact cover_1345946
#print axioms cover_1345834

def state_1345833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1345833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345833 := by
  apply coveredState_split_literal (state := state_1345833) 3
    state_1345834 state_1345953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345834
  · exact cover_1345953
#print axioms cover_1345833

def state_1345079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1345079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345079 := by
  apply coveredState_split_literal (state := state_1345079) 2
    state_1345080 state_1345833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345080
  · exact cover_1345833
#print axioms cover_1345079

def state_1345027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1345027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345027 := by
  apply coveredState_split_literal (state := state_1345027) 1
    state_1345028 state_1345079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345028
  · exact cover_1345079
#print axioms cover_1345027

def state_1346062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_1346062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346062 := by
  apply coveredState_split_literal (state := state_1346062) 3
    state_1346063 state_1346114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346063
  · exact cover_1346114
#print axioms cover_1346062

def state_1346040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1346040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346040 := by
  apply coveredState_split_literal (state := state_1346040) 2
    state_1346041 state_1346062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346041
  · exact cover_1346062
#print axioms cover_1346040

def state_1346039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1346039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346039 := by
  apply coveredState_split_literal (state := state_1346039) 4
    state_1346040 state_1346135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346040
  · exact cover_1346135
#print axioms cover_1346039
end Mub6.Numerical.CircleFullD0.Forest
