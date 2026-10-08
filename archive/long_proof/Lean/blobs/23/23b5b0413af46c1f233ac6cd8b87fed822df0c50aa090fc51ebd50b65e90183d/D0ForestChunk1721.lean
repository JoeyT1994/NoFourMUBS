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
def state_2286226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 42 else 31)))
def hex_2286226 : String := "414442400505054240430608094005054442400A090642400709400606"
theorem cover_2286226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 29) (hex := hex_2286226)
  decide +kernel
#print axioms cover_2286226

def state_2286256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
def hex_2286256 : String := "44424043054105090905424008084043054105440508430505"
theorem cover_2286256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2286256)
  decide +kernel
#print axioms cover_2286256

def state_2286282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 62)))
def hex_2286282 : String := "4240430A41090909404341050641440542404305050505440A420A40430541050A0A4309410509"
theorem cover_2286282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286282 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2286282)
  decide +kernel
#print axioms cover_2286282

def state_2286322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 63)))
def hex_2286322 : String := "40434144090807414409084409420940070909"
theorem cover_2286322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2286322)
  decide +kernel
#print axioms cover_2286322

def state_2286343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 86 else 63)))
def hex_2286343 : String := "4144424006050542404306084305080644420A06420706"
theorem cover_2286343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286343 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2286343)
  decide +kernel
#print axioms cover_2286343

def state_2286366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 63)))
def hex_2286366 : String := "414442404341054405E541054409E509400505E5444240430A414409E50A09404306414405E5440AE5430641050AE5"
theorem cover_2286366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286366 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2286366)
  decide +kernel
#print axioms cover_2286366

def state_2286413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 63)))
def hex_2286413 : String := "43414405420905440942090641440942094005054409420940E509"
theorem cover_2286413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_2286413)
  decide +kernel
#print axioms cover_2286413

def state_2286440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 31)))
def hex_2286440 : String := "43410909410909"
theorem cover_2286440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286440 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2286440)
  decide +kernel
#print axioms cover_2286440
end Mub6.Numerical.CircleFullD0.Forest
