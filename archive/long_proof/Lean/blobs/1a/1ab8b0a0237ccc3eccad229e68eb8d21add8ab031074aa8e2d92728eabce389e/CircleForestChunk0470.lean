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
def state_1050527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
def hex_1050527 : String := "41074043060606"
theorem cover_1050527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1050527)
  decide +kernel
#print axioms cover_1050527

def state_1050536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
def hex_1050536 : String := "440506"
theorem cover_1050536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1050536)
  decide +kernel
#print axioms cover_1050536

def state_1050539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
def hex_1050539 : String := "44434041420544050505054041424405064443054041424405064443054041420644DD06050543060605054340080540410606060505434008064041060606"
theorem cover_1050539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 63) (hex := hex_1050539)
  decide +kernel
#print axioms cover_1050539

def state_1050603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 4)))
def hex_1050603 : String := "44400A4106050A"
theorem cover_1050603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1050603)
  decide +kernel
#print axioms cover_1050603

def state_1050612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
def hex_1050612 : String := "41434244400A0606444041434244400A0606444041434244400A060644DD060A0A4106430506400A060A0A41430606430506400A060A0A"
theorem cover_1050612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 55) (hex := hex_1050612)
  decide +kernel
#print axioms cover_1050612

def state_1050667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
def hex_1050667 : String := "414306420644080643050A"
theorem cover_1050667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1050667)
  decide +kernel
#print axioms cover_1050667

def state_1050678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
def hex_1050678 : String := "400A410606"
theorem cover_1050678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1050678)
  decide +kernel
#print axioms cover_1050678

def state_1050683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_1050683 : String := "4041070A4106430606"
theorem cover_1050683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1050683)
  decide +kernel
#print axioms cover_1050683

def state_1050692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_1050692 : String := "44400A4142434441080A0A0A43440841050A080A0A"
theorem cover_1050692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1050692)
  decide +kernel
#print axioms cover_1050692

def state_1050713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1050713 : String := "42430A440A4042440A41430640420606064305404205440806060A0A4344400A43414205440508050A0A0A"
theorem cover_1050713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_1050713)
  decide +kernel
#print axioms cover_1050713
end Mub6.Numerical.CircleFullD0.Forest
