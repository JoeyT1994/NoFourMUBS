import CircleFullInterface
import CircleForestAssembly0034
import CircleForestChunk0135
import CircleForestChunk0136
import CircleForestChunk0137
import CircleForestChunk0138
import CircleForestChunk0139
import CircleForestChunk0140
import CircleForestChunk0141
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_54079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_54079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54079 := by
  apply coveredState_split_literal (state := state_54079) 3
    state_54080 state_54137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54080
  · exact cover_54137
#print axioms cover_54079

def state_53865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_53865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53865 := by
  apply coveredState_split_literal (state := state_53865) 2
    state_53866 state_54079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53866
  · exact cover_54079
#print axioms cover_53865

def state_53864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_53864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53864 := by
  apply coveredState_split_literal (state := state_53864) 1
    state_53865 state_54156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53865
  · exact cover_54156
#print axioms cover_53864

def state_54201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_54201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54201 := by
  apply coveredState_split_literal (state := state_54201) 1
    state_54202 state_54249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54202
  · exact cover_54249
#print axioms cover_54201

def state_53863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_53863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53863 := by
  apply coveredState_split_literal (state := state_53863) 0
    state_53864 state_54201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53864
  · exact cover_54201
#print axioms cover_53863

def state_53823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_53823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53823 := by
  apply coveredState_split_literal (state := state_53823) 4
    state_53824 state_53863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53824
  · exact cover_53863
#print axioms cover_53823

def state_53822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_53822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53822 := by
  apply coveredState_split_literal (state := state_53822) 3
    state_53823 state_54294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53823
  · exact cover_54294
#print axioms cover_53822

def state_53764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_53764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53764 := by
  apply coveredState_split_literal (state := state_53764) 2
    state_53765 state_53822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53765
  · exact cover_53822
#print axioms cover_53764

def state_53436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_53436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53436 := by
  apply coveredState_split_literal (state := state_53436) 1
    state_53437 state_53764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53437
  · exact cover_53764
#print axioms cover_53436

def state_51368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_51368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51368 := by
  apply coveredState_split_literal (state := state_51368) 0
    state_51369 state_53436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51369
  · exact cover_53436
#print axioms cover_51368

def state_54346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_54346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54346 := by
  apply coveredState_split_literal (state := state_54346) 1
    state_54347 state_54364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54347
  · exact cover_54364
#print axioms cover_54346

def state_54328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_54328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54328 := by
  apply coveredState_split_literal (state := state_54328) 0
    state_54329 state_54346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54329
  · exact cover_54346
#print axioms cover_54328

def state_54450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 26)))
theorem cover_54450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54450 := by
  apply coveredState_split_literal (state := state_54450) 0
    state_54451 state_54480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54451
  · exact cover_54480
#print axioms cover_54450

def state_54657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 27)))
theorem cover_54657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54657 := by
  apply coveredState_split_literal (state := state_54657) 1
    state_54658 state_54707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54658
  · exact cover_54707
#print axioms cover_54657

def state_54777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 55)))
theorem cover_54777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54777 := by
  apply coveredState_split_literal (state := state_54777) 2
    state_54778 state_54797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54778
  · exact cover_54797
#print axioms cover_54777

def state_54753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 27)))
theorem cover_54753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54753 := by
  apply coveredState_split_literal (state := state_54753) 4
    state_54754 state_54777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54754
  · exact cover_54777
#print axioms cover_54753

def state_54752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 27)))
theorem cover_54752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54752 := by
  apply coveredState_split_literal (state := state_54752) 1
    state_54753 state_54850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54753
  · exact cover_54850
#print axioms cover_54752

def state_54656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 27)))
theorem cover_54656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54656 := by
  apply coveredState_split_literal (state := state_54656) 0
    state_54657 state_54752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54657
  · exact cover_54752
#print axioms cover_54656

def state_54655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 24 else 27)))
theorem cover_54655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54655 := by
  apply coveredState_split_literal (state := state_54655) 3
    state_54656 state_54907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54656
  · exact cover_54907
#print axioms cover_54655

def state_54627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 27)))
theorem cover_54627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54627 := by
  apply coveredState_split_literal (state := state_54627) 2
    state_54628 state_54655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54628
  · exact cover_54655
#print axioms cover_54627

def state_54565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 27)))
theorem cover_54565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54565 := by
  apply coveredState_split_literal (state := state_54565) 1
    state_54566 state_54627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54566
  · exact cover_54627
#print axioms cover_54565

def state_54539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 27)))
theorem cover_54539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54539 := by
  apply coveredState_split_literal (state := state_54539) 0
    state_54540 state_54565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54540
  · exact cover_54565
#print axioms cover_54539

def state_54449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 13)))
theorem cover_54449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54449 := by
  apply coveredState_split_literal (state := state_54449) 4
    state_54450 state_54539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54450
  · exact cover_54539
#print axioms cover_54449

def state_54448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
theorem cover_54448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54448 := by
  apply coveredState_split_literal (state := state_54448) 3
    state_54449 state_54934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54449
  · exact cover_54934
#print axioms cover_54448

def state_54969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 26)))
theorem cover_54969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54969 := by
  apply coveredState_split_literal (state := state_54969) 2
    state_54970 state_55027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54970
  · exact cover_55027
#print axioms cover_54969

def state_54951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 26)))
theorem cover_54951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54951 := by
  apply coveredState_split_literal (state := state_54951) 1
    state_54952 state_54969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54952
  · exact cover_54969
#print axioms cover_54951

def state_54939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 26)))
theorem cover_54939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54939 := by
  apply coveredState_split_literal (state := state_54939) 0
    state_54940 state_54951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54940
  · exact cover_54951
#print axioms cover_54939

def state_55131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
theorem cover_55131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55131 := by
  apply coveredState_split_literal (state := state_55131) 1
    state_55132 state_55139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55132
  · exact cover_55139
#print axioms cover_55131

def state_55121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
theorem cover_55121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55121 := by
  apply coveredState_split_literal (state := state_55121) 0
    state_55122 state_55131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55122
  · exact cover_55131
#print axioms cover_55121

def state_55120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 54)))
theorem cover_55120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55120 := by
  apply coveredState_split_literal (state := state_55120) 3
    state_55121 state_55202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55121
  · exact cover_55202
#print axioms cover_55120

def state_55119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 27)))
theorem cover_55119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55119 := by
  apply coveredState_split_literal (state := state_55119) 4
    state_55120 state_55221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55120
  · exact cover_55221
#print axioms cover_55119

def state_55118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
theorem cover_55118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55118 := by
  apply coveredState_split_literal (state := state_55118) 2
    state_55119 state_55238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55119
  · exact cover_55238
#print axioms cover_55118
end Mub6.Numerical.CircleFullPrototype.Forest
