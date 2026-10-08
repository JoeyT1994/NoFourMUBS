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
def state_2572513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 49)))
def hex_2572513 : String := "404342060842414440050606060906"
theorem cover_2572513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2572513)
  decide +kernel
#print axioms cover_2572513

def state_2572528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
def hex_2572528 : String := "444043420644414043050506060642444140050606064441400543064244414005060505090505064043060506"
theorem cover_2572528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_2572528)
  decide +kernel
#print axioms cover_2572528

def state_2572581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 96)))
def hex_2572581 : String := "4243E24144084042050542080808434109444043050543090809410908"
theorem cover_2572581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572581 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2572581)
  decide +kernel
#print axioms cover_2572581

def state_2572610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 96)))
def hex_2572610 : String := "4243414440E2420A0740E2074440E20A40E2064144084042080842080708434109444043090843070809410908"
theorem cover_2572610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 45) (hex := hex_2572610)
  decide +kernel
#print axioms cover_2572610

def state_2572655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 97)))
def hex_2572655 : String := "40424341444005420505050541444005420505050543090942434144070606414440424307080907074440420505420607400506430909"
theorem cover_2572655 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572655 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2572655)
  decide +kernel
#print axioms cover_2572655

def state_2572711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 96)))
def hex_2572711 : String := "404243444140054205050505084344414005430505050508424344410A0606084344414043420808080A0A414043050543060840050608"
theorem cover_2572711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572711 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2572711)
  decide +kernel
#print axioms cover_2572711
end Mub6.Numerical.CircleFullD0.Forest
