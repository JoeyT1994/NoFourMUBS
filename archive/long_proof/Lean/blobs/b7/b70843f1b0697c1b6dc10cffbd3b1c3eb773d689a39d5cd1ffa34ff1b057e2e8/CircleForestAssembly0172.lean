import CircleFullInterface
import CircleForestAssembly0149
import CircleForestAssembly0161
import CircleForestAssembly0170
import CircleForestAssembly0171
import CircleForestChunk0654
import CircleForestChunk0655
import CircleForestChunk0656
import CircleForestChunk0657
import CircleForestChunk0658
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1346038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1346038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346038 := by
  apply coveredState_split_literal (state := state_1346038) 3
    state_1346039 state_1346142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346039
  · exact cover_1346142
#print axioms cover_1346038

def state_1346026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1346026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346026 := by
  apply coveredState_split_literal (state := state_1346026) 2
    state_1346027 state_1346038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346027
  · exact cover_1346038
#print axioms cover_1346026

def state_1345978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1345978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345978 := by
  apply coveredState_split_literal (state := state_1345978) 1
    state_1345979 state_1346026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345979
  · exact cover_1346026
#print axioms cover_1345978

def state_1345026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1345026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345026 := by
  apply coveredState_split_literal (state := state_1345026) 0
    state_1345027 state_1345978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345027
  · exact cover_1345978
#print axioms cover_1345026

def state_1344776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1344776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344776 := by
  apply coveredState_split_literal (state := state_1344776) 4
    state_1344777 state_1345026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344777
  · exact cover_1345026
#print axioms cover_1344776

def state_1336808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1336808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336808 := by
  apply coveredState_split_literal (state := state_1336808) 3
    state_1336809 state_1344776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336809
  · exact cover_1344776
#print axioms cover_1336808

def state_1346218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1346218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346218 := by
  apply coveredState_split_literal (state := state_1346218) 3
    state_1346219 state_1346238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346219
  · exact cover_1346238
#print axioms cover_1346218

def state_1346190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1346190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346190 := by
  apply coveredState_split_literal (state := state_1346190) 2
    state_1346191 state_1346218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346191
  · exact cover_1346218
#print axioms cover_1346190

def state_1346152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1346152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346152 := by
  apply coveredState_split_literal (state := state_1346152) 1
    state_1346153 state_1346190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346153
  · exact cover_1346190
#print axioms cover_1346152

def state_1346292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1346292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346292 := by
  apply coveredState_split_literal (state := state_1346292) 1
    state_1346293 state_1346354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346293
  · exact cover_1346354
#print axioms cover_1346292

def state_1346290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1346290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346290 := by
  apply coveredState_split_literal (state := state_1346290) 4
    state_1346291 state_1346292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346291
  · exact cover_1346292
#print axioms cover_1346290

def state_1346289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1346289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346289 := by
  apply coveredState_split_literal (state := state_1346289) 3
    state_1346290 state_1346363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346290
  · exact cover_1346363
#print axioms cover_1346289

def state_1346288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1346288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346288 := by
  apply coveredState_split_literal (state := state_1346288) 2
    state_1346289 state_1346388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346289
  · exact cover_1346388
#print axioms cover_1346288

def state_1346287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1346287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346287 := by
  apply coveredState_split_literal (state := state_1346287) 1
    state_1346288 state_1346401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346288
  · exact cover_1346401
#print axioms cover_1346287

def state_1346151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1346151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346151 := by
  apply coveredState_split_literal (state := state_1346151) 0
    state_1346152 state_1346287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346152
  · exact cover_1346287
#print axioms cover_1346151

def state_1346488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1346488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346488 := by
  apply coveredState_split_literal (state := state_1346488) 3
    state_1346489 state_1346522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346489
  · exact cover_1346522
#print axioms cover_1346488

def state_1346487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1346487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346487 := by
  apply coveredState_split_literal (state := state_1346487) 2
    state_1346488 state_1346579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346488
  · exact cover_1346579
#print axioms cover_1346487

def state_1346486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1346486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346486 := by
  apply coveredState_split_literal (state := state_1346486) 1
    state_1346487 state_1346584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346487
  · exact cover_1346584
#print axioms cover_1346486

def state_1346442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1346442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346442 := by
  apply coveredState_split_literal (state := state_1346442) 0
    state_1346443 state_1346486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346443
  · exact cover_1346486
#print axioms cover_1346442

def state_1346150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1346150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346150 := by
  apply coveredState_split_literal (state := state_1346150) 4
    state_1346151 state_1346442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346151
  · exact cover_1346442
#print axioms cover_1346150

def state_1346628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1346628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346628 := by
  apply coveredState_split_literal (state := state_1346628) 0
    state_1346629 state_1346688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346629
  · exact cover_1346688
#print axioms cover_1346628

def state_1346739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_1346739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346739 := by
  apply coveredState_split_literal (state := state_1346739) 3
    state_1346740 state_1346769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346740
  · exact cover_1346769
#print axioms cover_1346739

def state_1346717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1346717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346717 := by
  apply coveredState_split_literal (state := state_1346717) 2
    state_1346718 state_1346739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346718
  · exact cover_1346739
#print axioms cover_1346717

def state_1346716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1346716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346716 := by
  apply coveredState_split_literal (state := state_1346716) 1
    state_1346717 state_1346810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346717
  · exact cover_1346810
#print axioms cover_1346716

def state_1346869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1346869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346869 := by
  apply coveredState_split_literal (state := state_1346869) 1
    state_1346870 state_1346897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346870
  · exact cover_1346897
#print axioms cover_1346869

def state_1346715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1346715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346715 := by
  apply coveredState_split_literal (state := state_1346715) 0
    state_1346716 state_1346869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346716
  · exact cover_1346869
#print axioms cover_1346715

def state_1346627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1346627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346627 := by
  apply coveredState_split_literal (state := state_1346627) 4
    state_1346628 state_1346715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346628
  · exact cover_1346715
#print axioms cover_1346627

def state_1346149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1346149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346149 := by
  apply coveredState_split_literal (state := state_1346149) 3
    state_1346150 state_1346627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1346150
  · exact cover_1346627
#print axioms cover_1346149

def state_1336807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1336807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336807 := by
  apply coveredState_split_literal (state := state_1336807) 2
    state_1336808 state_1346149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336808
  · exact cover_1346149
#print axioms cover_1336807

def state_1325997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1325997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325997 := by
  apply coveredState_split_literal (state := state_1325997) 1
    state_1325998 state_1336807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325998
  · exact cover_1336807
#print axioms cover_1325997

def state_1301977 : State := rootState
theorem cover_1301977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301977 := by
  apply coveredState_split_literal (state := state_1301977) 0
    state_1301978 state_1325997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301978
  · exact cover_1325997
#print axioms cover_1301977

def state_1458712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1458712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458712 := by
  apply coveredState_split_literal (state := state_1458712) 1
    state_1458713 state_1458742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458713
  · exact cover_1458742
#print axioms cover_1458712
end Mub6.Numerical.CircleFullD0.Forest
