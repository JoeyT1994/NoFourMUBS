import CircleFullInterface
import CircleForestAssembly0060
import CircleForestAssembly0061
import CircleForestAssembly0064
import CircleForestChunk0257
import CircleForestChunk0258
import CircleForestChunk0259
import CircleForestChunk0260
import CircleForestChunk0261
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_137237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_137237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137237 := by
  apply coveredState_split_literal (state := state_137237) 2
    state_137238 state_137255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137238
  · exact cover_137255
#print axioms cover_137237

def state_137191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_137191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137191 := by
  apply coveredState_split_literal (state := state_137191) 1
    state_137192 state_137237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137192
  · exact cover_137237
#print axioms cover_137191

def state_137179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_137179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137179 := by
  apply coveredState_split_literal (state := state_137179) 0
    state_137180 state_137191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137180
  · exact cover_137191
#print axioms cover_137179

def state_137364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_137364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137364 := by
  apply coveredState_split_literal (state := state_137364) 0
    state_137365 state_137384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137365
  · exact cover_137384
#print axioms cover_137364

def state_137178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_137178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137178 := by
  apply coveredState_split_literal (state := state_137178) 4
    state_137179 state_137364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137179
  · exact cover_137364
#print axioms cover_137178

def state_133636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_133636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133636 := by
  apply coveredState_split_literal (state := state_133636) 3
    state_133637 state_137178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133637
  · exact cover_137178
#print axioms cover_133636

def state_133500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133500 := by
  apply coveredState_split_literal (state := state_133500) 2
    state_133501 state_133636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133501
  · exact cover_133636
#print axioms cover_133500

def state_133292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133292 := by
  apply coveredState_split_literal (state := state_133292) 1
    state_133293 state_133500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133293
  · exact cover_133500
#print axioms cover_133292

def state_133142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133142 := by
  apply coveredState_split_literal (state := state_133142) 0
    state_133143 state_133292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133143
  · exact cover_133292
#print axioms cover_133142

def state_132858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_132858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132858 := by
  apply coveredState_split_literal (state := state_132858) 4
    state_132859 state_133142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132859
  · exact cover_133142
#print axioms cover_132858

def state_132170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_132170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132170 := by
  apply coveredState_split_literal (state := state_132170) 3
    state_132171 state_132858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132171
  · exact cover_132858
#print axioms cover_132170

def state_137446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_137446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137446 := by
  apply coveredState_split_literal (state := state_137446) 1
    state_137447 state_137480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137447
  · exact cover_137480
#print axioms cover_137446

def state_137445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_137445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137445 := by
  apply coveredState_split_literal (state := state_137445) 0
    state_137446 state_137543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137446
  · exact cover_137543
#print axioms cover_137445

def state_137591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_137591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137591 := by
  apply coveredState_split_literal (state := state_137591) 1
    state_137592 state_137617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137592
  · exact cover_137617
#print axioms cover_137591

def state_137706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_137706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137706 := by
  apply coveredState_split_literal (state := state_137706) 2
    state_137707 state_137752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137707
  · exact cover_137752
#print axioms cover_137706

def state_137656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_137656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137656 := by
  apply coveredState_split_literal (state := state_137656) 1
    state_137657 state_137706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137657
  · exact cover_137706
#print axioms cover_137656

def state_137590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_137590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137590 := by
  apply coveredState_split_literal (state := state_137590) 0
    state_137591 state_137656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137591
  · exact cover_137656
#print axioms cover_137590

def state_137444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_137444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137444 := by
  apply coveredState_split_literal (state := state_137444) 4
    state_137445 state_137590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137445
  · exact cover_137590
#print axioms cover_137444

def state_137861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_137861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137861 := by
  apply coveredState_split_literal (state := state_137861) 2
    state_137862 state_137907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137862
  · exact cover_137907
#print axioms cover_137861

def state_137950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_137950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137950 := by
  apply coveredState_split_literal (state := state_137950) 4
    state_137951 state_137998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137951
  · exact cover_137998
#print axioms cover_137950

def state_137949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_137949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137949 := by
  apply coveredState_split_literal (state := state_137949) 3
    state_137950 state_138049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137950
  · exact cover_138049
#print axioms cover_137949

def state_137948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_137948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137948 := by
  apply coveredState_split_literal (state := state_137948) 2
    state_137949 state_138058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137949
  · exact cover_138058
#print axioms cover_137948

def state_137860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_137860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137860 := by
  apply coveredState_split_literal (state := state_137860) 1
    state_137861 state_137948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137861
  · exact cover_137948
#print axioms cover_137860

def state_137798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_137798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137798 := by
  apply coveredState_split_literal (state := state_137798) 0
    state_137799 state_137860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137799
  · exact cover_137860
#print axioms cover_137798

def state_138172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_138172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138172 := by
  apply coveredState_split_literal (state := state_138172) 1
    state_138173 state_138182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138173
  · exact cover_138182
#print axioms cover_138172

def state_138154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_138154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138154 := by
  apply coveredState_split_literal (state := state_138154) 0
    state_138155 state_138172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138155
  · exact cover_138172
#print axioms cover_138154

def state_138153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_138153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138153 := by
  apply coveredState_split_literal (state := state_138153) 4
    state_138154 state_138245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138154
  · exact cover_138245
#print axioms cover_138153

def state_138152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_138152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138152 := by
  apply coveredState_split_literal (state := state_138152) 3
    state_138153 state_138274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138153
  · exact cover_138274
#print axioms cover_138152

def state_138151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_138151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138151 := by
  apply coveredState_split_literal (state := state_138151) 2
    state_138152 state_138297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138152
  · exact cover_138297
#print axioms cover_138151

def state_138133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_138133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138133 := by
  apply coveredState_split_literal (state := state_138133) 1
    state_138134 state_138151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138134
  · exact cover_138151
#print axioms cover_138133

def state_138117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_138117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138117 := by
  apply coveredState_split_literal (state := state_138117) 0
    state_138118 state_138133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138118
  · exact cover_138133
#print axioms cover_138117

def state_137797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_137797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137797 := by
  apply coveredState_split_literal (state := state_137797) 4
    state_137798 state_138117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137798
  · exact cover_138117
#print axioms cover_137797
end Mub6.Numerical.CircleFullPrototype.Forest
