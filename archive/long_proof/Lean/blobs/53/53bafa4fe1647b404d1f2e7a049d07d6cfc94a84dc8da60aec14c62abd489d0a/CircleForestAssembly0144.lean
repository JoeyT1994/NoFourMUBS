import CircleFullInterface
import CircleForestAssembly0143
import CircleForestChunk0564
import CircleForestChunk0565
import CircleForestChunk0566
import CircleForestChunk0567
import CircleForestChunk0568
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_374373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_374373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374373 := by
  apply coveredState_split_literal (state := state_374373) 4
    state_374374 state_374381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374374
  · exact cover_374381
#print axioms cover_374373

def state_374331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_374331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374331 := by
  apply coveredState_split_literal (state := state_374331) 3
    state_374332 state_374373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374332
  · exact cover_374373
#print axioms cover_374331

def state_374323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_374323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374323 := by
  apply coveredState_split_literal (state := state_374323) 1
    state_374324 state_374331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374324
  · exact cover_374331
#print axioms cover_374323

def state_374322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_374322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374322 := by
  apply coveredState_split_literal (state := state_374322) 0
    state_374323 state_374534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374323
  · exact cover_374534
#print axioms cover_374322

def state_374318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_374318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374318 := by
  apply coveredState_split_literal (state := state_374318) 4
    state_374319 state_374322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374319
  · exact cover_374322
#print axioms cover_374318

def state_374254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_374254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374254 := by
  apply coveredState_split_literal (state := state_374254) 3
    state_374255 state_374318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374255
  · exact cover_374318
#print axioms cover_374254

def state_374621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
theorem cover_374621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374621 := by
  apply coveredState_split_literal (state := state_374621) 3
    state_374622 state_374647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374622
  · exact cover_374647
#print axioms cover_374621

def state_374591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
theorem cover_374591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374591 := by
  apply coveredState_split_literal (state := state_374591) 1
    state_374592 state_374621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374592
  · exact cover_374621
#print axioms cover_374591

def state_374583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_374583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374583 := by
  apply coveredState_split_literal (state := state_374583) 4
    state_374584 state_374591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374584
  · exact cover_374591
#print axioms cover_374583

def state_374579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_374579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374579 := by
  apply coveredState_split_literal (state := state_374579) 3
    state_374580 state_374583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374580
  · exact cover_374583
#print axioms cover_374579

def state_374578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_374578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374578 := by
  apply coveredState_split_literal (state := state_374578) 2
    state_374579 state_374700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374579
  · exact cover_374700
#print axioms cover_374578

def state_374570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_374570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374570 := by
  apply coveredState_split_literal (state := state_374570) 1
    state_374571 state_374578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374571
  · exact cover_374578
#print axioms cover_374570

def state_374569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_374569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374569 := by
  apply coveredState_split_literal (state := state_374569) 0
    state_374570 state_374705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374570
  · exact cover_374705
#print axioms cover_374569

def state_374565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_374565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374565 := by
  apply coveredState_split_literal (state := state_374565) 4
    state_374566 state_374569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374566
  · exact cover_374569
#print axioms cover_374565

def state_374553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_374553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374553 := by
  apply coveredState_split_literal (state := state_374553) 3
    state_374554 state_374565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374554
  · exact cover_374565
#print axioms cover_374553

def state_374253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_374253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374253 := by
  apply coveredState_split_literal (state := state_374253) 2
    state_374254 state_374553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374254
  · exact cover_374553
#print axioms cover_374253

def state_374221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_374221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374221 := by
  apply coveredState_split_literal (state := state_374221) 1
    state_374222 state_374253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374222
  · exact cover_374253
#print axioms cover_374221

def state_371977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_371977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371977 := by
  apply coveredState_split_literal (state := state_371977) 0
    state_371978 state_374221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371978
  · exact cover_374221
#print axioms cover_371977

def state_374785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_374785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374785 := by
  apply coveredState_split_literal (state := state_374785) 0
    state_374786 state_374799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374786
  · exact cover_374799
#print axioms cover_374785

def state_374784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_374784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374784 := by
  apply coveredState_split_literal (state := state_374784) 4
    state_374785 state_374862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374785
  · exact cover_374862
#print axioms cover_374784

def state_374782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_374782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374782 := by
  apply coveredState_split_literal (state := state_374782) 3
    state_374783 state_374784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374783
  · exact cover_374784
#print axioms cover_374782

def state_374875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 12)))
theorem cover_374875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374875 := by
  apply coveredState_split_literal (state := state_374875) 2
    state_374876 state_374883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374876
  · exact cover_374883
#print axioms cover_374875

def state_374865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 12)))
theorem cover_374865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374865 := by
  apply coveredState_split_literal (state := state_374865) 0
    state_374866 state_374875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374866
  · exact cover_374875
#print axioms cover_374865

def state_374864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
theorem cover_374864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374864 := by
  apply coveredState_split_literal (state := state_374864) 4
    state_374865 state_374944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374865
  · exact cover_374944
#print axioms cover_374864

def state_375028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
theorem cover_375028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375028 := by
  apply coveredState_split_literal (state := state_375028) 2
    state_375029 state_375062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375029
  · exact cover_375062
#print axioms cover_375028

def state_375224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 48)))
theorem cover_375224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375224 := by
  apply coveredState_split_literal (state := state_375224) 0
    state_375225 state_375278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375225
  · exact cover_375278
#print axioms cover_375224

def state_375206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 48)))
theorem cover_375206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375206 := by
  apply coveredState_split_literal (state := state_375206) 3
    state_375207 state_375224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375207
  · exact cover_375224
#print axioms cover_375206

def state_375182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 48)))
theorem cover_375182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375182 := by
  apply coveredState_split_literal (state := state_375182) 1
    state_375183 state_375206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375183
  · exact cover_375206
#print axioms cover_375182

def state_375181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 24)))
theorem cover_375181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375181 := by
  apply coveredState_split_literal (state := state_375181) 4
    state_375182 state_375321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375182
  · exact cover_375321
#print axioms cover_375181

def state_375121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
theorem cover_375121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375121 := by
  apply coveredState_split_literal (state := state_375121) 2
    state_375122 state_375181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375122
  · exact cover_375181
#print axioms cover_375121

def state_375027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
theorem cover_375027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375027 := by
  apply coveredState_split_literal (state := state_375027) 0
    state_375028 state_375121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375028
  · exact cover_375121
#print axioms cover_375027

def state_375026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 12)))
theorem cover_375026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375026 := by
  apply coveredState_split_literal (state := state_375026) 4
    state_375027 state_375342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375027
  · exact cover_375342
#print axioms cover_375026
end Mub6.Numerical.CircleFullPrototype.Forest
