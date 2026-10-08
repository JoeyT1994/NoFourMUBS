import CircleFullInterface
import CircleForestAssembly0268
import CircleForestChunk1030
import CircleForestChunk1031
import CircleForestChunk1032
import CircleForestChunk1033
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1547745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
theorem cover_1547745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547745 := by
  apply coveredState_split_literal (state := state_1547745) 0
    state_1547746 state_1547759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547746
  · exact cover_1547759
#print axioms cover_1547745

def state_1547744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
theorem cover_1547744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547744 := by
  apply coveredState_split_literal (state := state_1547744) 1
    state_1547745 state_1547840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547745
  · exact cover_1547840
#print axioms cover_1547744

def state_1547743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 43)))
theorem cover_1547743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547743 := by
  apply coveredState_split_literal (state := state_1547743) 3
    state_1547744 state_1547841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547744
  · exact cover_1547841
#print axioms cover_1547743

def state_1547741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 21)))
theorem cover_1547741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547741 := by
  apply coveredState_split_literal (state := state_1547741) 4
    state_1547742 state_1547743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547742
  · exact cover_1547743
#print axioms cover_1547741

def state_1548050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 205 else (if j.val < 4 then 81 else 87)))
theorem cover_1548050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548050 := by
  apply coveredState_split_literal (state := state_1548050) 4
    state_1548051 state_1548090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548051
  · exact cover_1548090
#print axioms cover_1548050

def state_1548024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
theorem cover_1548024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548024 := by
  apply coveredState_split_literal (state := state_1548024) 2
    state_1548025 state_1548050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548025
  · exact cover_1548050
#print axioms cover_1548024

def state_1548010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 120) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
theorem cover_1548010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548010 := by
  apply coveredState_split_literal (state := state_1548010) 0
    state_1548011 state_1548024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548011
  · exact cover_1548024
#print axioms cover_1548010

def state_1548009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
theorem cover_1548009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548009 := by
  apply coveredState_split_literal (state := state_1548009) 1
    state_1548010 state_1548117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548010
  · exact cover_1548117
#print axioms cover_1548009

def state_1547971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 87)))
theorem cover_1547971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547971 := by
  apply coveredState_split_literal (state := state_1547971) 3
    state_1547972 state_1548009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547972
  · exact cover_1548009
#print axioms cover_1547971

def state_1547919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 43)))
theorem cover_1547919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547919 := by
  apply coveredState_split_literal (state := state_1547919) 4
    state_1547920 state_1547971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547920
  · exact cover_1547971
#print axioms cover_1547919

def state_1548135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
theorem cover_1548135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548135 := by
  apply coveredState_split_literal (state := state_1548135) 1
    state_1548136 state_1548199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548136
  · exact cover_1548199
#print axioms cover_1548135

def state_1548125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 86)))
theorem cover_1548125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548125 := by
  apply coveredState_split_literal (state := state_1548125) 3
    state_1548126 state_1548135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548126
  · exact cover_1548135
#print axioms cover_1548125

def state_1548245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 174)))
theorem cover_1548245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548245 := by
  apply coveredState_split_literal (state := state_1548245) 1
    state_1548246 state_1548303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548246
  · exact cover_1548303
#print axioms cover_1548245

def state_1548237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 174)))
theorem cover_1548237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548237 := by
  apply coveredState_split_literal (state := state_1548237) 3
    state_1548238 state_1548245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548238
  · exact cover_1548245
#print axioms cover_1548237

def state_1548236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 87)))
theorem cover_1548236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548236 := by
  apply coveredState_split_literal (state := state_1548236) 4
    state_1548237 state_1548312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548237
  · exact cover_1548312
#print axioms cover_1548236

def state_1548235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1548235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548235 := by
  apply coveredState_split_literal (state := state_1548235) 2
    state_1548236 state_1548349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548236
  · exact cover_1548349
#print axioms cover_1548235

def state_1548217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1548217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548217 := by
  apply coveredState_split_literal (state := state_1548217) 0
    state_1548218 state_1548235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548218
  · exact cover_1548235
#print axioms cover_1548217

def state_1548216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1548216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548216 := by
  apply coveredState_split_literal (state := state_1548216) 1
    state_1548217 state_1548350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548217
  · exact cover_1548350
#print axioms cover_1548216

def state_1548208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 87)))
theorem cover_1548208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548208 := by
  apply coveredState_split_literal (state := state_1548208) 3
    state_1548209 state_1548216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548209
  · exact cover_1548216
#print axioms cover_1548208

def state_1548124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 43)))
theorem cover_1548124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548124 := by
  apply coveredState_split_literal (state := state_1548124) 4
    state_1548125 state_1548208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548125
  · exact cover_1548208
#print axioms cover_1548124

def state_1547918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1547918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547918 := by
  apply coveredState_split_literal (state := state_1547918) 2
    state_1547919 state_1548124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547919
  · exact cover_1548124
#print axioms cover_1547918

def state_1547882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1547882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547882 := by
  apply coveredState_split_literal (state := state_1547882) 0
    state_1547883 state_1547918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547883
  · exact cover_1547918
#print axioms cover_1547882

def state_1547881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1547881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547881 := by
  apply coveredState_split_literal (state := state_1547881) 1
    state_1547882 state_1548365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547882
  · exact cover_1548365
#print axioms cover_1547881

def state_1548393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1548393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548393 := by
  apply coveredState_split_literal (state := state_1548393) 2
    state_1548394 state_1548407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548394
  · exact cover_1548407
#print axioms cover_1548393

def state_1548383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1548383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548383 := by
  apply coveredState_split_literal (state := state_1548383) 0
    state_1548384 state_1548393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548384
  · exact cover_1548393
#print axioms cover_1548383

def state_1548382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1548382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548382 := by
  apply coveredState_split_literal (state := state_1548382) 1
    state_1548383 state_1548460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548383
  · exact cover_1548460
#print axioms cover_1548382

def state_1547880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1547880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547880 := by
  apply coveredState_split_literal (state := state_1547880) 3
    state_1547881 state_1548382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547881
  · exact cover_1548382
#print axioms cover_1547880

def state_1547842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 21)))
theorem cover_1547842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547842 := by
  apply coveredState_split_literal (state := state_1547842) 4
    state_1547843 state_1547880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547843
  · exact cover_1547880
#print axioms cover_1547842

def state_1547740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1547740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547740 := by
  apply coveredState_split_literal (state := state_1547740) 2
    state_1547741 state_1547842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547741
  · exact cover_1547842
#print axioms cover_1547740

def state_1547710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1547710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547710 := by
  apply coveredState_split_literal (state := state_1547710) 0
    state_1547711 state_1547740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547711
  · exact cover_1547740
#print axioms cover_1547710

def state_1547709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1547709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547709 := by
  apply coveredState_split_literal (state := state_1547709) 1
    state_1547710 state_1548461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547710
  · exact cover_1548461
#print axioms cover_1547709

def state_1547707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 10)))
theorem cover_1547707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547707 := by
  apply coveredState_split_literal (state := state_1547707) 4
    state_1547708 state_1547709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547708
  · exact cover_1547709
#print axioms cover_1547707
end Mub6.Numerical.CircleFullD0.Forest
