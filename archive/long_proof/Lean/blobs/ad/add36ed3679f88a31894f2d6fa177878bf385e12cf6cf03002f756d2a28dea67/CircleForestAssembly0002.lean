import CircleFullInterface
import CircleForestAssembly0001
import CircleForestChunk0005
import CircleForestChunk0006
import CircleForestChunk0007
import CircleForestChunk0008
import CircleForestChunk0009
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1042 := by
  apply coveredState_split_literal (state := state_1042) 0
    state_1043 state_1118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043
  · exact cover_1118
#print axioms cover_1042

def state_1153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1153 := by
  apply coveredState_split_literal (state := state_1153) 3
    state_1154 state_1213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1154
  · exact cover_1213
#print axioms cover_1153

def state_1152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1152 := by
  apply coveredState_split_literal (state := state_1152) 2
    state_1153 state_1222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1153
  · exact cover_1222
#print axioms cover_1152

def state_1136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1136 := by
  apply coveredState_split_literal (state := state_1136) 1
    state_1137 state_1152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1137
  · exact cover_1152
#print axioms cover_1136

def state_1135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1135 := by
  apply coveredState_split_literal (state := state_1135) 0
    state_1136 state_1233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1136
  · exact cover_1233
#print axioms cover_1135

def state_1041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1041 := by
  apply coveredState_split_literal (state := state_1041) 4
    state_1042 state_1135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042
  · exact cover_1135
#print axioms cover_1041

def state_1269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1269 := by
  apply coveredState_split_literal (state := state_1269) 3
    state_1270 state_1275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1270
  · exact cover_1275
#print axioms cover_1269

def state_1261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1261 := by
  apply coveredState_split_literal (state := state_1261) 2
    state_1262 state_1269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1262
  · exact cover_1269
#print axioms cover_1261

def state_1260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1260 := by
  apply coveredState_split_literal (state := state_1260) 1
    state_1261 state_1338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1261
  · exact cover_1338
#print axioms cover_1260

def state_1259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1259 := by
  apply coveredState_split_literal (state := state_1259) 0
    state_1260 state_1353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1260
  · exact cover_1353
#print axioms cover_1259

def state_1380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1380 := by
  apply coveredState_split_literal (state := state_1380) 0
    state_1381 state_1428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1381
  · exact cover_1428
#print axioms cover_1380

def state_1258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1258 := by
  apply coveredState_split_literal (state := state_1258) 4
    state_1259 state_1380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1259
  · exact cover_1380
#print axioms cover_1258

def state_1040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1040 := by
  apply coveredState_split_literal (state := state_1040) 3
    state_1041 state_1258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041
  · exact cover_1258
#print axioms cover_1040

def state_680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_680 := by
  apply coveredState_split_literal (state := state_680) 2
    state_681 state_1040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_681
  · exact cover_1040
#print axioms cover_680

def state_16 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_16 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_16 := by
  apply coveredState_split_literal (state := state_16) 1
    state_17 state_680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17
  · exact cover_680
#print axioms cover_16

def state_1453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1453 := by
  apply coveredState_split_literal (state := state_1453) 0
    state_1454 state_1475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1454
  · exact cover_1475
#print axioms cover_1453

def state_1546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1546 := by
  apply coveredState_split_literal (state := state_1546) 1
    state_1547 state_1606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547
  · exact cover_1606
#print axioms cover_1546

def state_1522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1522 := by
  apply coveredState_split_literal (state := state_1522) 0
    state_1523 state_1546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523
  · exact cover_1546
#print axioms cover_1522

def state_1452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1452 := by
  apply coveredState_split_literal (state := state_1452) 4
    state_1453 state_1522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1453
  · exact cover_1522
#print axioms cover_1452

def state_1640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1640 := by
  apply coveredState_split_literal (state := state_1640) 1
    state_1641 state_1664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641
  · exact cover_1664
#print axioms cover_1640

def state_1616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1616 := by
  apply coveredState_split_literal (state := state_1616) 0
    state_1617 state_1640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617
  · exact cover_1640
#print axioms cover_1616

def state_1712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1712 := by
  apply coveredState_split_literal (state := state_1712) 3
    state_1713 state_1718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1713
  · exact cover_1718
#print axioms cover_1712

def state_1711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1711 := by
  apply coveredState_split_literal (state := state_1711) 2
    state_1712 state_1779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1712
  · exact cover_1779
#print axioms cover_1711

def state_1710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1710 := by
  apply coveredState_split_literal (state := state_1710) 1
    state_1711 state_1790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1711
  · exact cover_1790
#print axioms cover_1710

def state_1709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1709 := by
  apply coveredState_split_literal (state := state_1709) 0
    state_1710 state_1803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1710
  · exact cover_1803
#print axioms cover_1709

def state_1615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1615 := by
  apply coveredState_split_literal (state := state_1615) 4
    state_1616 state_1709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616
  · exact cover_1709
#print axioms cover_1615

def state_1451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1451 := by
  apply coveredState_split_literal (state := state_1451) 3
    state_1452 state_1615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1452
  · exact cover_1615
#print axioms cover_1451

def state_1883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1883 := by
  apply coveredState_split_literal (state := state_1883) 3
    state_1884 state_1941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1884
  · exact cover_1941
#print axioms cover_1883

def state_1869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1869 := by
  apply coveredState_split_literal (state := state_1869) 2
    state_1870 state_1883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1870
  · exact cover_1883
#print axioms cover_1869

def state_1868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1868 := by
  apply coveredState_split_literal (state := state_1868) 1
    state_1869 state_1948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1869
  · exact cover_1948
#print axioms cover_1868

def state_1836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1836 := by
  apply coveredState_split_literal (state := state_1836) 0
    state_1837 state_1868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1837
  · exact cover_1868
#print axioms cover_1836

def state_2010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_2010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2010 := by
  apply coveredState_split_literal (state := state_2010) 3
    state_2011 state_2070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2011
  · exact cover_2070
#print axioms cover_2010
end Mub6.Numerical.CircleFullPrototype.Forest
