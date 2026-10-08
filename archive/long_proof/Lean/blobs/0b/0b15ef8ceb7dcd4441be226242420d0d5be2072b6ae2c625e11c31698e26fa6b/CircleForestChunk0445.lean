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
def state_1044379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
def hex_1044379 : String := "444340410A42440A430A40440A430A08080A0A40410A424407084409430A4009080A4340444106424306080606064044410842084340444208060606080808"
theorem cover_1044379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1044379)
  decide +kernel
#print axioms cover_1044379

def state_1044442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
def hex_1044442 : String := "440A4306404244410606060606"
theorem cover_1044442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1044442)
  decide +kernel
#print axioms cover_1044442

def state_1044455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_1044455 : String := "4106420A06"
theorem cover_1044455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1044455)
  decide +kernel
#print axioms cover_1044455

def state_1044463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_1044463 : String := "404341420744050A070707"
theorem cover_1044463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1044463)
  decide +kernel
#print axioms cover_1044463

def state_1044476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
def hex_1044476 : String := "444142404309070740430A4407410A090A094142404344090A440941420540444306090506090940430A4441060941060A06420940430944090909"
theorem cover_1044476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1044476)
  decide +kernel
#print axioms cover_1044476

def state_1044536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
def hex_1044536 : String := "41420740434407414207400A0607070707"
theorem cover_1044536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1044536)
  decide +kernel
#print axioms cover_1044536

def state_1044555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_1044555 : String := "404443414207404407090707074341420540440805080908440708"
theorem cover_1044555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1044555)
  decide +kernel
#print axioms cover_1044555

def state_1044584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
def hex_1044584 : String := "43414240444307074306410607060642070941424044074108070740444142070607410642430607060642074044070907"
theorem cover_1044584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1044584)
  decide +kernel
#print axioms cover_1044584
end Mub6.Numerical.CircleFullD0.Forest
