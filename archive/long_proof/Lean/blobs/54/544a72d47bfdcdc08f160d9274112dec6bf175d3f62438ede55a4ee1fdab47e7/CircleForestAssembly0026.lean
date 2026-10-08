import CircleFullInterface
import CircleForestAssembly0025
import CircleForestChunk0104
import CircleForestChunk0105
import CircleForestChunk0106
import CircleForestChunk0107
import CircleForestChunk0108
import CircleForestChunk0109
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_962898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 110)))
theorem cover_962898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962898 := by
  apply coveredState_split_literal (state := state_962898) 3
    state_962899 state_962976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962899
  · exact cover_962976
#print axioms cover_962898

def state_962897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 55)))
theorem cover_962897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962897 := by
  apply coveredState_split_literal (state := state_962897) 4
    state_962898 state_963007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962898
  · exact cover_963007
#print axioms cover_962897

def state_962803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_962803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962803 := by
  apply coveredState_split_literal (state := state_962803) 2
    state_962804 state_962897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962804
  · exact cover_962897
#print axioms cover_962803

def state_963020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_963020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963020 := by
  apply coveredState_split_literal (state := state_963020) 2
    state_963021 state_963082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963021
  · exact cover_963082
#print axioms cover_963020

def state_962802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_962802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962802 := by
  apply coveredState_split_literal (state := state_962802) 1
    state_962803 state_963020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962803
  · exact cover_963020
#print axioms cover_962802

def state_962778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_962778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962778 := by
  apply coveredState_split_literal (state := state_962778) 0
    state_962779 state_962802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962779
  · exact cover_962802
#print axioms cover_962778

def state_962656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 27)))
theorem cover_962656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962656 := by
  apply coveredState_split_literal (state := state_962656) 4
    state_962657 state_962778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962657
  · exact cover_962778
#print axioms cover_962656

def state_962655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
theorem cover_962655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962655 := by
  apply coveredState_split_literal (state := state_962655) 3
    state_962656 state_963137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962656
  · exact cover_963137
#print axioms cover_962655

def state_963178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 54)))
theorem cover_963178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963178 := by
  apply coveredState_split_literal (state := state_963178) 3
    state_963179 state_963206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963179
  · exact cover_963206
#print axioms cover_963178

def state_963177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_963177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963177 := by
  apply coveredState_split_literal (state := state_963177) 2
    state_963178 state_963261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963178
  · exact cover_963261
#print axioms cover_963177

def state_963176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_963176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963176 := by
  apply coveredState_split_literal (state := state_963176) 1
    state_963177 state_963276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963177
  · exact cover_963276
#print axioms cover_963176

def state_963166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_963166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963166 := by
  apply coveredState_split_literal (state := state_963166) 0
    state_963167 state_963176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963167
  · exact cover_963176
#print axioms cover_963166

def state_963165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 27)))
theorem cover_963165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963165 := by
  apply coveredState_split_literal (state := state_963165) 4
    state_963166 state_963291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963166
  · exact cover_963291
#print axioms cover_963165

def state_963352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 27)))
theorem cover_963352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963352 := by
  apply coveredState_split_literal (state := state_963352) 4
    state_963353 state_963392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963353
  · exact cover_963392
#print axioms cover_963352

def state_963164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 27)))
theorem cover_963164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963164 := by
  apply coveredState_split_literal (state := state_963164) 3
    state_963165 state_963352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963165
  · exact cover_963352
#print axioms cover_963164

def state_962654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_962654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962654 := by
  apply coveredState_split_literal (state := state_962654) 2
    state_962655 state_963164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962655
  · exact cover_963164
#print axioms cover_962654

def state_962653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_962653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962653 := by
  apply coveredState_split_literal (state := state_962653) 1
    state_962654 state_963449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962654
  · exact cover_963449
#print axioms cover_962653

def state_962629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_962629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962629 := by
  apply coveredState_split_literal (state := state_962629) 0
    state_962630 state_962653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962630
  · exact cover_962653
#print axioms cover_962629

def state_962628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
theorem cover_962628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962628 := by
  apply coveredState_split_literal (state := state_962628) 3
    state_962629 state_963506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962629
  · exact cover_963506
#print axioms cover_962628

def state_962610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_962610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962610 := by
  apply coveredState_split_literal (state := state_962610) 4
    state_962611 state_962628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962611
  · exact cover_962628
#print axioms cover_962610

def state_963538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_963538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963538 := by
  apply coveredState_split_literal (state := state_963538) 1
    state_963539 state_963602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963539
  · exact cover_963602
#print axioms cover_963538

def state_963536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_963536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963536 := by
  apply coveredState_split_literal (state := state_963536) 0
    state_963537 state_963538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963537
  · exact cover_963538
#print axioms cover_963536

def state_963621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_963621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963621 := by
  apply coveredState_split_literal (state := state_963621) 1
    state_963622 state_963679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963622
  · exact cover_963679
#print axioms cover_963621

def state_963613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_963613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963613 := by
  apply coveredState_split_literal (state := state_963613) 0
    state_963614 state_963621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963614
  · exact cover_963621
#print axioms cover_963613

def state_963535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 27)))
theorem cover_963535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963535 := by
  apply coveredState_split_literal (state := state_963535) 3
    state_963536 state_963613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963536
  · exact cover_963613
#print axioms cover_963535

def state_963521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 13)))
theorem cover_963521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963521 := by
  apply coveredState_split_literal (state := state_963521) 4
    state_963522 state_963535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963522
  · exact cover_963535
#print axioms cover_963521

def state_962609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_962609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962609 := by
  apply coveredState_split_literal (state := state_962609) 2
    state_962610 state_963521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962610
  · exact cover_963521
#print axioms cover_962609

def state_962608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_962608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962608 := by
  apply coveredState_split_literal (state := state_962608) 1
    state_962609 state_963686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962609
  · exact cover_963686
#print axioms cover_962608

def state_963733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_963733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963733 := by
  apply coveredState_split_literal (state := state_963733) 2
    state_963734 state_963737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963734
  · exact cover_963737
#print axioms cover_963733

def state_963732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_963732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963732 := by
  apply coveredState_split_literal (state := state_963732) 1
    state_963733 state_963798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963733
  · exact cover_963798
#print axioms cover_963732

def state_963731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_963731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963731 := by
  apply coveredState_split_literal (state := state_963731) 0
    state_963732 state_963811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963732
  · exact cover_963811
#print axioms cover_963731

def state_963816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 110)))
theorem cover_963816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963816 := by
  apply coveredState_split_literal (state := state_963816) 3
    state_963817 state_963878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963817
  · exact cover_963878
#print axioms cover_963816
end Mub6.Numerical.CircleFullD0.Forest
