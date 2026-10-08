import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_166659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
def hex_166659 : String := "404105444306054342050905414443420509054342050705444342400541050606420509434205404109440609414409074406430742050705"
theorem cover_166659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_166659)
  decide +kernel
#print axioms cover_166659

def state_166716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
def hex_166716 : String := "4406424341400644060A0641400544070506430641404406064406434206064205414005440643420506050606"
theorem cover_166716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 45) (hex := hex_166716)
  decide +kernel
#print axioms cover_166716

def state_166763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 28)))
def hex_166763 : String := "42084308400808"
theorem cover_166763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_166763)
  decide +kernel
#print axioms cover_166763

def state_166771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 29)))
def hex_166771 : String := "43404108080840410544080508"
theorem cover_166771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_166771)
  decide +kernel
#print axioms cover_166771

def state_166785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 29)))
def hex_166785 : String := "4041444208070744420843064006084243074041074406080807414408074408420807"
theorem cover_166785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_166785)
  decide +kernel
#print axioms cover_166785

def state_166822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
def hex_166822 : String := "444308420508434240050807420540054105440505"
theorem cover_166822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_166822)
  decide +kernel
#print axioms cover_166822

def state_166844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 58)))
def hex_166844 : String := "434208404108060842084041080808"
theorem cover_166844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_166844)
  decide +kernel
#print axioms cover_166844

def state_166860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 94 else 59)))
def hex_166860 : String := "424041054408430805084041444307420507074443420606420840060843074240050807410744084307420807"
theorem cover_166860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_166860)
  decide +kernel
#print axioms cover_166860
end Mub6.Numerical.CircleFullPrototype.Forest
