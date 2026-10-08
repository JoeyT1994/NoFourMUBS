import CircleFullInterface
import CircleForestAssembly0313
import CircleForestAssembly0318
import CircleForestChunk1230
import CircleForestChunk1232
import CircleForestChunk1233
import CircleForestChunk1234
import CircleForestChunk1235
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1596320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
theorem cover_1596320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596320 := by
  apply coveredState_split_literal (state := state_1596320) 0
    state_1596321 state_1596388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596321
  · exact cover_1596388
#print axioms cover_1596320

def state_1596216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1596216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596216 := by
  apply coveredState_split_literal (state := state_1596216) 3
    state_1596217 state_1596320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596217
  · exact cover_1596320
#print axioms cover_1596216

def state_1596188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1596188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596188 := by
  apply coveredState_split_literal (state := state_1596188) 1
    state_1596189 state_1596216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596189
  · exact cover_1596216
#print axioms cover_1596188

def state_1595900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1595900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595900 := by
  apply coveredState_split_literal (state := state_1595900) 4
    state_1595901 state_1596188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595901
  · exact cover_1596188
#print axioms cover_1595900

def state_1595860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1595860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595860 := by
  apply coveredState_split_literal (state := state_1595860) 2
    state_1595861 state_1595900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595861
  · exact cover_1595900
#print axioms cover_1595860

def state_1595859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1595859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595859 := by
  apply coveredState_split_literal (state := state_1595859) 0
    state_1595860 state_1596419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595860
  · exact cover_1596419
#print axioms cover_1595859

def state_1595771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1595771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595771 := by
  apply coveredState_split_literal (state := state_1595771) 3
    state_1595772 state_1595859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595772
  · exact cover_1595859
#print axioms cover_1595771

def state_1595731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1595731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595731 := by
  apply coveredState_split_literal (state := state_1595731) 1
    state_1595732 state_1595771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595732
  · exact cover_1595771
#print axioms cover_1595731

def state_1595730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1595730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595730 := by
  apply coveredState_split_literal (state := state_1595730) 4
    state_1595731 state_1596444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595731
  · exact cover_1596444
#print axioms cover_1595730

def state_1596513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1596513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596513 := by
  apply coveredState_split_literal (state := state_1596513) 4
    state_1596514 state_1596571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596514
  · exact cover_1596571
#print axioms cover_1596513

def state_1596512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1596512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596512 := by
  apply coveredState_split_literal (state := state_1596512) 0
    state_1596513 state_1596596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596513
  · exact cover_1596596
#print axioms cover_1596512

def state_1596490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1596490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596490 := by
  apply coveredState_split_literal (state := state_1596490) 3
    state_1596491 state_1596512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596491
  · exact cover_1596512
#print axioms cover_1596490

def state_1596486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1596486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596486 := by
  apply coveredState_split_literal (state := state_1596486) 1
    state_1596487 state_1596490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596487
  · exact cover_1596490
#print axioms cover_1596486

def state_1596485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1596485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596485 := by
  apply coveredState_split_literal (state := state_1596485) 4
    state_1596486 state_1596605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596486
  · exact cover_1596605
#print axioms cover_1596485

def state_1595729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1595729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595729 := by
  apply coveredState_split_literal (state := state_1595729) 2
    state_1595730 state_1596485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1595730
  · exact cover_1596485
#print axioms cover_1595729

def state_1590777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1590777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590777 := by
  apply coveredState_split_literal (state := state_1590777) 0
    state_1590778 state_1595729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590778
  · exact cover_1595729
#print axioms cover_1590777

def state_1590776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1590776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590776 := by
  apply coveredState_split_literal (state := state_1590776) 4
    state_1590777 state_1596626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590777
  · exact cover_1596626
#print axioms cover_1590776

def state_1587128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1587128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587128 := by
  apply coveredState_split_literal (state := state_1587128) 3
    state_1587129 state_1590776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587129
  · exact cover_1590776
#print axioms cover_1587128

def state_1587127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1587127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587127 := by
  apply coveredState_split_literal (state := state_1587127) 2
    state_1587128 state_1596683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587128
  · exact cover_1596683
#print axioms cover_1587127

def state_1596762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
theorem cover_1596762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596762 := by
  apply coveredState_split_literal (state := state_1596762) 1
    state_1596763 state_1596820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596763
  · exact cover_1596820
#print axioms cover_1596762

def state_1596761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
theorem cover_1596761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596761 := by
  apply coveredState_split_literal (state := state_1596761) 0
    state_1596762 state_1596831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596762
  · exact cover_1596831
#print axioms cover_1596761

def state_1596737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 12)))
theorem cover_1596737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596737 := by
  apply coveredState_split_literal (state := state_1596737) 4
    state_1596738 state_1596761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596738
  · exact cover_1596761
#print axioms cover_1596737

def state_1596723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1596723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596723 := by
  apply coveredState_split_literal (state := state_1596723) 2
    state_1596724 state_1596737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596724
  · exact cover_1596737
#print axioms cover_1596723

def state_1596722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_1596722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596722 := by
  apply coveredState_split_literal (state := state_1596722) 4
    state_1596723 state_1596840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596723
  · exact cover_1596840
#print axioms cover_1596722

def state_1596718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_1596718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596718 := by
  apply coveredState_split_literal (state := state_1596718) 3
    state_1596719 state_1596722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596719
  · exact cover_1596722
#print axioms cover_1596718

def state_1596912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 25)))
theorem cover_1596912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596912 := by
  apply coveredState_split_literal (state := state_1596912) 0
    state_1596913 state_1596948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596913
  · exact cover_1596948
#print axioms cover_1596912

def state_1596864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 12)))
theorem cover_1596864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596864 := by
  apply coveredState_split_literal (state := state_1596864) 4
    state_1596865 state_1596912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596865
  · exact cover_1596912
#print axioms cover_1596864

def state_1596863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 6)))
theorem cover_1596863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596863 := by
  apply coveredState_split_literal (state := state_1596863) 4
    state_1596864 state_1596981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596864
  · exact cover_1596981
#print axioms cover_1596863

def state_1596859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
theorem cover_1596859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596859 := by
  apply coveredState_split_literal (state := state_1596859) 3
    state_1596860 state_1596863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596860
  · exact cover_1596863
#print axioms cover_1596859

def state_1596717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1596717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596717 := by
  apply coveredState_split_literal (state := state_1596717) 2
    state_1596718 state_1596859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596718
  · exact cover_1596859
#print axioms cover_1596717

def state_1597004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1597004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597004 := by
  apply coveredState_split_literal (state := state_1597004) 2
    state_1597005 state_1597016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597005
  · exact cover_1597016
#print axioms cover_1597004

def state_1596716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1596716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596716 := by
  apply coveredState_split_literal (state := state_1596716) 1
    state_1596717 state_1597004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596717
  · exact cover_1597004
#print axioms cover_1596716
end Mub6.Numerical.CircleFullD0.Forest
