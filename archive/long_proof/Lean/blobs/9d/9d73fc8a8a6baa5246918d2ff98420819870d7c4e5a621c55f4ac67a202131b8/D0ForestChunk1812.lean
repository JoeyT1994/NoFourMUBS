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
def state_2308012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
def hex_2308012 : String := "424340410544054305424006050505404105440506054340410544054205050540064105440505"
theorem cover_2308012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2308012)
  decide +kernel
#print axioms cover_2308012

def state_2308055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
def hex_2308055 : String := "444342410540060505064342410944400909090909"
theorem cover_2308055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2308055)
  decide +kernel
#print axioms cover_2308055

def state_2308081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 22)))
def hex_2308081 : String := "44054342414405064440060540064305064106440540060506"
theorem cover_2308081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2308081)
  decide +kernel
#print axioms cover_2308081

def state_2308106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 22)))
def hex_2308106 : String := "444342074007050743424440070A4041430706070A444041060741050A40414342440606060643070741430A0A0A42440740070A44064006410608"
theorem cover_2308106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308106 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2308106)
  decide +kernel
#print axioms cover_2308106

def state_2308165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 22)))
def hex_2308165 : String := "4144054305054405430A0A"
theorem cover_2308165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308165 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2308165)
  decide +kernel
#print axioms cover_2308165

def state_2308178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
def hex_2308178 : String := "440506"
theorem cover_2308178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2308178)
  decide +kernel
#print axioms cover_2308178

def state_2308182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 44)))
def hex_2308182 : String := "43424006050506"
theorem cover_2308182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2308182)
  decide +kernel
#print axioms cover_2308182

def state_2308189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 45)))
def hex_2308189 : String := "4342444006410543050A40410643424406400641060A06064143090643420A440A400909420A440606444006054006410643424405090906420606"
theorem cover_2308189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2308189)
  decide +kernel
#print axioms cover_2308189

def state_2308248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
def hex_2308248 : String := "41054405434240440541050A05054240440541060A054044050605"
theorem cover_2308248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2308248)
  decide +kernel
#print axioms cover_2308248
end Mub6.Numerical.CircleFullD0.Forest
