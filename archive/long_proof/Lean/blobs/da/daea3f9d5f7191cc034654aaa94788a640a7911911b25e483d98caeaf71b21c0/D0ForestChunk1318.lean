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
def state_1616887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
def hex_1616887 : String := "410A4440430842410A44404342EA0742EA08084007080808400708"
theorem cover_1616887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 27) (hex := hex_1616887)
  decide +kernel
#print axioms cover_1616887

def state_1616915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
def hex_1616915 : String := "0A"
theorem cover_1616915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616915 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1616915)
  decide +kernel
#print axioms cover_1616915

def state_1616917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
def hex_1616917 : String := "404243414440420A050A0A44404243EA060642430A410A4440420706074006090A404243070606424308410A444006084006080806060A"
theorem cover_1616917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 55) (hex := hex_1616917)
  decide +kernel
#print axioms cover_1616917

def state_1616972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 49)))
def hex_1616972 : String := "40424341440A070706060A"
theorem cover_1616972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616972 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1616972)
  decide +kernel
#print axioms cover_1616972

def state_1616983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 25)))
def hex_1616983 : String := "42434140070505414044424307414440070A074407050707444243054105050A05404442050705054307414007084007440A05"
theorem cover_1616983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1616983)
  decide +kernel
#print axioms cover_1616983

def state_1617034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_1617034 : String := "410A4442430640410A440642050A060A42050A"
theorem cover_1617034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1617034)
  decide +kernel
#print axioms cover_1617034

def state_1617056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
def hex_1617056 : String := "42434440410542434405410540050A05050A40410A424344410A40060A410A40060A06060A44400541050A4006410A420906430A06"
theorem cover_1617056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617056 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1617056)
  decide +kernel
#print axioms cover_1617056

def state_1617109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 25)))
def hex_1617109 : String := "42434041440A06444243410A4440060A06060606410A440A0A400641060606"
theorem cover_1617109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1617109)
  decide +kernel
#print axioms cover_1617109
end Mub6.Numerical.CircleFullD0.Forest
