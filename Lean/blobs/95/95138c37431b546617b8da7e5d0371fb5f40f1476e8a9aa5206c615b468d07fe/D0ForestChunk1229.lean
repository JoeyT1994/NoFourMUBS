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
def state_1595389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 26)))
def hex_1595389 : String := "414342404443084108050505404408080842404441060606054006084342054044414308420508430505050542404405050540444106434205060606440505"
theorem cover_1595389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1595389)
  decide +kernel
#print axioms cover_1595389

def state_1595452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 27)))
def hex_1595452 : String := "414342050806430505"
theorem cover_1595452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595452 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1595452)
  decide +kernel
#print axioms cover_1595452

def state_1595461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 13)))
def hex_1595461 : String := "4240440A0644050540064441064342400605060606"
theorem cover_1595461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595461 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1595461)
  decide +kernel
#print axioms cover_1595461

def state_1595484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
def hex_1595484 : String := "43440540060806"
theorem cover_1595484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1595484)
  decide +kernel
#print axioms cover_1595484

def state_1595493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_1595493 : String := "400542410943440940090844054005424108090505"
theorem cover_1595493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595493 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1595493)
  decide +kernel
#print axioms cover_1595493

def state_1595515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_1595515 : String := "424143440506054344424109430909054241434006080643400744070740064407064106074405064105430905"
theorem cover_1595515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595515 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1595515)
  decide +kernel
#print axioms cover_1595515

def state_1595562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
def hex_1595562 : String := "430808"
theorem cover_1595562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1595562)
  decide +kernel
#print axioms cover_1595562

def state_1595566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 25)))
def hex_1595566 : String := "444042410843084409424009080808084042410843084408080808"
theorem cover_1595566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1595566)
  decide +kernel
#print axioms cover_1595566

def state_1595593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
def hex_1595593 : String := "4440424109434409424009080844050605424108430844080808404241064344424006080606060608"
theorem cover_1595593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1595593)
  decide +kernel
#print axioms cover_1595593

def state_1595634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
def hex_1595634 : String := "4108430808"
theorem cover_1595634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1595634)
  decide +kernel
#print axioms cover_1595634
end Mub6.Numerical.CircleFullD0.Forest
