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
def state_2588432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 38)))
def hex_2588432 : String := "41424308400844084109084308084243080808"
theorem cover_2588432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588432 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2588432)
  decide +kernel
#print axioms cover_2588432

def state_2588451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 39)))
def hex_2588451 : String := "41424340080940084441424308400809080841424340070907430840050742430840070708430840084408410808424308400844080908"
theorem cover_2588451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588451 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2588451)
  decide +kernel
#print axioms cover_2588451

def state_2588507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
def hex_2588507 : String := "440505"
theorem cover_2588507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2588507)
  decide +kernel
#print axioms cover_2588507

def state_2588511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 38)))
def hex_2588511 : String := "4143424044080844064106430942400506054005064240050605434240084408414308420805080842400544410543080541050505"
theorem cover_2588511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2588511)
  decide +kernel
#print axioms cover_2588511

def state_2588565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 39)))
def hex_2588565 : String := "434240440505444143424044080544064106074005064240050605434240080908424005444105090705410707400544050542400544050505"
theorem cover_2588565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2588565)
  decide +kernel
#print axioms cover_2588565

def state_2588622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 39)))
def hex_2588622 : String := "434240440808444143084240050905094143420708074308420705400544084105054240054441050541050505"
theorem cover_2588622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2588622)
  decide +kernel
#print axioms cover_2588622

def state_2588670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 18)))
def hex_2588670 : String := "4008414407424307400707070A"
theorem cover_2588670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2588670)
  decide +kernel
#print axioms cover_2588670
end Mub6.Numerical.CircleFullD0.Forest
