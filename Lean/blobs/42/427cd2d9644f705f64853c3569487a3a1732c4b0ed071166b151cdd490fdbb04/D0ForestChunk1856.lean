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
def state_2318507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
def hex_2318507 : String := "44074142074340440741420743070707440741420743404405090540074405410507070707"
theorem cover_2318507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 37) (hex := hex_2318507)
  decide +kernel
#print axioms cover_2318507

def state_2318544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
def hex_2318544 : String := "4441420743400705070741420A43404441050741420A05420743404405050540070A44050A404407414207434044050A0507070A42074340070A07"
theorem cover_2318544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_2318544)
  decide +kernel
#print axioms cover_2318544

def state_2318603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 31 else 21)))
def hex_2318603 : String := "400744074142074340070A0707"
theorem cover_2318603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2318603)
  decide +kernel
#print axioms cover_2318603

def state_2318616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
def hex_2318616 : String := "07"
theorem cover_2318616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2318616)
  decide +kernel
#print axioms cover_2318616

def state_2318618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 20)))
def hex_2318618 : String := "4143404207414407430907074208084007420741080707"
theorem cover_2318618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318618 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2318618)
  decide +kernel
#print axioms cover_2318618

def state_2318646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 42)))
def hex_2318646 : String := "4143400942074405050707"
theorem cover_2318646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2318646)
  decide +kernel
#print axioms cover_2318646

def state_2318659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 43)))
def hex_2318659 : String := "40444209094241430906090944424105074105094241430540440542410507050543090941430540050509"
theorem cover_2318659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2318659)
  decide +kernel
#print axioms cover_2318659

def state_2318702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
def hex_2318702 : String := "4044074207410609444207414305060742414340064405420605060741434006050643400944090940064407420706"
theorem cover_2318702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2318702)
  decide +kernel
#print axioms cover_2318702

def state_2318749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
def hex_2318749 : String := "4340090940074407420709"
theorem cover_2318749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2318749)
  decide +kernel
#print axioms cover_2318749
end Mub6.Numerical.CircleFullD0.Forest
