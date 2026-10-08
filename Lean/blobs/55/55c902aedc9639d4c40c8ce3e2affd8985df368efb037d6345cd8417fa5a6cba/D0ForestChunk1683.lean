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
def state_2277149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 30)))
def hex_2277149 : String := "430741400744424307414007440707074307414007444243050A0542074305410507070707"
theorem cover_2277149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 37) (hex := hex_2277149)
  decide +kernel
#print axioms cover_2277149

def state_2277186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 30)))
def hex_2277186 : String := "4341400744420705070741400944424341050741400905400744424305050542070943050942430741400744424305090507070940074442070907"
theorem cover_2277186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_2277186)
  decide +kernel
#print axioms cover_2277186

def state_2277245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 31)))
def hex_2277245 : String := "42074307414007444207090707"
theorem cover_2277245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277245 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2277245)
  decide +kernel
#print axioms cover_2277245

def state_2277258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
def hex_2277258 : String := "07"
theorem cover_2277258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277258 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2277258)
  decide +kernel
#print axioms cover_2277258

def state_2277260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 15)))
def hex_2277260 : String := "4144424007414306440A07074006064207400741060607"
theorem cover_2277260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277260 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2277260)
  decide +kernel
#print axioms cover_2277260

def state_2277288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 42 else 30)))
def hex_2277288 : String := "4144420A40074305050707"
theorem cover_2277288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2277288)
  decide +kernel
#print axioms cover_2277288

def state_2277301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 43 else 60)))
def hex_2277301 : String := "4243400A0A4041440A080A0A434041050741050A40414405424305404105070505440A0A4144054205050A"
theorem cover_2277301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2277301)
  decide +kernel
#print axioms cover_2277301

def state_2277344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 43 else 61)))
def hex_2277344 : String := "424307400741080A434007414405080740414442084305400805080741444208050844420A430A0A42074307400708"
theorem cover_2277344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2277344)
  decide +kernel
#print axioms cover_2277344

def state_2277391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 46 else (if j.val < 4 then 43 else 30)))
def hex_2277391 : String := "44420A0A4207430740070A"
theorem cover_2277391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2277391)
  decide +kernel
#print axioms cover_2277391
end Mub6.Numerical.CircleFullD0.Forest
