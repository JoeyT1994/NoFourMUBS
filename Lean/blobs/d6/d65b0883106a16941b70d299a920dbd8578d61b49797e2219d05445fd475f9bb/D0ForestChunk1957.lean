import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2550150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 23)))
def hex_2550150 : String := "424344410506064441050941400805400906430844410540424308094308440508054140080540420808420808"
theorem cover_2550150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2550150)
  decide +kernel
#print axioms cover_2550150

def state_2550197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 22)))
def hex_2550197 : String := "4243410907074341440743080707414407400742070707"
theorem cover_2550197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2550197)
  decide +kernel
#print axioms cover_2550197

def state_2550220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 22)))
def hex_2550220 : String := "424341440506060943414405084440070540080641440540420943084105070544400705404207074209430505"
theorem cover_2550220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2550220)
  decide +kernel
#print axioms cover_2550220

def state_2550266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 23)))
def hex_2550266 : String := "424341444206080844070641440942090A09434108444307070841444007424307074308070A4407400742430707430707"
theorem cover_2550266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2550266)
  decide +kernel
#print axioms cover_2550266

def state_2550315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 23)))
def hex_2550315 : String := "42430641440906094341080841444042430809430841440808440708420943050540420808420608444042094308074206430609404209430841080906"
theorem cover_2550315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2550315)
  decide +kernel
#print axioms cover_2550315

def state_2550377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_2550377 : String := "4243444005050505430505"
theorem cover_2550377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2550377)
  decide +kernel
#print axioms cover_2550377
end Mub6.Numerical.CircleFullD0.Forest
