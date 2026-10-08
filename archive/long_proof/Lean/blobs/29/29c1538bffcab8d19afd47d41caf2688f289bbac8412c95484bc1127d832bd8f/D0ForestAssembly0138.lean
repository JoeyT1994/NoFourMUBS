import D0FullInterface
import D0ForestAssembly0137
import D0ForestChunk0535
import D0ForestChunk0536
import D0ForestChunk0537
import D0ForestChunk0538
import D0ForestChunk0539
import D0ForestChunk0540
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1317161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1317161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317161 := by
  apply coveredState_split_literal (state := state_1317161) 1
    state_1317162 state_1317283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317162
  · exact cover_1317283
#print axioms cover_1317161

def state_1317160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 49)))
theorem cover_1317160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317160 := by
  apply coveredState_split_literal (state := state_1317160) 2
    state_1317161 state_1317304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317161
  · exact cover_1317304
#print axioms cover_1317160

def state_1317142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 49)))
theorem cover_1317142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317142 := by
  apply coveredState_split_literal (state := state_1317142) 3
    state_1317143 state_1317160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317143
  · exact cover_1317160
#print axioms cover_1317142

def state_1317128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1317128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317128 := by
  apply coveredState_split_literal (state := state_1317128) 4
    state_1317129 state_1317142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317129
  · exact cover_1317142
#print axioms cover_1317128

def state_1317341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 49)))
theorem cover_1317341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317341 := by
  apply coveredState_split_literal (state := state_1317341) 2
    state_1317342 state_1317405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317342
  · exact cover_1317405
#print axioms cover_1317341

def state_1317327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 49)))
theorem cover_1317327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317327 := by
  apply coveredState_split_literal (state := state_1317327) 3
    state_1317328 state_1317341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317328
  · exact cover_1317341
#print axioms cover_1317327

def state_1317321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1317321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317321 := by
  apply coveredState_split_literal (state := state_1317321) 4
    state_1317322 state_1317327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317322
  · exact cover_1317327
#print axioms cover_1317321

def state_1317127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1317127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317127 := by
  apply coveredState_split_literal (state := state_1317127) 0
    state_1317128 state_1317321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317128
  · exact cover_1317321
#print axioms cover_1317127

def state_1317126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1317126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317126 := by
  apply coveredState_split_literal (state := state_1317126) 1
    state_1317127 state_1317424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317127
  · exact cover_1317424
#print axioms cover_1317126

def state_1317125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_1317125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317125 := by
  apply coveredState_split_literal (state := state_1317125) 2
    state_1317126 state_1317473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317126
  · exact cover_1317473
#print axioms cover_1317125

def state_1317507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1317507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317507 := by
  apply coveredState_split_literal (state := state_1317507) 1
    state_1317508 state_1317555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317508
  · exact cover_1317555
#print axioms cover_1317507

def state_1317506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
theorem cover_1317506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317506 := by
  apply coveredState_split_literal (state := state_1317506) 2
    state_1317507 state_1317602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317507
  · exact cover_1317602
#print axioms cover_1317506

def state_1317505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1317505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317505 := by
  apply coveredState_split_literal (state := state_1317505) 4
    state_1317506 state_1317653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317506
  · exact cover_1317653
#print axioms cover_1317505

def state_1317487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1317487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317487 := by
  apply coveredState_split_literal (state := state_1317487) 3
    state_1317488 state_1317505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317488
  · exact cover_1317505
#print axioms cover_1317487

def state_1317740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1317740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317740 := by
  apply coveredState_split_literal (state := state_1317740) 0
    state_1317741 state_1317802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317741
  · exact cover_1317802
#print axioms cover_1317740

def state_1317684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1317684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317684 := by
  apply coveredState_split_literal (state := state_1317684) 1
    state_1317685 state_1317740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317685
  · exact cover_1317740
#print axioms cover_1317684

def state_1317815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
theorem cover_1317815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317815 := by
  apply coveredState_split_literal (state := state_1317815) 3
    state_1317816 state_1317829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317816
  · exact cover_1317829
#print axioms cover_1317815

def state_1317904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 101)))
theorem cover_1317904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317904 := by
  apply coveredState_split_literal (state := state_1317904) 2
    state_1317905 state_1317968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317905
  · exact cover_1317968
#print axioms cover_1317904

def state_1317884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
theorem cover_1317884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317884 := by
  apply coveredState_split_literal (state := state_1317884) 3
    state_1317885 state_1317904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317885
  · exact cover_1317904
#print axioms cover_1317884

def state_1317814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1317814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317814 := by
  apply coveredState_split_literal (state := state_1317814) 4
    state_1317815 state_1317884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317815
  · exact cover_1317884
#print axioms cover_1317814

def state_1317813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1317813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317813 := by
  apply coveredState_split_literal (state := state_1317813) 0
    state_1317814 state_1317969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317814
  · exact cover_1317969
#print axioms cover_1317813

def state_1317811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1317811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317811 := by
  apply coveredState_split_literal (state := state_1317811) 1
    state_1317812 state_1317813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317812
  · exact cover_1317813
#print axioms cover_1317811

def state_1317683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
theorem cover_1317683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317683 := by
  apply coveredState_split_literal (state := state_1317683) 2
    state_1317684 state_1317811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317684
  · exact cover_1317811
#print axioms cover_1317683

def state_1317682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1317682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317682 := by
  apply coveredState_split_literal (state := state_1317682) 4
    state_1317683 state_1318010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317683
  · exact cover_1318010
#print axioms cover_1317682

def state_1317666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1317666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317666 := by
  apply coveredState_split_literal (state := state_1317666) 3
    state_1317667 state_1317682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317667
  · exact cover_1317682
#print axioms cover_1317666

def state_1317486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1317486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317486 := by
  apply coveredState_split_literal (state := state_1317486) 0
    state_1317487 state_1317666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317487
  · exact cover_1317666
#print axioms cover_1317486

def state_1318216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1318216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318216 := by
  apply coveredState_split_literal (state := state_1318216) 0
    state_1318217 state_1318232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318217
  · exact cover_1318232
#print axioms cover_1318216

def state_1318215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1318215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318215 := by
  apply coveredState_split_literal (state := state_1318215) 1
    state_1318216 state_1318283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318216
  · exact cover_1318283
#print axioms cover_1318215

def state_1318214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 101)))
theorem cover_1318214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318214 := by
  apply coveredState_split_literal (state := state_1318214) 2
    state_1318215 state_1318308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318215
  · exact cover_1318308
#print axioms cover_1318214

def state_1318190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
theorem cover_1318190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318190 := by
  apply coveredState_split_literal (state := state_1318190) 3
    state_1318191 state_1318214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318191
  · exact cover_1318214
#print axioms cover_1318190

def state_1318168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1318168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318168 := by
  apply coveredState_split_literal (state := state_1318168) 4
    state_1318169 state_1318190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318169
  · exact cover_1318190
#print axioms cover_1318168

def state_1318395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
theorem cover_1318395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318395 := by
  apply coveredState_split_literal (state := state_1318395) 1
    state_1318396 state_1318427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318396
  · exact cover_1318427
#print axioms cover_1318395
end Mub6.Numerical.CircleFullD0.Forest
