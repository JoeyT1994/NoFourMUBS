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
def state_2249441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 45 else 26)))
def hex_2249441 : String := "4442094043414406090741440609444207060743410944420906094109444209400609094208404341080741090709"
theorem cover_2249441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2249441)
  decide +kernel
#print axioms cover_2249441

def state_2249488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 27)))
def hex_2249488 : String := "404108074108430808"
theorem cover_2249488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249488 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2249488)
  decide +kernel
#print axioms cover_2249488

def state_2249499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
def hex_2249499 : String := "41064342440607064244064007434106074142440607060706"
theorem cover_2249499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249499 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_2249499)
  decide +kernel
#print axioms cover_2249499

def state_2249525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
def hex_2249525 : String := "43064244064041064306420606410643080906"
theorem cover_2249525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2249525)
  decide +kernel
#print axioms cover_2249525

def state_2249545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 26)))
def hex_2249545 : String := "42440640410643064207064143054208054305424406080606"
theorem cover_2249545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2249545)
  decide +kernel
#print axioms cover_2249545

def state_2249572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 52)))
def hex_2249572 : String := "400643064106440642400643060906"
theorem cover_2249572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2249572)
  decide +kernel
#print axioms cover_2249572

def state_2249588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
def hex_2249588 : String := "434142440608064207064142440609064244400743074109070744064043074106074341060741420906420706"
theorem cover_2249588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249588 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2249588)
  decide +kernel
#print axioms cover_2249588

def state_2249634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 90 else 53)))
def hex_2249634 : String := "41420806424440430609090844064043064106420706434105420805410809"
theorem cover_2249634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2249634)
  decide +kernel
#print axioms cover_2249634
end Mub6.Numerical.CircleFullD0.Forest
