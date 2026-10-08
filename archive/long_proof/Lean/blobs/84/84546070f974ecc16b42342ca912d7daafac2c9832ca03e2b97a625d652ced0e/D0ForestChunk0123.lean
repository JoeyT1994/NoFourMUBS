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
def state_967037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 28)))
def hex_967037 : String := "44434041060641094209444305400905060909"
theorem cover_967037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_967037)
  decide +kernel
#print axioms cover_967037

def state_967058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 56)))
def hex_967058 : String := "40064106424443054006050606"
theorem cover_967058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_967058)
  decide +kernel
#print axioms cover_967058

def state_967072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967072 : String := "41420906420907"
theorem cover_967072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967072 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_967072)
  decide +kernel
#print axioms cover_967072

def state_967080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 90) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967080 : String := "42094443400641064208064009410942094443070907430609"
theorem cover_967080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_967080)
  decide +kernel
#print axioms cover_967080

def state_967105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967105 : String := "424443400A4142094405080A090944434006414244050607420505400A4142094407070A43064006410809"
theorem cover_967105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967105 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_967105)
  decide +kernel
#print axioms cover_967105

def state_967148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 57)))
def hex_967148 : String := "430640064106420806"
theorem cover_967148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967148 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_967148)
  decide +kernel
#print axioms cover_967148

def state_967157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 29)))
def hex_967157 : String := "06"
theorem cover_967157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_967157)
  decide +kernel
#print axioms cover_967157

def state_967159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 14)))
def hex_967159 : String := "4443414240064405054006440506420A4006054142094009440A090A430609"
theorem cover_967159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_967159)
  decide +kernel
#print axioms cover_967159

def state_967192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 28)))
def hex_967192 : String := "4140064244050606400642440505440505"
theorem cover_967192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_967192)
  decide +kernel
#print axioms cover_967192

def state_967211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967211 : String := "42440A0607"
theorem cover_967211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_967211)
  decide +kernel
#print axioms cover_967211

def state_967217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 28)))
def hex_967217 : String := "444341400A424405054405050A0A43410640060609"
theorem cover_967217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_967217)
  decide +kernel
#print axioms cover_967217

def state_967238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 28)))
def hex_967238 : String := "44434140064244050544050540060541400A42440A43414006090A09440A4307414007420707070A4306414006420907400642440A0907"
theorem cover_967238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967238 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_967238)
  decide +kernel
#print axioms cover_967238
end Mub6.Numerical.CircleFullD0.Forest
