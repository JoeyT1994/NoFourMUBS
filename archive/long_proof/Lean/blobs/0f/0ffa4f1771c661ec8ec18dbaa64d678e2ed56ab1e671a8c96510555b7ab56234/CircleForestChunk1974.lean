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
def state_2554368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
def hex_2554368 : String := "4144400A42090A0A444042430A410A444006090A0A420943410A44400A42090A0A4144060A444006420906400A42090A400A420A0A"
theorem cover_2554368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2554368)
  decide +kernel
#print axioms cover_2554368

def state_2554423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_2554423 : String := "4243414442090742094007094407420907414407420907440742070743414440064207064007420A0A440705410607"
theorem cover_2554423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_2554423)
  decide +kernel
#print axioms cover_2554423

def state_2554471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
def hex_2554471 : String := "09"
theorem cover_2554471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2554471)
  decide +kernel
#print axioms cover_2554471

def state_2554475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 48)))
def hex_2554475 : String := "4042094344064106060642094344094140090940090944094140060909"
theorem cover_2554475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2554475)
  decide +kernel
#print axioms cover_2554475

def state_2554505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
def hex_2554505 : String := "4243410A44090A4144090A4409400509430A4144060A44060A"
theorem cover_2554505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554505 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_2554505)
  decide +kernel
#print axioms cover_2554505

def state_2554531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 54 else (if j.val < 4 then 30 else 49)))
def hex_2554531 : String := "09"
theorem cover_2554531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2554531)
  decide +kernel
#print axioms cover_2554531

def state_2554533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 60 else 49)))
def hex_2554533 : String := "41444042090A090A44404209430A41060909400A4209430A0A"
theorem cover_2554533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554533 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2554533)
  decide +kernel
#print axioms cover_2554533

def state_2554558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 61 else 49)))
def hex_2554558 : String := "414440420906094042090A4209430A410909444042090609404209430A4106054209434144090A44090A41440840090808"
theorem cover_2554558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2554558)
  decide +kernel
#print axioms cover_2554558

def state_2554608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 48)))
def hex_2554608 : String := "404207074209430908"
theorem cover_2554608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2554608)
  decide +kernel
#print axioms cover_2554608
end Mub6.Numerical.CircleFullD0.Forest
