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
def state_1466370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 63 else 44)))
def hex_1466370 : String := "41444208430940E60809440842064306400608"
theorem cover_1466370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1466370)
  decide +kernel
#print axioms cover_1466370

def state_1466389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 45)))
def hex_1466389 : String := "420643064440050905"
theorem cover_1466389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1466389)
  decide +kernel
#print axioms cover_1466389

def state_1466398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 22)))
def hex_1466398 : String := "4442064306414005080505"
theorem cover_1466398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1466398)
  decide +kernel
#print axioms cover_1466398

def state_1466409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 22)))
def hex_1466409 : String := "414442084309404109080809440842064306400508"
theorem cover_1466409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1466409)
  decide +kernel
#print axioms cover_1466409

def state_1466430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 23)))
def hex_1466430 : String := "420643064440050905"
theorem cover_1466430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1466430)
  decide +kernel
#print axioms cover_1466430

def state_1466439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
def hex_1466439 : String := "4442064306414005080505"
theorem cover_1466439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1466439)
  decide +kernel
#print axioms cover_1466439

def state_1466450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
def hex_1466450 : String := "414442084309404109080809440842064306400508"
theorem cover_1466450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1466450)
  decide +kernel
#print axioms cover_1466450

def state_1466472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1466472 : String := "4142430A0A434409080842430644060A43440641080A4441080508"
theorem cover_1466472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_1466472)
  decide +kernel
#print axioms cover_1466472

def state_1466500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1466500 : String := "424344090A44090A4309440908"
theorem cover_1466500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_1466500)
  decide +kernel
#print axioms cover_1466500

def state_1466514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_1466514 : String := "4344400609400A410A0944404142060A06410942440606440609400A410942090A"
theorem cover_1466514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1466514)
  decide +kernel
#print axioms cover_1466514

def state_1466547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1466547 : String := "434440410906090944404144420A0808440505410944424306400509430940050909400809"
theorem cover_1466547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1466547)
  decide +kernel
#print axioms cover_1466547

def state_1466588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1466588 : String := "414243440708074344410607060642430708434407420744070607"
theorem cover_1466588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466588 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1466588)
  decide +kernel
#print axioms cover_1466588

def state_1466619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 4)))
def hex_1466619 : String := "4007414207434406060707"
theorem cover_1466619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1466619)
  decide +kernel
#print axioms cover_1466619
end Mub6.Numerical.CircleFullD0.Forest
