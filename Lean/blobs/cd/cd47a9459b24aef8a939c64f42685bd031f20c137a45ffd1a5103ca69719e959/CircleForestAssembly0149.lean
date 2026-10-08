import CircleFullInterface
import CircleForestAssembly0147
import CircleForestAssembly0148
import CircleForestChunk0581
import CircleForestChunk0582
import CircleForestChunk0583
import CircleForestChunk0584
import CircleForestChunk0585
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_378459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
theorem cover_378459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378459 := by
  apply coveredState_split_literal (state := state_378459) 1
    state_378460 state_378485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378460
  · exact cover_378485
#print axioms cover_378459

def state_378458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
theorem cover_378458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378458 := by
  apply coveredState_split_literal (state := state_378458) 4
    state_378459 state_378552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378459
  · exact cover_378552
#print axioms cover_378458

def state_378457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_378457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378457 := by
  apply coveredState_split_literal (state := state_378457) 3
    state_378458 state_378561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378458
  · exact cover_378561
#print axioms cover_378457

def state_378456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_378456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378456 := by
  apply coveredState_split_literal (state := state_378456) 2
    state_378457 state_378562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378457
  · exact cover_378562
#print axioms cover_378456

def state_378436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_378436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378436 := by
  apply coveredState_split_literal (state := state_378436) 1
    state_378437 state_378456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378437
  · exact cover_378456
#print axioms cover_378436

def state_378435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_378435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378435 := by
  apply coveredState_split_literal (state := state_378435) 0
    state_378436 state_378577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378436
  · exact cover_378577
#print axioms cover_378435

def state_378434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_378434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378434 := by
  apply coveredState_split_literal (state := state_378434) 4
    state_378435 state_378634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378435
  · exact cover_378634
#print axioms cover_378434

def state_378433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_378433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378433 := by
  apply coveredState_split_literal (state := state_378433) 3
    state_378434 state_378637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378434
  · exact cover_378637
#print axioms cover_378433

def state_378411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_378411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378411 := by
  apply coveredState_split_literal (state := state_378411) 2
    state_378412 state_378433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378412
  · exact cover_378433
#print axioms cover_378411

def state_378019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_378019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378019 := by
  apply coveredState_split_literal (state := state_378019) 1
    state_378020 state_378411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378020
  · exact cover_378411
#print axioms cover_378019

def state_377751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_377751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377751 := by
  apply coveredState_split_literal (state := state_377751) 0
    state_377752 state_378019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377752
  · exact cover_378019
#print axioms cover_377751

def state_377177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_377177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377177 := by
  apply coveredState_split_literal (state := state_377177) 4
    state_377178 state_377751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377178
  · exact cover_377751
#print axioms cover_377177

def state_371975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_371975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371975 := by
  apply coveredState_split_literal (state := state_371975) 3
    state_371976 state_377177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371976
  · exact cover_377177
#print axioms cover_371975

def state_378649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_378649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378649 := by
  apply coveredState_split_literal (state := state_378649) 1
    state_378650 state_378677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378650
  · exact cover_378677
#print axioms cover_378649

def state_378648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_378648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378648 := by
  apply coveredState_split_literal (state := state_378648) 0
    state_378649 state_378726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378649
  · exact cover_378726
#print axioms cover_378648

def state_378739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_378739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378739 := by
  apply coveredState_split_literal (state := state_378739) 0
    state_378740 state_378799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378740
  · exact cover_378799
#print axioms cover_378739

def state_378647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_378647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378647 := by
  apply coveredState_split_literal (state := state_378647) 4
    state_378648 state_378739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378648
  · exact cover_378739
#print axioms cover_378647

def state_378832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_378832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378832 := by
  apply coveredState_split_literal (state := state_378832) 2
    state_378833 state_378870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378833
  · exact cover_378870
#print axioms cover_378832

def state_378814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_378814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378814 := by
  apply coveredState_split_literal (state := state_378814) 1
    state_378815 state_378832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378815
  · exact cover_378832
#print axioms cover_378814

def state_378906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_378906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378906 := by
  apply coveredState_split_literal (state := state_378906) 2
    state_378907 state_378950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378907
  · exact cover_378950
#print axioms cover_378906

def state_378975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_378975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378975 := by
  apply coveredState_split_literal (state := state_378975) 4
    state_378976 state_379013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378976
  · exact cover_379013
#print axioms cover_378975

def state_378974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_378974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378974 := by
  apply coveredState_split_literal (state := state_378974) 3
    state_378975 state_379046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378975
  · exact cover_379046
#print axioms cover_378974

def state_379083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
theorem cover_379083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379083 := by
  apply coveredState_split_literal (state := state_379083) 2
    state_379084 state_379101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379084
  · exact cover_379101
#print axioms cover_379083

def state_379073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_379073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379073 := by
  apply coveredState_split_literal (state := state_379073) 3
    state_379074 state_379083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379074
  · exact cover_379083
#print axioms cover_379073

def state_379183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_379183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379183 := by
  apply coveredState_split_literal (state := state_379183) 1
    state_379184 state_379241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379184
  · exact cover_379241
#print axioms cover_379183

def state_379182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 4)))
theorem cover_379182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379182 := by
  apply coveredState_split_literal (state := state_379182) 4
    state_379183 state_379256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379183
  · exact cover_379256
#print axioms cover_379182

def state_379164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
theorem cover_379164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379164 := by
  apply coveredState_split_literal (state := state_379164) 2
    state_379165 state_379182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379165
  · exact cover_379182
#print axioms cover_379164

def state_379150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_379150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379150 := by
  apply coveredState_split_literal (state := state_379150) 3
    state_379151 state_379164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379151
  · exact cover_379164
#print axioms cover_379150

def state_379072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_379072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379072 := by
  apply coveredState_split_literal (state := state_379072) 1
    state_379073 state_379150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379073
  · exact cover_379150
#print axioms cover_379072

def state_379275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_379275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379275 := by
  apply coveredState_split_literal (state := state_379275) 1
    state_379276 state_379303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379276
  · exact cover_379303
#print axioms cover_379275

def state_379071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_379071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379071 := by
  apply coveredState_split_literal (state := state_379071) 0
    state_379072 state_379275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379072
  · exact cover_379275
#print axioms cover_379071

def state_379070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_379070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379070 := by
  apply coveredState_split_literal (state := state_379070) 4
    state_379071 state_379364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379071
  · exact cover_379364
#print axioms cover_379070
end Mub6.Numerical.CircleFullPrototype.Forest
