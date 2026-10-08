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
def state_387416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_387416 : String := "444142074407400905420944404342094441074007070907434244410709054441074340070A07410909070909"
theorem cover_387416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_387416)
  decide +kernel
#print axioms cover_387416

def state_387462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_387462 : String := "4344050509"
theorem cover_387462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_387462)
  decide +kernel
#print axioms cover_387462

def state_387468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
def hex_387468 : String := "444243064440060605430644400641420606060609"
theorem cover_387468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_387468)
  decide +kernel
#print axioms cover_387468

def state_387490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_387490 : String := "420944404143420944404109064143060706060943060941434244410943060906444143400642444143060706060640074207074306400606060943060909"
theorem cover_387490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_387490)
  decide +kernel
#print axioms cover_387490

def state_387553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_387553 : String := "06"
theorem cover_387553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_387553)
  decide +kernel
#print axioms cover_387553

def state_387557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_387557 : String := "4142430A44404107420707070A0A4243444007070A444042430641090606064042430A06090A4344070A444009060A"
theorem cover_387557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387557 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_387557)
  decide +kernel
#print axioms cover_387557

def state_387604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_387604 : String := "410A424344060A44424306404107064144070A060606430A44060A"
theorem cover_387604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_387604)
  decide +kernel
#print axioms cover_387604

def state_387633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_387633 : String := "42430A440A40410642060A060A"
theorem cover_387633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_387633)
  decide +kernel
#print axioms cover_387633
end Mub6.Numerical.CircleFullPrototype.Forest
