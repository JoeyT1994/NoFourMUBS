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
def state_1499418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
def hex_1499418 : String := "4341064206094106420644404309060606"
theorem cover_1499418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499418 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1499418)
  decide +kernel
#print axioms cover_1499418

def state_1499435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
def hex_1499435 : String := "404341064206050606"
theorem cover_1499435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499435 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1499435)
  decide +kernel
#print axioms cover_1499435

def state_1499447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 102 else 60)))
def hex_1499447 : String := "4142444043054105050805054244080508"
theorem cover_1499447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1499447)
  decide +kernel
#print axioms cover_1499447

def state_1499465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 60)))
def hex_1499465 : String := "42444043410A44424043054105420905090505414442090A0A884341090941098840050944400A0805"
theorem cover_1499465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499465 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1499465)
  decide +kernel
#print axioms cover_1499465

def state_1499507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 60)))
def hex_1499507 : String := "444043414442404308414244080505080808424005430541050805440842404305410508080588434108088840434105058843410942090588"
theorem cover_1499507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1499507)
  decide +kernel
#print axioms cover_1499507

def state_1499564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 103 else 60)))
def hex_1499564 : String := "44404308880805"
theorem cover_1499564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499564 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1499564)
  decide +kernel
#print axioms cover_1499564

def state_1499571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
def hex_1499571 : String := "434108084142090842444043088808404309060608"
theorem cover_1499571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1499571)
  decide +kernel
#print axioms cover_1499571

def state_1499592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 61)))
def hex_1499592 : String := "404305410505434105054106420605"
theorem cover_1499592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1499592)
  decide +kernel
#print axioms cover_1499592

def state_1499607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
def hex_1499607 : String := "43410942090841064206444043084106080606"
theorem cover_1499607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499607 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1499607)
  decide +kernel
#print axioms cover_1499607

def state_1499626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 31)))
def hex_1499626 : String := "404305410542060506"
theorem cover_1499626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1499626)
  decide +kernel
#print axioms cover_1499626

def state_1499635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 15)))
def hex_1499635 : String := "4440430541054244404305410508080505430841080805"
theorem cover_1499635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_1499635)
  decide +kernel
#print axioms cover_1499635
end Mub6.Numerical.CircleFullD0.Forest
