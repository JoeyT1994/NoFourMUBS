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
def state_988365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 207 else 86)))
def hex_988365 : String := "444142054043444105060544070543440705050741054205404344060506430505"
theorem cover_988365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_988365)
  decide +kernel
#print axioms cover_988365

def state_988398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 86)))
def hex_988398 : String := "4206400643440741420740430806070607"
theorem cover_988398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_988398)
  decide +kernel
#print axioms cover_988398

def state_988416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 87)))
def hex_988416 : String := "4205404344410542054043440605064344410505050505444105420540060505430505"
theorem cover_988416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_988416)
  decide +kernel
#print axioms cover_988416

def state_988451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 87)))
def hex_988451 : String := "4240060540434406414205400605060643444142054043440905440605430905094105420540430906094441420540060506410505"
theorem cover_988451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988451 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_988451)
  decide +kernel
#print axioms cover_988451

def state_988505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
def hex_988505 : String := "4344084107084441424043080643440841070844414206400643080606C6400843084405C6420605414240074307C60742400643440808C6400808"
theorem cover_988505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988505 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_988505)
  decide +kernel
#print axioms cover_988505

def state_988566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 86)))
def hex_988566 : String := "4142404308440841424007430744080707084344080A44410A08410A4240080A08400843060A08"
theorem cover_988566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_988566)
  decide +kernel
#print axioms cover_988566
end Mub6.Numerical.CircleFullD0.Forest
