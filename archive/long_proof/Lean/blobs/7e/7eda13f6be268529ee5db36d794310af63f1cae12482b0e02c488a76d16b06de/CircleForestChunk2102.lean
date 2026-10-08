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
def state_2584960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
def hex_2584960 : String := "4243444140084207080841400842430608080844410A400542430805054140054209054005424344080805054344080805"
theorem cover_2584960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584960 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2584960)
  decide +kernel
#print axioms cover_2584960

def state_2585012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 18)))
def hex_2585012 : String := "414207074240070707"
theorem cover_2585012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2585012)
  decide +kernel
#print axioms cover_2585012

def state_2585024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 19)))
def hex_2585024 : String := "4344070644410A4240080A08410A4240060A4008430808"
theorem cover_2585024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2585024)
  decide +kernel
#print axioms cover_2585024

def state_2585047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 19)))
def hex_2585047 : String := "4344054142054043054405050542054008054441420A43070A4243050A4307400A0741420A43400A050A4243050A434044080805400A440A0A"
theorem cover_2585047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2585047)
  decide +kernel
#print axioms cover_2585047

def state_2585105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 19)))
def hex_2585105 : String := "4308444142080808414240084308080808"
theorem cover_2585105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2585105)
  decide +kernel
#print axioms cover_2585105

def state_2585123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 44 else 19)))
def hex_2585123 : String := "44074142400843054405054008094240080909"
theorem cover_2585123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2585123)
  decide +kernel
#print axioms cover_2585123

def state_2585143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 38)))
def hex_2585143 : String := "414243070A43070642430740440708074307400806"
theorem cover_2585143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2585143)
  decide +kernel
#print axioms cover_2585143

def state_2585165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 39)))
def hex_2585165 : String := "42434044080844410A420543050A410A420A43080A400A0A43400844410609414243080A430806424308080840440A0A44060A"
theorem cover_2585165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585165 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2585165)
  decide +kernel
#print axioms cover_2585165
end Mub6.Numerical.CircleFullD0.Forest
