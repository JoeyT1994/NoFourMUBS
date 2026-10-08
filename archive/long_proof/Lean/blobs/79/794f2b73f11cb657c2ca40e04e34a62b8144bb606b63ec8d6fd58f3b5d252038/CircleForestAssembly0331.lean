import CircleFullInterface
import CircleForestAssembly0330
import CircleForestChunk1280
import CircleForestChunk1283
import CircleForestChunk1284
import CircleForestChunk1285
import CircleForestChunk1286
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1607955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
theorem cover_1607955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607955 := by
  apply coveredState_split_literal (state := state_1607955) 3
    state_1607956 state_1608041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607956
  · exact cover_1608041
#print axioms cover_1607955

def state_1607877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1607877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607877 := by
  apply coveredState_split_literal (state := state_1607877) 2
    state_1607878 state_1607955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607878
  · exact cover_1607955
#print axioms cover_1607877

def state_1607863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1607863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607863 := by
  apply coveredState_split_literal (state := state_1607863) 0
    state_1607864 state_1607877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607864
  · exact cover_1607877
#print axioms cover_1607863

def state_1608628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
theorem cover_1608628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608628 := by
  apply coveredState_split_literal (state := state_1608628) 1
    state_1608629 state_1608670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608629
  · exact cover_1608670
#print axioms cover_1608628

def state_1608604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
theorem cover_1608604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608604 := by
  apply coveredState_split_literal (state := state_1608604) 3
    state_1608605 state_1608628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608605
  · exact cover_1608628
#print axioms cover_1608604

def state_1608552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1608552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608552 := by
  apply coveredState_split_literal (state := state_1608552) 2
    state_1608553 state_1608604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608553
  · exact cover_1608604
#print axioms cover_1608552

def state_1608542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1608542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608542 := by
  apply coveredState_split_literal (state := state_1608542) 0
    state_1608543 state_1608552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608543
  · exact cover_1608552
#print axioms cover_1608542

def state_1607862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1607862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607862 := by
  apply coveredState_split_literal (state := state_1607862) 4
    state_1607863 state_1608542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607863
  · exact cover_1608542
#print axioms cover_1607862

def state_1608771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_1608771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608771 := by
  apply coveredState_split_literal (state := state_1608771) 4
    state_1608772 state_1608801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608772
  · exact cover_1608801
#print axioms cover_1608771

def state_1608770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_1608770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608770 := by
  apply coveredState_split_literal (state := state_1608770) 1
    state_1608771 state_1608844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608771
  · exact cover_1608844
#print axioms cover_1608770

def state_1608710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
theorem cover_1608710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608710 := by
  apply coveredState_split_literal (state := state_1608710) 3
    state_1608711 state_1608770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608711
  · exact cover_1608770
#print axioms cover_1608710

def state_1608706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1608706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608706 := by
  apply coveredState_split_literal (state := state_1608706) 2
    state_1608707 state_1608710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608707
  · exact cover_1608710
#print axioms cover_1608706

def state_1608696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1608696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608696 := by
  apply coveredState_split_literal (state := state_1608696) 0
    state_1608697 state_1608706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608697
  · exact cover_1608706
#print axioms cover_1608696

def state_1608695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1608695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608695 := by
  apply coveredState_split_literal (state := state_1608695) 4
    state_1608696 state_1608857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608696
  · exact cover_1608857
#print axioms cover_1608695

def state_1607861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1607861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607861 := by
  apply coveredState_split_literal (state := state_1607861) 1
    state_1607862 state_1608695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607862
  · exact cover_1608695
#print axioms cover_1607861

def state_1608917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
theorem cover_1608917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608917 := by
  apply coveredState_split_literal (state := state_1608917) 1
    state_1608918 state_1608973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608918
  · exact cover_1608973
#print axioms cover_1608917

def state_1608893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 24)))
theorem cover_1608893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608893 := by
  apply coveredState_split_literal (state := state_1608893) 4
    state_1608894 state_1608917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608894
  · exact cover_1608917
#print axioms cover_1608893

def state_1608892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
theorem cover_1608892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608892 := by
  apply coveredState_split_literal (state := state_1608892) 3
    state_1608893 state_1608990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608893
  · exact cover_1608990
#print axioms cover_1608892

def state_1608890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1608890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608890 := by
  apply coveredState_split_literal (state := state_1608890) 2
    state_1608891 state_1608892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608891
  · exact cover_1608892
#print axioms cover_1608890

def state_1608888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1608888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608888 := by
  apply coveredState_split_literal (state := state_1608888) 0
    state_1608889 state_1608890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608889
  · exact cover_1608890
#print axioms cover_1608888

def state_1608995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1608995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608995 := by
  apply coveredState_split_literal (state := state_1608995) 0
    state_1608996 state_1608999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608996
  · exact cover_1608999
#print axioms cover_1608995

def state_1608887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1608887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608887 := by
  apply coveredState_split_literal (state := state_1608887) 4
    state_1608888 state_1608995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608888
  · exact cover_1608995
#print axioms cover_1608887

def state_1608886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1608886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608886 := by
  apply coveredState_split_literal (state := state_1608886) 1
    state_1608887 state_1609060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608887
  · exact cover_1609060
#print axioms cover_1608886

def state_1607860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1607860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607860 := by
  apply coveredState_split_literal (state := state_1607860) 3
    state_1607861 state_1608886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607861
  · exact cover_1608886
#print axioms cover_1607860

def state_1607859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1607859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607859 := by
  apply coveredState_split_literal (state := state_1607859) 4
    state_1607860 state_1609079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607860
  · exact cover_1609079
#print axioms cover_1607859

def state_1607841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1607841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607841 := by
  apply coveredState_split_literal (state := state_1607841) 2
    state_1607842 state_1607859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607842
  · exact cover_1607859
#print axioms cover_1607841

def state_1597133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1597133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597133 := by
  apply coveredState_split_literal (state := state_1597133) 1
    state_1597134 state_1607841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597134
  · exact cover_1607841
#print axioms cover_1597133

def state_1609298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
theorem cover_1609298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609298 := by
  apply coveredState_split_literal (state := state_1609298) 1
    state_1609299 state_1609328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609299
  · exact cover_1609328
#print axioms cover_1609298

def state_1609288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 99)))
theorem cover_1609288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609288 := by
  apply coveredState_split_literal (state := state_1609288) 2
    state_1609289 state_1609298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609289
  · exact cover_1609298
#print axioms cover_1609288

def state_1609287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 99)))
theorem cover_1609287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609287 := by
  apply coveredState_split_literal (state := state_1609287) 0
    state_1609288 state_1609379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609288
  · exact cover_1609379
#print axioms cover_1609287

def state_1609265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 49)))
theorem cover_1609265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609265 := by
  apply coveredState_split_literal (state := state_1609265) 4
    state_1609266 state_1609287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609266
  · exact cover_1609287
#print axioms cover_1609265

def state_1609231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
theorem cover_1609231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609231 := by
  apply coveredState_split_literal (state := state_1609231) 3
    state_1609232 state_1609265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609232
  · exact cover_1609265
#print axioms cover_1609231
end Mub6.Numerical.CircleFullD0.Forest
