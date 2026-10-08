import CircleFullInterface
import CircleForestAssembly0213
import CircleForestAssembly0214
import CircleForestAssembly0215
import CircleForestChunk0805
import CircleForestChunk0808
import CircleForestChunk0813
import CircleForestChunk0818
import CircleForestChunk0819
import CircleForestChunk0820
import CircleForestChunk0821
import CircleForestChunk0822
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1495952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 59)))
theorem cover_1495952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495952 := by
  apply coveredState_split_literal (state := state_1495952) 2
    state_1495953 state_1496940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495953
  · exact cover_1496940
#print axioms cover_1495952

def state_1495928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1495928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495928 := by
  apply coveredState_split_literal (state := state_1495928) 4
    state_1495929 state_1495952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495929
  · exact cover_1495952
#print axioms cover_1495928

def state_1494990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1494990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494990 := by
  apply coveredState_split_literal (state := state_1494990) 1
    state_1494991 state_1495928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494991
  · exact cover_1495928
#print axioms cover_1494990

def state_1494696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1494696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494696 := by
  apply coveredState_split_literal (state := state_1494696) 3
    state_1494697 state_1494990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494697
  · exact cover_1494990
#print axioms cover_1494696

def state_1494674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1494674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494674 := by
  apply coveredState_split_literal (state := state_1494674) 0
    state_1494675 state_1494696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494675
  · exact cover_1494696
#print axioms cover_1494674

def state_1494658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1494658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494658 := by
  apply coveredState_split_literal (state := state_1494658) 4
    state_1494659 state_1494674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494659
  · exact cover_1494674
#print axioms cover_1494658

def state_1494657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1494657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494657 := by
  apply coveredState_split_literal (state := state_1494657) 2
    state_1494658 state_1497021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494658
  · exact cover_1497021
#print axioms cover_1494657

def state_1494083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1494083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494083 := by
  apply coveredState_split_literal (state := state_1494083) 1
    state_1494084 state_1494657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494084
  · exact cover_1494657
#print axioms cover_1494083

def state_1494043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1494043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494043 := by
  apply coveredState_split_literal (state := state_1494043) 3
    state_1494044 state_1494083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494044
  · exact cover_1494083
#print axioms cover_1494043

def state_1497062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
theorem cover_1497062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497062 := by
  apply coveredState_split_literal (state := state_1497062) 3
    state_1497063 state_1497070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497063
  · exact cover_1497070
#print axioms cover_1497062

def state_1497061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
theorem cover_1497061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497061 := by
  apply coveredState_split_literal (state := state_1497061) 0
    state_1497062 state_1497127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497062
  · exact cover_1497127
#print axioms cover_1497061

def state_1497135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1497135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497135 := by
  apply coveredState_split_literal (state := state_1497135) 3
    state_1497136 state_1497147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497136
  · exact cover_1497147
#print axioms cover_1497135

def state_1497134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1497134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497134 := by
  apply coveredState_split_literal (state := state_1497134) 0
    state_1497135 state_1497210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497135
  · exact cover_1497210
#print axioms cover_1497134

def state_1497060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1497060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497060 := by
  apply coveredState_split_literal (state := state_1497060) 4
    state_1497061 state_1497134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497061
  · exact cover_1497134
#print axioms cover_1497060

def state_1497059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1497059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497059 := by
  apply coveredState_split_literal (state := state_1497059) 2
    state_1497060 state_1497211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497060
  · exact cover_1497211
#print axioms cover_1497059

def state_1497302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 58)))
theorem cover_1497302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497302 := by
  apply coveredState_split_literal (state := state_1497302) 2
    state_1497303 state_1497360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497303
  · exact cover_1497360
#print axioms cover_1497302

def state_1497494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
theorem cover_1497494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497494 := by
  apply coveredState_split_literal (state := state_1497494) 4
    state_1497495 state_1497550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497495
  · exact cover_1497550
#print axioms cover_1497494

def state_1497478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
theorem cover_1497478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497478 := by
  apply coveredState_split_literal (state := state_1497478) 1
    state_1497479 state_1497494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497479
  · exact cover_1497494
#print axioms cover_1497478

def state_1497462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1497462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497462 := by
  apply coveredState_split_literal (state := state_1497462) 3
    state_1497463 state_1497478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497463
  · exact cover_1497478
#print axioms cover_1497462

def state_1497461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1497461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497461 := by
  apply coveredState_split_literal (state := state_1497461) 0
    state_1497462 state_1497577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497462
  · exact cover_1497577
#print axioms cover_1497461

def state_1497399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 59)))
theorem cover_1497399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497399 := by
  apply coveredState_split_literal (state := state_1497399) 2
    state_1497400 state_1497461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497400
  · exact cover_1497461
#print axioms cover_1497399

def state_1497301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1497301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497301 := by
  apply coveredState_split_literal (state := state_1497301) 4
    state_1497302 state_1497399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497302
  · exact cover_1497399
#print axioms cover_1497301

def state_1497617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
theorem cover_1497617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497617 := by
  apply coveredState_split_literal (state := state_1497617) 1
    state_1497618 state_1497673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497618
  · exact cover_1497673
#print axioms cover_1497617

def state_1497782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
theorem cover_1497782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497782 := by
  apply coveredState_split_literal (state := state_1497782) 3
    state_1497783 state_1497838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497783
  · exact cover_1497838
#print axioms cover_1497782

def state_1497781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
theorem cover_1497781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497781 := by
  apply coveredState_split_literal (state := state_1497781) 0
    state_1497782 state_1497853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497782
  · exact cover_1497853
#print axioms cover_1497781

def state_1497749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 59)))
theorem cover_1497749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497749 := by
  apply coveredState_split_literal (state := state_1497749) 4
    state_1497750 state_1497781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497750
  · exact cover_1497781
#print axioms cover_1497749

def state_1497735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1497735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497735 := by
  apply coveredState_split_literal (state := state_1497735) 2
    state_1497736 state_1497749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497736
  · exact cover_1497749
#print axioms cover_1497735

def state_1497874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 119)))
theorem cover_1497874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497874 := by
  apply coveredState_split_literal (state := state_1497874) 1
    state_1497875 state_1497934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497875
  · exact cover_1497934
#print axioms cover_1497874

def state_1497873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
theorem cover_1497873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497873 := by
  apply coveredState_split_literal (state := state_1497873) 3
    state_1497874 state_1497943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497874
  · exact cover_1497943
#print axioms cover_1497873

def state_1497872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
theorem cover_1497872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497872 := by
  apply coveredState_split_literal (state := state_1497872) 0
    state_1497873 state_1497944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497873
  · exact cover_1497944
#print axioms cover_1497872

def state_1497864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 59)))
theorem cover_1497864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497864 := by
  apply coveredState_split_literal (state := state_1497864) 4
    state_1497865 state_1497872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497865
  · exact cover_1497872
#print axioms cover_1497864

def state_1497858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1497858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497858 := by
  apply coveredState_split_literal (state := state_1497858) 2
    state_1497859 state_1497864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497859
  · exact cover_1497864
#print axioms cover_1497858
end Mub6.Numerical.CircleFullD0.Forest
