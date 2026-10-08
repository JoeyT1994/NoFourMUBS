import D0FullInterface
import D0ForestAssembly0026
import D0ForestChunk0109
import D0ForestChunk0110
import D0ForestChunk0111
import D0ForestChunk0112
import D0ForestChunk0113
import D0ForestChunk0114
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_963815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 55)))
theorem cover_963815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963815 := by
  apply coveredState_split_literal (state := state_963815) 4
    state_963816 state_963883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963816
  · exact cover_963883
#print axioms cover_963815

def state_963905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 220)))
theorem cover_963905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963905 := by
  apply coveredState_split_literal (state := state_963905) 3
    state_963906 state_963921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963906
  · exact cover_963921
#print axioms cover_963905

def state_963904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 110)))
theorem cover_963904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963904 := by
  apply coveredState_split_literal (state := state_963904) 4
    state_963905 state_963972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963905
  · exact cover_963972
#print axioms cover_963904

def state_963902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_963902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963902 := by
  apply coveredState_split_literal (state := state_963902) 2
    state_963903 state_963904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963903
  · exact cover_963904
#print axioms cover_963902

def state_963992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 210 else (if j.val < 4 then 144 else 220)))
theorem cover_963992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963992 := by
  apply coveredState_split_literal (state := state_963992) 0
    state_963993 state_964044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963993
  · exact cover_964044
#print axioms cover_963992

def state_963991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 220)))
theorem cover_963991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963991 := by
  apply coveredState_split_literal (state := state_963991) 3
    state_963992 state_964059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963992
  · exact cover_964059
#print axioms cover_963991

def state_963990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 110)))
theorem cover_963990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963990 := by
  apply coveredState_split_literal (state := state_963990) 4
    state_963991 state_964072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963991
  · exact cover_964072
#print axioms cover_963990

def state_964123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 110)))
theorem cover_964123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964123 := by
  apply coveredState_split_literal (state := state_964123) 4
    state_964124 state_964167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964124
  · exact cover_964167
#print axioms cover_964123

def state_963989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_963989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963989 := by
  apply coveredState_split_literal (state := state_963989) 2
    state_963990 state_964123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963990
  · exact cover_964123
#print axioms cover_963989

def state_963901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_963901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963901 := by
  apply coveredState_split_literal (state := state_963901) 1
    state_963902 state_963989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963902
  · exact cover_963989
#print axioms cover_963901

def state_963900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_963900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963900 := by
  apply coveredState_split_literal (state := state_963900) 0
    state_963901 state_964200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963901
  · exact cover_964200
#print axioms cover_963900

def state_963899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 110)))
theorem cover_963899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963899 := by
  apply coveredState_split_literal (state := state_963899) 3
    state_963900 state_964247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963900
  · exact cover_964247
#print axioms cover_963899

def state_963898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 55)))
theorem cover_963898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963898 := by
  apply coveredState_split_literal (state := state_963898) 4
    state_963899 state_964306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963899
  · exact cover_964306
#print axioms cover_963898

def state_963814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_963814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963814 := by
  apply coveredState_split_literal (state := state_963814) 2
    state_963815 state_963898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963815
  · exact cover_963898
#print axioms cover_963814

def state_964394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 111)))
theorem cover_964394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964394 := by
  apply coveredState_split_literal (state := state_964394) 3
    state_964395 state_964458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964395
  · exact cover_964458
#print axioms cover_964394

def state_964352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 55)))
theorem cover_964352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964352 := by
  apply coveredState_split_literal (state := state_964352) 4
    state_964353 state_964394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964353
  · exact cover_964394
#print axioms cover_964352

def state_964472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 110)))
theorem cover_964472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964472 := by
  apply coveredState_split_literal (state := state_964472) 4
    state_964473 state_964490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964473
  · exact cover_964490
#print axioms cover_964472

def state_964471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_964471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964471 := by
  apply coveredState_split_literal (state := state_964471) 2
    state_964472 state_964543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964472
  · exact cover_964543
#print axioms cover_964471

def state_964470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_964470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964470 := by
  apply coveredState_split_literal (state := state_964470) 1
    state_964471 state_964572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964471
  · exact cover_964572
#print axioms cover_964470

def state_964469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_964469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964469 := by
  apply coveredState_split_literal (state := state_964469) 0
    state_964470 state_964595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964470
  · exact cover_964595
#print axioms cover_964469

def state_964468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 110)))
theorem cover_964468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964468 := by
  apply coveredState_split_literal (state := state_964468) 3
    state_964469 state_964606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964469
  · exact cover_964606
#print axioms cover_964468

def state_964626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 111)))
theorem cover_964626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964626 := by
  apply coveredState_split_literal (state := state_964626) 0
    state_964627 state_964680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964627
  · exact cover_964680
#print axioms cover_964626

def state_964625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 111)))
theorem cover_964625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964625 := by
  apply coveredState_split_literal (state := state_964625) 3
    state_964626 state_964703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964626
  · exact cover_964703
#print axioms cover_964625

def state_964467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 55)))
theorem cover_964467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964467 := by
  apply coveredState_split_literal (state := state_964467) 4
    state_964468 state_964625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964468
  · exact cover_964625
#print axioms cover_964467

def state_964351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_964351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964351 := by
  apply coveredState_split_literal (state := state_964351) 2
    state_964352 state_964467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964352
  · exact cover_964467
#print axioms cover_964351

def state_963813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_963813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963813 := by
  apply coveredState_split_literal (state := state_963813) 1
    state_963814 state_964351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963814
  · exact cover_964351
#print axioms cover_963813

def state_963812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_963812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963812 := by
  apply coveredState_split_literal (state := state_963812) 0
    state_963813 state_964762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963813
  · exact cover_964762
#print axioms cover_963812

def state_963730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 27)))
theorem cover_963730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963730 := by
  apply coveredState_split_literal (state := state_963730) 4
    state_963731 state_963812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963731
  · exact cover_963812
#print axioms cover_963730

def state_963729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
theorem cover_963729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963729 := by
  apply coveredState_split_literal (state := state_963729) 3
    state_963730 state_964799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963730
  · exact cover_964799
#print axioms cover_963729

def state_964825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_964825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964825 := by
  apply coveredState_split_literal (state := state_964825) 1
    state_964826 state_964877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964826
  · exact cover_964877
#print axioms cover_964825

def state_964824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_964824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964824 := by
  apply coveredState_split_literal (state := state_964824) 0
    state_964825 state_964890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964825
  · exact cover_964890
#print axioms cover_964824

def state_964963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 110)))
theorem cover_964963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964963 := by
  apply coveredState_split_literal (state := state_964963) 2
    state_964964 state_965015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_964964
  · exact cover_965015
#print axioms cover_964963
end Mub6.Numerical.CircleFullD0.Forest
