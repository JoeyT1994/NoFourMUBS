import CircleFullInterface
import CircleForestAssembly0043
import CircleForestChunk0171
import CircleForestChunk0172
import CircleForestChunk0173
import CircleForestChunk0174
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_62463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_62463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62463 := by
  apply coveredState_split_literal (state := state_62463) 2
    state_62464 state_62503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62464
  · exact cover_62503
#print axioms cover_62463

def state_62462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_62462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62462 := by
  apply coveredState_split_literal (state := state_62462) 1
    state_62463 state_62552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62463
  · exact cover_62552
#print axioms cover_62462

def state_62112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_62112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62112 := by
  apply coveredState_split_literal (state := state_62112) 4
    state_62113 state_62462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62113
  · exact cover_62462
#print axioms cover_62112

def state_62111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_62111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62111 := by
  apply coveredState_split_literal (state := state_62111) 3
    state_62112 state_62583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62112
  · exact cover_62583
#print axioms cover_62111

def state_62628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 8)))
theorem cover_62628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62628 := by
  apply coveredState_split_literal (state := state_62628) 0
    state_62629 state_62644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62629
  · exact cover_62644
#print axioms cover_62628

def state_62627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 8)))
theorem cover_62627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62627 := by
  apply coveredState_split_literal (state := state_62627) 1
    state_62628 state_62695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62628
  · exact cover_62695
#print axioms cover_62627

def state_62626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 8)))
theorem cover_62626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62626 := by
  apply coveredState_split_literal (state := state_62626) 3
    state_62627 state_62706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62627
  · exact cover_62706
#print axioms cover_62626

def state_62716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_62716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62716 := by
  apply coveredState_split_literal (state := state_62716) 1
    state_62717 state_62778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62717
  · exact cover_62778
#print axioms cover_62716

def state_62715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_62715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62715 := by
  apply coveredState_split_literal (state := state_62715) 3
    state_62716 state_62797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62716
  · exact cover_62797
#print axioms cover_62715

def state_62625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_62625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62625 := by
  apply coveredState_split_literal (state := state_62625) 4
    state_62626 state_62715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62626
  · exact cover_62715
#print axioms cover_62625

def state_62624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_62624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62624 := by
  apply coveredState_split_literal (state := state_62624) 2
    state_62625 state_62826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62625
  · exact cover_62826
#print axioms cover_62624

def state_62606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_62606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62606 := by
  apply coveredState_split_literal (state := state_62606) 0
    state_62607 state_62624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62607
  · exact cover_62624
#print axioms cover_62606

def state_62605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_62605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62605 := by
  apply coveredState_split_literal (state := state_62605) 3
    state_62606 state_62837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62606
  · exact cover_62837
#print axioms cover_62605

def state_62604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_62604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62604 := by
  apply coveredState_split_literal (state := state_62604) 1
    state_62605 state_62870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62605
  · exact cover_62870
#print axioms cover_62604

def state_62603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_62603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62603 := by
  apply coveredState_split_literal (state := state_62603) 4
    state_62604 state_62913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62604
  · exact cover_62913
#print axioms cover_62603

def state_62972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_62972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62972 := by
  apply coveredState_split_literal (state := state_62972) 1
    state_62973 state_62982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62973
  · exact cover_62982
#print axioms cover_62972

def state_62964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_62964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62964 := by
  apply coveredState_split_literal (state := state_62964) 4
    state_62965 state_62972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62965
  · exact cover_62972
#print axioms cover_62964

def state_62602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_62602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62602 := by
  apply coveredState_split_literal (state := state_62602) 3
    state_62603 state_62964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62603
  · exact cover_62964
#print axioms cover_62602

def state_62110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_62110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62110 := by
  apply coveredState_split_literal (state := state_62110) 2
    state_62111 state_62602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62111
  · exact cover_62602
#print axioms cover_62110

def state_60382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_60382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60382 := by
  apply coveredState_split_literal (state := state_60382) 1
    state_60383 state_62110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60383
  · exact cover_62110
#print axioms cover_60382

def state_63124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_63124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63124 := by
  apply coveredState_split_literal (state := state_63124) 0
    state_63125 state_63184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63125
  · exact cover_63184
#print axioms cover_63124

def state_63123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_63123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63123 := by
  apply coveredState_split_literal (state := state_63123) 3
    state_63124 state_63191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63124
  · exact cover_63191
#print axioms cover_63123

def state_63063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_63063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63063 := by
  apply coveredState_split_literal (state := state_63063) 4
    state_63064 state_63123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63064
  · exact cover_63123
#print axioms cover_63063

def state_63059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_63059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63059 := by
  apply coveredState_split_literal (state := state_63059) 1
    state_63060 state_63063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63060
  · exact cover_63063
#print axioms cover_63059

def state_63058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_63058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63058 := by
  apply coveredState_split_literal (state := state_63058) 3
    state_63059 state_63192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63059
  · exact cover_63192
#print axioms cover_63058

def state_63050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_63050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63050 := by
  apply coveredState_split_literal (state := state_63050) 2
    state_63051 state_63058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63051
  · exact cover_63058
#print axioms cover_63050

def state_63049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_63049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63049 := by
  apply coveredState_split_literal (state := state_63049) 0
    state_63050 state_63193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63050
  · exact cover_63193
#print axioms cover_63049

def state_63048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_63048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63048 := by
  apply coveredState_split_literal (state := state_63048) 4
    state_63049 state_63194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63049
  · exact cover_63194
#print axioms cover_63048

def state_63047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_63047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63047 := by
  apply coveredState_split_literal (state := state_63047) 3
    state_63048 state_63215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63048
  · exact cover_63215
#print axioms cover_63047

def state_63217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_63217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63217 := by
  apply coveredState_split_literal (state := state_63217) 4
    state_63218 state_63253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63218
  · exact cover_63253
#print axioms cover_63217

def state_63216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_63216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63216 := by
  apply coveredState_split_literal (state := state_63216) 3
    state_63217 state_63290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63217
  · exact cover_63290
#print axioms cover_63216

def state_63046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_63046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63046 := by
  apply coveredState_split_literal (state := state_63046) 2
    state_63047 state_63216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_63047
  · exact cover_63216
#print axioms cover_63046
end Mub6.Numerical.CircleFullPrototype.Forest
