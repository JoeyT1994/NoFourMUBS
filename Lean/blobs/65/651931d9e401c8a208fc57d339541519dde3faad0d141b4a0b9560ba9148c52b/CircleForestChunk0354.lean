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
def state_160398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 60 else 42)))
def hex_160398 : String := "4044414243090909424340448008448009404407070743400509404480090909444109424306070909"
theorem cover_160398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_160398)
  decide +kernel
#print axioms cover_160398

def state_160439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 42)))
def hex_160439 : String := "4044414207094207434006090641070744410942070907"
theorem cover_160439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_160439)
  decide +kernel
#print axioms cover_160439

def state_160462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 43)))
def hex_160462 : String := "4109420709"
theorem cover_160462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_160462)
  decide +kernel
#print axioms cover_160462

def state_160467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 21)))
def hex_160467 : String := "444109424306050909"
theorem cover_160467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_160467)
  decide +kernel
#print axioms cover_160467

def state_160476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 21)))
def hex_160476 : String := "4044410A42074340070707074441050707"
theorem cover_160476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_160476)
  decide +kernel
#print axioms cover_160476

def state_160493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 21)))
def hex_160493 : String := "434044410942430909090909404441094209060909"
theorem cover_160493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_160493)
  decide +kernel
#print axioms cover_160493

def state_160519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 42)))
def hex_160519 : String := "414340080707430807"
theorem cover_160519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_160519)
  decide +kernel
#print axioms cover_160519

def state_160530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 57 else (if j.val < 4 then 60 else 42)))
def hex_160530 : String := "40444241434005440A0540070708414305400544050505420805444241430A070A41430A40440A0909054207410905"
theorem cover_160530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_160530)
  decide +kernel
#print axioms cover_160530

def state_160577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 42)))
def hex_160577 : String := "4044420706074442074143400707070707"
theorem cover_160577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_160577)
  decide +kernel
#print axioms cover_160577

def state_160594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 42)))
def hex_160594 : String := "4340050A4006440707"
theorem cover_160594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_160594)
  decide +kernel
#print axioms cover_160594

def state_160603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 43)))
def hex_160603 : String := "4207414340080707430807"
theorem cover_160603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_160603)
  decide +kernel
#print axioms cover_160603

def state_160614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 21)))
def hex_160614 : String := "4442414307070741430A4044420741070707070A4207410907"
theorem cover_160614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_160614)
  decide +kernel
#print axioms cover_160614

def state_160639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 21)))
def hex_160639 : String := "404442074107060707"
theorem cover_160639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_160639)
  decide +kernel
#print axioms cover_160639
end Mub6.Numerical.CircleFullPrototype.Forest
