import CircleFullInterface
import CircleForestAssembly0153
import CircleForestChunk0588
import CircleForestChunk0589
import CircleForestChunk0590
import CircleForestChunk0591
import CircleForestChunk0592
import CircleForestChunk0593
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1330082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 6)))
theorem cover_1330082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330082 := by
  apply coveredState_split_literal (state := state_1330082) 3
    state_1330083 state_1330206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330083
  · exact cover_1330206
#print axioms cover_1330082

def state_1330066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_1330066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330066 := by
  apply coveredState_split_literal (state := state_1330066) 2
    state_1330067 state_1330082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330067
  · exact cover_1330082
#print axioms cover_1330066

def state_1330271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 6)))
theorem cover_1330271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330271 := by
  apply coveredState_split_literal (state := state_1330271) 3
    state_1330272 state_1330329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330272
  · exact cover_1330329
#print axioms cover_1330271

def state_1330247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_1330247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330247 := by
  apply coveredState_split_literal (state := state_1330247) 2
    state_1330248 state_1330271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330248
  · exact cover_1330271
#print axioms cover_1330247

def state_1330065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_1330065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330065 := by
  apply coveredState_split_literal (state := state_1330065) 0
    state_1330066 state_1330247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330066
  · exact cover_1330247
#print axioms cover_1330065

def state_1330064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_1330064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330064 := by
  apply coveredState_split_literal (state := state_1330064) 4
    state_1330065 state_1330366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330065
  · exact cover_1330366
#print axioms cover_1330064

def state_1330010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1330010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330010 := by
  apply coveredState_split_literal (state := state_1330010) 3
    state_1330011 state_1330064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330011
  · exact cover_1330064
#print axioms cover_1330010

def state_1330389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 12)))
theorem cover_1330389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330389 := by
  apply coveredState_split_literal (state := state_1330389) 1
    state_1330390 state_1330443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330390
  · exact cover_1330443
#print axioms cover_1330389

def state_1330388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 6)))
theorem cover_1330388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330388 := by
  apply coveredState_split_literal (state := state_1330388) 4
    state_1330389 state_1330460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330389
  · exact cover_1330460
#print axioms cover_1330388

def state_1330650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 45 else 48)))
theorem cover_1330650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330650 := by
  apply coveredState_split_literal (state := state_1330650) 2
    state_1330651 state_1330652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330651
  · exact cover_1330652
#print axioms cover_1330650

def state_1330610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 48)))
theorem cover_1330610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330610 := by
  apply coveredState_split_literal (state := state_1330610) 3
    state_1330611 state_1330650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330611
  · exact cover_1330650
#print axioms cover_1330610

def state_1330578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 48)))
theorem cover_1330578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330578 := by
  apply coveredState_split_literal (state := state_1330578) 0
    state_1330579 state_1330610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330579
  · exact cover_1330610
#print axioms cover_1330578

def state_1330577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 24)))
theorem cover_1330577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330577 := by
  apply coveredState_split_literal (state := state_1330577) 4
    state_1330578 state_1330715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330578
  · exact cover_1330715
#print axioms cover_1330577

def state_1330515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 24)))
theorem cover_1330515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330515 := by
  apply coveredState_split_literal (state := state_1330515) 1
    state_1330516 state_1330577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330516
  · exact cover_1330577
#print axioms cover_1330515

def state_1330816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 58 else (if j.val < 4 then 45 else 48)))
theorem cover_1330816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330816 := by
  apply coveredState_split_literal (state := state_1330816) 1
    state_1330817 state_1330872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330817
  · exact cover_1330872
#print axioms cover_1330816

def state_1330815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 45 else 48)))
theorem cover_1330815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330815 := by
  apply coveredState_split_literal (state := state_1330815) 2
    state_1330816 state_1330913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330816
  · exact cover_1330913
#print axioms cover_1330815

def state_1330807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 48)))
theorem cover_1330807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330807 := by
  apply coveredState_split_literal (state := state_1330807) 3
    state_1330808 state_1330815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330808
  · exact cover_1330815
#print axioms cover_1330807

def state_1330765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 48)))
theorem cover_1330765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330765 := by
  apply coveredState_split_literal (state := state_1330765) 0
    state_1330766 state_1330807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330766
  · exact cover_1330807
#print axioms cover_1330765

def state_1330944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 49)))
theorem cover_1330944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330944 := by
  apply coveredState_split_literal (state := state_1330944) 0
    state_1330945 state_1330970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330945
  · exact cover_1330970
#print axioms cover_1330944

def state_1330764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 24)))
theorem cover_1330764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330764 := by
  apply coveredState_split_literal (state := state_1330764) 4
    state_1330765 state_1330944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330765
  · exact cover_1330944
#print axioms cover_1330764

def state_1330742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 24)))
theorem cover_1330742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330742 := by
  apply coveredState_split_literal (state := state_1330742) 1
    state_1330743 state_1330764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330743
  · exact cover_1330764
#print axioms cover_1330742

def state_1330514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 24)))
theorem cover_1330514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330514 := by
  apply coveredState_split_literal (state := state_1330514) 2
    state_1330515 state_1330742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330515
  · exact cover_1330742
#print axioms cover_1330514

def state_1330513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 12)))
theorem cover_1330513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330513 := by
  apply coveredState_split_literal (state := state_1330513) 4
    state_1330514 state_1331029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330514
  · exact cover_1331029
#print axioms cover_1330513

def state_1331125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 48)))
theorem cover_1331125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331125 := by
  apply coveredState_split_literal (state := state_1331125) 2
    state_1331126 state_1331169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331126
  · exact cover_1331169
#print axioms cover_1331125

def state_1331107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 48)))
theorem cover_1331107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331107 := by
  apply coveredState_split_literal (state := state_1331107) 0
    state_1331108 state_1331125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331108
  · exact cover_1331125
#print axioms cover_1331107

def state_1331272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 59 else (if j.val < 4 then 46 else 49)))
theorem cover_1331272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331272 := by
  apply coveredState_split_literal (state := state_1331272) 3
    state_1331273 state_1331326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331273
  · exact cover_1331326
#print axioms cover_1331272

def state_1331268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 59 else (if j.val < 4 then 46 else 49)))
theorem cover_1331268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331268 := by
  apply coveredState_split_literal (state := state_1331268) 1
    state_1331269 state_1331272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331269
  · exact cover_1331272
#print axioms cover_1331268

def state_1331228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
theorem cover_1331228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331228 := by
  apply coveredState_split_literal (state := state_1331228) 2
    state_1331229 state_1331268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331229
  · exact cover_1331268
#print axioms cover_1331228

def state_1331224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
theorem cover_1331224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331224 := by
  apply coveredState_split_literal (state := state_1331224) 0
    state_1331225 state_1331228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331225
  · exact cover_1331228
#print axioms cover_1331224

def state_1331106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 24)))
theorem cover_1331106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331106 := by
  apply coveredState_split_literal (state := state_1331106) 4
    state_1331107 state_1331224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331107
  · exact cover_1331224
#print axioms cover_1331106

def state_1331105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 23 else 24)))
theorem cover_1331105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331105 := by
  apply coveredState_split_literal (state := state_1331105) 3
    state_1331106 state_1331343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331106
  · exact cover_1331343
#print axioms cover_1331105

def state_1331095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 29 else (if j.val < 4 then 23 else 24)))
theorem cover_1331095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331095 := by
  apply coveredState_split_literal (state := state_1331095) 1
    state_1331096 state_1331105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331096
  · exact cover_1331105
#print axioms cover_1331095
end Mub6.Numerical.CircleFullD0.Forest
