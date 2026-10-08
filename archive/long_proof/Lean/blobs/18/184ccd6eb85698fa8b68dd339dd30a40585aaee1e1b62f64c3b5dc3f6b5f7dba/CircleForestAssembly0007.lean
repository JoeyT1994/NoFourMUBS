import CircleFullInterface
import CircleForestAssembly0006
import CircleForestChunk0027
import CircleForestChunk0028
import CircleForestChunk0029
import CircleForestChunk0030
import CircleForestChunk0031
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_6110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
theorem cover_6110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6110 := by
  apply coveredState_split_literal (state := state_6110) 0
    state_6111 state_6364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6111
  · exact cover_6364
#print axioms cover_6110

def state_6503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 8)))
theorem cover_6503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6503 := by
  apply coveredState_split_literal (state := state_6503) 4
    state_6504 state_6513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6504
  · exact cover_6513
#print axioms cover_6503

def state_6602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 17)))
theorem cover_6602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6602 := by
  apply coveredState_split_literal (state := state_6602) 4
    state_6603 state_6624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6603
  · exact cover_6624
#print axioms cover_6602

def state_6601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 17 else 17)))
theorem cover_6601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6601 := by
  apply coveredState_split_literal (state := state_6601) 3
    state_6602 state_6677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6602
  · exact cover_6677
#print axioms cover_6601

def state_6600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_6600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6600 := by
  apply coveredState_split_literal (state := state_6600) 2
    state_6601 state_6692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6601
  · exact cover_6692
#print axioms cover_6600

def state_6580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_6580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6580 := by
  apply coveredState_split_literal (state := state_6580) 0
    state_6581 state_6600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6581
  · exact cover_6600
#print axioms cover_6580

def state_6576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_6576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6576 := by
  apply coveredState_split_literal (state := state_6576) 1
    state_6577 state_6580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6577
  · exact cover_6580
#print axioms cover_6576

def state_6574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 8)))
theorem cover_6574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6574 := by
  apply coveredState_split_literal (state := state_6574) 4
    state_6575 state_6576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6575
  · exact cover_6576
#print axioms cover_6574

def state_6502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 8)))
theorem cover_6502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6502 := by
  apply coveredState_split_literal (state := state_6502) 3
    state_6503 state_6574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6503
  · exact cover_6574
#print axioms cover_6502

def state_6735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 17 else 17)))
theorem cover_6735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6735 := by
  apply coveredState_split_literal (state := state_6735) 3
    state_6736 state_6795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6736
  · exact cover_6795
#print axioms cover_6735

def state_6734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_6734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6734 := by
  apply coveredState_split_literal (state := state_6734) 2
    state_6735 state_6836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6735
  · exact cover_6836
#print axioms cover_6734

def state_6733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_6733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6733 := by
  apply coveredState_split_literal (state := state_6733) 0
    state_6734 state_6857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6734
  · exact cover_6857
#print axioms cover_6733

def state_6723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_6723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6723 := by
  apply coveredState_split_literal (state := state_6723) 1
    state_6724 state_6733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6724
  · exact cover_6733
#print axioms cover_6723

def state_6717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 8)))
theorem cover_6717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6717 := by
  apply coveredState_split_literal (state := state_6717) 4
    state_6718 state_6723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6718
  · exact cover_6723
#print axioms cover_6717

def state_6699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 8)))
theorem cover_6699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6699 := by
  apply coveredState_split_literal (state := state_6699) 3
    state_6700 state_6717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6700
  · exact cover_6717
#print axioms cover_6699

def state_6501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 8)))
theorem cover_6501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6501 := by
  apply coveredState_split_literal (state := state_6501) 0
    state_6502 state_6699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6502
  · exact cover_6699
#print axioms cover_6501

def state_6109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_6109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6109 := by
  apply coveredState_split_literal (state := state_6109) 2
    state_6110 state_6501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6110
  · exact cover_6501
#print axioms cover_6109

def state_7015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 17)))
theorem cover_7015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7015 := by
  apply coveredState_split_literal (state := state_7015) 4
    state_7016 state_7069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7016
  · exact cover_7069
#print axioms cover_7015

def state_6989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6989 := by
  apply coveredState_split_literal (state := state_6989) 3
    state_6990 state_7015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6990
  · exact cover_7015
#print axioms cover_6989

def state_6988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6988 := by
  apply coveredState_split_literal (state := state_6988) 1
    state_6989 state_7080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6989
  · exact cover_7080
#print axioms cover_6988

def state_6968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6968 := by
  apply coveredState_split_literal (state := state_6968) 0
    state_6969 state_6988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6969
  · exact cover_6988
#print axioms cover_6968

def state_6964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_6964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6964 := by
  apply coveredState_split_literal (state := state_6964) 2
    state_6965 state_6968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6965
  · exact cover_6968
#print axioms cover_6964

def state_6902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 8)))
theorem cover_6902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6902 := by
  apply coveredState_split_literal (state := state_6902) 4
    state_6903 state_6964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6903
  · exact cover_6964
#print axioms cover_6902

def state_6888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
theorem cover_6888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6888 := by
  apply coveredState_split_literal (state := state_6888) 3
    state_6889 state_6902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6889
  · exact cover_6902
#print axioms cover_6888

def state_7143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 17)))
theorem cover_7143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7143 := by
  apply coveredState_split_literal (state := state_7143) 4
    state_7144 state_7187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7144
  · exact cover_7187
#print axioms cover_7143

def state_7125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_7125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7125 := by
  apply coveredState_split_literal (state := state_7125) 3
    state_7126 state_7143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7126
  · exact cover_7143
#print axioms cover_7125

def state_7124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_7124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7124 := by
  apply coveredState_split_literal (state := state_7124) 1
    state_7125 state_7226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7125
  · exact cover_7226
#print axioms cover_7124

def state_7123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_7123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7123 := by
  apply coveredState_split_literal (state := state_7123) 0
    state_7124 state_7245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7124
  · exact cover_7245
#print axioms cover_7123

def state_7111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_7111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7111 := by
  apply coveredState_split_literal (state := state_7111) 2
    state_7112 state_7123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7112
  · exact cover_7123
#print axioms cover_7111

def state_7097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 8)))
theorem cover_7097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7097 := by
  apply coveredState_split_literal (state := state_7097) 4
    state_7098 state_7111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7098
  · exact cover_7111
#print axioms cover_7097

def state_7087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
theorem cover_7087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7087 := by
  apply coveredState_split_literal (state := state_7087) 3
    state_7088 state_7097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7088
  · exact cover_7097
#print axioms cover_7087

def state_6887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
theorem cover_6887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6887 := by
  apply coveredState_split_literal (state := state_6887) 0
    state_6888 state_7087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6888
  · exact cover_7087
#print axioms cover_6887
end Mub6.Numerical.CircleFullPrototype.Forest
