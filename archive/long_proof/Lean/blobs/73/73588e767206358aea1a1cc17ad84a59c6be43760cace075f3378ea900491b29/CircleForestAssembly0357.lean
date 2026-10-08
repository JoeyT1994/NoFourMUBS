import CircleFullInterface
import CircleForestAssembly0355
import CircleForestAssembly0356
import CircleForestChunk1376
import CircleForestChunk1383
import CircleForestChunk1386
import CircleForestChunk1387
import CircleForestChunk1388
import CircleForestChunk1389
import CircleForestChunk1390
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1632814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 9)))
theorem cover_1632814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632814 := by
  apply coveredState_split_literal (state := state_1632814) 4
    state_1632815 state_1633164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632815
  · exact cover_1633164
#print axioms cover_1632814

def state_1632762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
theorem cover_1632762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632762 := by
  apply coveredState_split_literal (state := state_1632762) 2
    state_1632763 state_1632814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632763
  · exact cover_1632814
#print axioms cover_1632762

def state_1632761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
theorem cover_1632761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632761 := by
  apply coveredState_split_literal (state := state_1632761) 0
    state_1632762 state_1633479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632762
  · exact cover_1633479
#print axioms cover_1632761

def state_1631889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1631889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631889 := by
  apply coveredState_split_literal (state := state_1631889) 3
    state_1631890 state_1632761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631890
  · exact cover_1632761
#print axioms cover_1631889

def state_1631795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1631795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631795 := by
  apply coveredState_split_literal (state := state_1631795) 1
    state_1631796 state_1631889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631796
  · exact cover_1631889
#print axioms cover_1631795

def state_1631149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1631149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631149 := by
  apply coveredState_split_literal (state := state_1631149) 4
    state_1631150 state_1631795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631150
  · exact cover_1631795
#print axioms cover_1631149

def state_1631148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1631148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631148 := by
  apply coveredState_split_literal (state := state_1631148) 3
    state_1631149 state_1633532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631149
  · exact cover_1633532
#print axioms cover_1631148

def state_1631114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1631114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631114 := by
  apply coveredState_split_literal (state := state_1631114) 2
    state_1631115 state_1631148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631115
  · exact cover_1631148
#print axioms cover_1631114

def state_1633585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_1633585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633585 := by
  apply coveredState_split_literal (state := state_1633585) 4
    state_1633586 state_1633645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633586
  · exact cover_1633645
#print axioms cover_1633585

def state_1633584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_1633584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633584 := by
  apply coveredState_split_literal (state := state_1633584) 3
    state_1633585 state_1633662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633585
  · exact cover_1633662
#print axioms cover_1633584

def state_1633721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 17)))
theorem cover_1633721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633721 := by
  apply coveredState_split_literal (state := state_1633721) 3
    state_1633722 state_1633735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633722
  · exact cover_1633735
#print axioms cover_1633721

def state_1633671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1633671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633671 := by
  apply coveredState_split_literal (state := state_1633671) 4
    state_1633672 state_1633721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633672
  · exact cover_1633721
#print axioms cover_1633671

def state_1633854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
theorem cover_1633854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633854 := by
  apply coveredState_split_literal (state := state_1633854) 1
    state_1633855 state_1633912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633855
  · exact cover_1633912
#print axioms cover_1633854

def state_1633826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 17)))
theorem cover_1633826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633826 := by
  apply coveredState_split_literal (state := state_1633826) 3
    state_1633827 state_1633854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633827
  · exact cover_1633854
#print axioms cover_1633826

def state_1633788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_1633788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633788 := by
  apply coveredState_split_literal (state := state_1633788) 4
    state_1633789 state_1633826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633789
  · exact cover_1633826
#print axioms cover_1633788

def state_1633670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1633670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633670 := by
  apply coveredState_split_literal (state := state_1633670) 2
    state_1633671 state_1633788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633671
  · exact cover_1633788
#print axioms cover_1633670

def state_1633669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1633669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633669 := by
  apply coveredState_split_literal (state := state_1633669) 1
    state_1633670 state_1633925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633670
  · exact cover_1633925
#print axioms cover_1633669

def state_1633668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1633668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633668 := by
  apply coveredState_split_literal (state := state_1633668) 0
    state_1633669 state_1633978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633669
  · exact cover_1633978
#print axioms cover_1633668

def state_1633667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1633667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633667 := by
  apply coveredState_split_literal (state := state_1633667) 3
    state_1633668 state_1633997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633668
  · exact cover_1633997
#print axioms cover_1633667

def state_1634080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1634080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634080 := by
  apply coveredState_split_literal (state := state_1634080) 1
    state_1634081 state_1634140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634081
  · exact cover_1634140
#print axioms cover_1634080

def state_1634070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 18)))
theorem cover_1634070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634070 := by
  apply coveredState_split_literal (state := state_1634070) 3
    state_1634071 state_1634080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634071
  · exact cover_1634080
#print axioms cover_1634070

def state_1634069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_1634069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634069 := by
  apply coveredState_split_literal (state := state_1634069) 4
    state_1634070 state_1634147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634070
  · exact cover_1634147
#print axioms cover_1634069

def state_1634051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1634051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634051 := by
  apply coveredState_split_literal (state := state_1634051) 2
    state_1634052 state_1634069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634052
  · exact cover_1634069
#print axioms cover_1634051

def state_1634050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1634050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634050 := by
  apply coveredState_split_literal (state := state_1634050) 1
    state_1634051 state_1634152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634051
  · exact cover_1634152
#print axioms cover_1634050

def state_1634049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1634049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634049 := by
  apply coveredState_split_literal (state := state_1634049) 0
    state_1634050 state_1634163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634050
  · exact cover_1634163
#print axioms cover_1634049

def state_1634213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 18)))
theorem cover_1634213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634213 := by
  apply coveredState_split_literal (state := state_1634213) 4
    state_1634214 state_1634247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634214
  · exact cover_1634247
#print axioms cover_1634213

def state_1634212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 18)))
theorem cover_1634212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634212 := by
  apply coveredState_split_literal (state := state_1634212) 1
    state_1634213 state_1634282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634213
  · exact cover_1634282
#print axioms cover_1634212

def state_1634211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 18)))
theorem cover_1634211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634211 := by
  apply coveredState_split_literal (state := state_1634211) 3
    state_1634212 state_1634301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634212
  · exact cover_1634301
#print axioms cover_1634211

def state_1634210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 9)))
theorem cover_1634210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634210 := by
  apply coveredState_split_literal (state := state_1634210) 4
    state_1634211 state_1634324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634211
  · exact cover_1634324
#print axioms cover_1634210

def state_1634170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
theorem cover_1634170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634170 := by
  apply coveredState_split_literal (state := state_1634170) 2
    state_1634171 state_1634210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634171
  · exact cover_1634210
#print axioms cover_1634170

def state_1634169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
theorem cover_1634169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634169 := by
  apply coveredState_split_literal (state := state_1634169) 1
    state_1634170 state_1634373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634170
  · exact cover_1634373
#print axioms cover_1634169

def state_1634168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
theorem cover_1634168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634168 := by
  apply coveredState_split_literal (state := state_1634168) 0
    state_1634169 state_1634412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634169
  · exact cover_1634412
#print axioms cover_1634168
end Mub6.Numerical.CircleFullD0.Forest
