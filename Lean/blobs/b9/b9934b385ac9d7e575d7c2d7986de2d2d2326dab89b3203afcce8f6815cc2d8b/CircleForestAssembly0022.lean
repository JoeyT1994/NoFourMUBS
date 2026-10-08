import CircleFullInterface
import CircleForestAssembly0021
import CircleForestChunk0091
import CircleForestChunk0092
import CircleForestChunk0093
import CircleForestChunk0094
import CircleForestChunk0095
import CircleForestChunk0096
import CircleForestChunk0097
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_959947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 55)))
theorem cover_959947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959947 := by
  apply coveredState_split_literal (state := state_959947) 4
    state_959948 state_960061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959948
  · exact cover_960061
#print axioms cover_959947

def state_959935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_959935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959935 := by
  apply coveredState_split_literal (state := state_959935) 2
    state_959936 state_959947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959936
  · exact cover_959947
#print axioms cover_959935

def state_960083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 110)))
theorem cover_960083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960083 := by
  apply coveredState_split_literal (state := state_960083) 3
    state_960084 state_960129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960084
  · exact cover_960129
#print axioms cover_960083

def state_960082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 55)))
theorem cover_960082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960082 := by
  apply coveredState_split_literal (state := state_960082) 4
    state_960083 state_960150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960083
  · exact cover_960150
#print axioms cover_960082

def state_960066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_960066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960066 := by
  apply coveredState_split_literal (state := state_960066) 2
    state_960067 state_960082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960067
  · exact cover_960082
#print axioms cover_960066

def state_959934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_959934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959934 := by
  apply coveredState_split_literal (state := state_959934) 1
    state_959935 state_960066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959935
  · exact cover_960066
#print axioms cover_959934

def state_959916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_959916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959916 := by
  apply coveredState_split_literal (state := state_959916) 0
    state_959917 state_959934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959917
  · exact cover_959934
#print axioms cover_959916

def state_959822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 55)))
theorem cover_959822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959822 := by
  apply coveredState_split_literal (state := state_959822) 3
    state_959823 state_959916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959823
  · exact cover_959916
#print axioms cover_959822

def state_959582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_959582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959582 := by
  apply coveredState_split_literal (state := state_959582) 4
    state_959583 state_959822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959583
  · exact cover_959822
#print axioms cover_959582

def state_959490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_959490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959490 := by
  apply coveredState_split_literal (state := state_959490) 2
    state_959491 state_959582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959491
  · exact cover_959582
#print axioms cover_959490

def state_960227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 55)))
theorem cover_960227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960227 := by
  apply coveredState_split_literal (state := state_960227) 3
    state_960228 state_960259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960228
  · exact cover_960259
#print axioms cover_960227

def state_960221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_960221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960221 := by
  apply coveredState_split_literal (state := state_960221) 4
    state_960222 state_960227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960222
  · exact cover_960227
#print axioms cover_960221

def state_960189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_960189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960189 := by
  apply coveredState_split_literal (state := state_960189) 2
    state_960190 state_960221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960190
  · exact cover_960221
#print axioms cover_960189

def state_959489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_959489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959489 := by
  apply coveredState_split_literal (state := state_959489) 1
    state_959490 state_960189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959490
  · exact cover_960189
#print axioms cover_959489

def state_959457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_959457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959457 := by
  apply coveredState_split_literal (state := state_959457) 0
    state_959458 state_959489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959458
  · exact cover_959489
#print axioms cover_959457

def state_959389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
theorem cover_959389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959389 := by
  apply coveredState_split_literal (state := state_959389) 3
    state_959390 state_959457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959390
  · exact cover_959457
#print axioms cover_959389

def state_959367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_959367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959367 := by
  apply coveredState_split_literal (state := state_959367) 4
    state_959368 state_959389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959368
  · exact cover_959389
#print axioms cover_959367

def state_959307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_959307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959307 := by
  apply coveredState_split_literal (state := state_959307) 2
    state_959308 state_959367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959308
  · exact cover_959367
#print axioms cover_959307

def state_959306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_959306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959306 := by
  apply coveredState_split_literal (state := state_959306) 1
    state_959307 state_960316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959307
  · exact cover_960316
#print axioms cover_959306

def state_960465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
theorem cover_960465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960465 := by
  apply coveredState_split_literal (state := state_960465) 3
    state_960466 state_960475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960466
  · exact cover_960475
#print axioms cover_960465

def state_960570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_960570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960570 := by
  apply coveredState_split_literal (state := state_960570) 2
    state_960571 state_960584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960571
  · exact cover_960584
#print axioms cover_960570

def state_960671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 55)))
theorem cover_960671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960671 := by
  apply coveredState_split_literal (state := state_960671) 4
    state_960672 state_960723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960672
  · exact cover_960723
#print axioms cover_960671

def state_960647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_960647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960647 := by
  apply coveredState_split_literal (state := state_960647) 2
    state_960648 state_960671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960648
  · exact cover_960671
#print axioms cover_960647

def state_960569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_960569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960569 := by
  apply coveredState_split_literal (state := state_960569) 1
    state_960570 state_960647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960570
  · exact cover_960647
#print axioms cover_960569

def state_960568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_960568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960568 := by
  apply coveredState_split_literal (state := state_960568) 0
    state_960569 state_960742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960569
  · exact cover_960742
#print axioms cover_960568

def state_960536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 55)))
theorem cover_960536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960536 := by
  apply coveredState_split_literal (state := state_960536) 3
    state_960537 state_960568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960537
  · exact cover_960568
#print axioms cover_960536

def state_960464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_960464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960464 := by
  apply coveredState_split_literal (state := state_960464) 4
    state_960465 state_960536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960465
  · exact cover_960536
#print axioms cover_960464

def state_960418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_960418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960418 := by
  apply coveredState_split_literal (state := state_960418) 2
    state_960419 state_960464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960419
  · exact cover_960464
#print axioms cover_960418

def state_960798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_960798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960798 := by
  apply coveredState_split_literal (state := state_960798) 1
    state_960799 state_960858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960799
  · exact cover_960858
#print axioms cover_960798

def state_960797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
theorem cover_960797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960797 := by
  apply coveredState_split_literal (state := state_960797) 0
    state_960798 state_960871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960798
  · exact cover_960871
#print axioms cover_960797

def state_960789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 55)))
theorem cover_960789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960789 := by
  apply coveredState_split_literal (state := state_960789) 3
    state_960790 state_960797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960790
  · exact cover_960797
#print axioms cover_960789

def state_960785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_960785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960785 := by
  apply coveredState_split_literal (state := state_960785) 4
    state_960786 state_960789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960786
  · exact cover_960789
#print axioms cover_960785
end Mub6.Numerical.CircleFullD0.Forest
