import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1003453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 89)))
def hex_1003453 : String := "42404443064106424044434106094142400A0606094306410642090606064306410642400706060606"
theorem cover_1003453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_1003453)
  decide +kernel
#print axioms cover_1003453

def state_1003495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 72 else (if j.val < 4 then 104 else 89)))
def hex_1003495 : String := "40444341420906084142400909404408080609434142404408070606094142404443090943070A440909404443064106080606420909444309094306410609"
theorem cover_1003495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1003495)
  decide +kernel
#print axioms cover_1003495

def state_1003558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 73 else (if j.val < 4 then 104 else 89)))
def hex_1003558 : String := "404408430641060806"
theorem cover_1003558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1003558)
  decide +kernel
#print axioms cover_1003558

def state_1003573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 178)))
def hex_1003573 : String := "424044434106424007050641060A070606"
theorem cover_1003573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1003573)
  decide +kernel
#print axioms cover_1003573

def state_1003590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 221) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 178)))
def hex_1003590 : String := "4240444341420A400A06090A43410A0A0A4443410609414205060943410609410609404443410642090541420A060A430641060A06"
theorem cover_1003590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1003590)
  decide +kernel
#print axioms cover_1003590

def state_1003643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 178)))
def hex_1003643 : String := "4142084044430608070642400A44430A0808400A44434106090A430608"
theorem cover_1003643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1003643)
  decide +kernel
#print axioms cover_1003643

def state_1003672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 179)))
def hex_1003672 : String := "43410642404443070A0744430608050641084208400A06"
theorem cover_1003672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1003672)
  decide +kernel
#print axioms cover_1003672

def state_1003695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 89)))
def hex_1003695 : String := "4443064106420806430608"
theorem cover_1003695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1003695)
  decide +kernel
#print axioms cover_1003695
end Mub6.Numerical.CircleFullD0.Forest
