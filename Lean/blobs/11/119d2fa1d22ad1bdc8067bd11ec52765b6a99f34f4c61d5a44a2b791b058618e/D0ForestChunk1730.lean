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
def state_2288398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 47)))
def hex_2288398 : String := "44410540424306444105050643054405410505054107404206CF06"
theorem cover_2288398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2288398)
  decide +kernel
#print axioms cover_2288398

def state_2288427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
def hex_2288427 : String := "4042080707"
theorem cover_2288427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2288427)
  decide +kernel
#print axioms cover_2288427

def state_2288433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
def hex_2288433 : String := "42434441084009064108064441400A084009420606410840420644090606434405410740424306440906070744410709410740424409434107060A0707"
theorem cover_2288433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2288433)
  decide +kernel
#print axioms cover_2288433

def state_2288494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
def hex_2288494 : String := "420807"
theorem cover_2288494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288494 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2288494)
  decide +kernel
#print axioms cover_2288494

def state_2288497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 95)))
def hex_2288497 : String := "410740424443084108064306410806444341074042060706410740424443060A0607074341070641074042060706420607"
theorem cover_2288497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_2288497)
  decide +kernel
#print axioms cover_2288497

def state_2288548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
def hex_2288548 : String := "400A4243080A07"
theorem cover_2288548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2288548)
  decide +kernel
#print axioms cover_2288548

def state_2288556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
def hex_2288556 : String := "424344410A07410A40074207090A0A"
theorem cover_2288556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2288556)
  decide +kernel
#print axioms cover_2288556

def state_2288573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 98 else 46)))
def hex_2288573 : String := "44414042080A0809414042080A084042434407080743440941080944090A42084308444108094108400806"
theorem cover_2288573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2288573)
  decide +kernel
#print axioms cover_2288573

def state_2288616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 99 else 46)))
def hex_2288616 : String := "44410A400909410A400A424443080A43080A44434108090A4341084009080A"
theorem cover_2288616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2288616)
  decide +kernel
#print axioms cover_2288616
end Mub6.Numerical.CircleFullD0.Forest
