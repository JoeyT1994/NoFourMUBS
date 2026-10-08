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
def state_2320356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 88)))
def hex_2320356 : String := "41434240090505424044094143094207090944050A404409410509054309420909"
theorem cover_2320356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2320356)
  decide +kernel
#print axioms cover_2320356

def state_2320390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 89)))
def hex_2320390 : String := "43424044414305090941430908090A404409410709440507424044414342080842080809080A40444142430508090908444105420A054107420807"
theorem cover_2320390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320390 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2320390)
  decide +kernel
#print axioms cover_2320390

def state_2320449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 113) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 89)))
def hex_2320449 : String := "434206094240090A400944094142060606"
theorem cover_2320449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2320449)
  decide +kernel
#print axioms cover_2320449

def state_2320466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
def hex_2320466 : String := "43420609424007440606400944094143060906"
theorem cover_2320466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320466 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2320466)
  decide +kernel
#print axioms cover_2320466

def state_2320487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 45)))
def hex_2320487 : String := "4240444143420606420808430608410806440606404441434209074208084306084108084441430642060706410706"
theorem cover_2320487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_2320487)
  decide +kernel
#print axioms cover_2320487

def state_2320534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 45)))
def hex_2320534 : String := "4240444108080844410A0A4108084044410808084441434240080A0742080843420606420808410808"
theorem cover_2320534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320534 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2320534)
  decide +kernel
#print axioms cover_2320534

def state_2320575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 45)))
def hex_2320575 : String := "43420606424005064008444143064206060606"
theorem cover_2320575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2320575)
  decide +kernel
#print axioms cover_2320575
end Mub6.Numerical.CircleFullD0.Forest
