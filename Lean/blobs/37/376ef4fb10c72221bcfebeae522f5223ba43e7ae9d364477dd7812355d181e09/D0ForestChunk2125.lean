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
def state_2590626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 20)))
def hex_2590626 : String := "400643064441424340064408064007444142430807430807424306070807430840074441080807424306400644080643060807"
theorem cover_2590626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_2590626)
  decide +kernel
#print axioms cover_2590626

def state_2590677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 21)))
def hex_2590677 : String := "06"
theorem cover_2590677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590677 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2590677)
  decide +kernel
#print axioms cover_2590677

def state_2590678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
def hex_2590678 : String := "4441424340070707074243400744410742074340060707070743400744414207074243400707074340070707070707"
theorem cover_2590678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2590678)
  decide +kernel
#print axioms cover_2590678

def state_2590728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 20)))
def hex_2590728 : String := "404243080505424344414240080908080744414243400744414243080707080707074243080707074344090705"
theorem cover_2590728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590728 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_2590728)
  decide +kernel
#print axioms cover_2590728

def state_2590773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 20)))
def hex_2590773 : String := "4042430607084243440806444142430840054408070808074308440905"
theorem cover_2590773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_2590773)
  decide +kernel
#print axioms cover_2590773

def state_2590802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 21)))
def hex_2590802 : String := "07"
theorem cover_2590802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590802 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2590802)
  decide +kernel
#print axioms cover_2590802

def state_2590803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
def hex_2590803 : String := "44410743400542444107434207050507050507"
theorem cover_2590803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_2590803)
  decide +kernel
#print axioms cover_2590803

def state_2590823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
def hex_2590823 : String := "4243064441400542060606064306440505"
theorem cover_2590823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2590823)
  decide +kernel
#print axioms cover_2590823

def state_2590842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 10)))
def hex_2590842 : String := "06"
theorem cover_2590842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590842 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2590842)
  decide +kernel
#print axioms cover_2590842
end Mub6.Numerical.CircleFullD0.Forest
