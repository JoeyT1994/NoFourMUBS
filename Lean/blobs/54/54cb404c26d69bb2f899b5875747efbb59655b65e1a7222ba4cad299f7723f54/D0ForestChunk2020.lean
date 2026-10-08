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
def state_2565321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 47)))
def hex_2565321 : String := "4341444007094042064306070644070641440740070907"
theorem cover_2565321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2565321)
  decide +kernel
#print axioms cover_2565321

def state_2565345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 47)))
def hex_2565345 : String := "41444042070742430807430841440740070807404243080743084144070505424306E24308E2444007420707400742064306440705"
theorem cover_2565345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565345 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2565345)
  decide +kernel
#print axioms cover_2565345

def state_2565398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
def hex_2565398 : String := "41444007420743070740420707E2440740054207430707"
theorem cover_2565398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2565398)
  decide +kernel
#print axioms cover_2565398

def state_2565421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
def hex_2565421 : String := "4407400742430607434407414005060507"
theorem cover_2565421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565421 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2565421)
  decide +kernel
#print axioms cover_2565421

def state_2565438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
def hex_2565438 : String := "414407400742434144074007090707434144074007420743E207070707"
theorem cover_2565438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565438 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 29) (hex := hex_2565438)
  decide +kernel
#print axioms cover_2565438

def state_2565471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_2565471 : String := "4342070606"
theorem cover_2565471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565471 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2565471)
  decide +kernel
#print axioms cover_2565471

def state_2565478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
def hex_2565478 : String := "414440074342050507404342070706434241080708420741060744074007430707"
theorem cover_2565478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2565478)
  decide +kernel
#print axioms cover_2565478

def state_2565511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
def hex_2565511 : String := "414406400643420806064440064342070606404307064342414407080741084407400708420706"
theorem cover_2565511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2565511)
  decide +kernel
#print axioms cover_2565511

def state_2565550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 46)))
def hex_2565550 : String := "42414406400643420706060706"
theorem cover_2565550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2565550)
  decide +kernel
#print axioms cover_2565550
end Mub6.Numerical.CircleFullD0.Forest
