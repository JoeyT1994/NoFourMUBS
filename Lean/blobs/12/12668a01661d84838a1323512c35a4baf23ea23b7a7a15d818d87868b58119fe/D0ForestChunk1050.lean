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
def state_1552299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 85)))
def hex_1552299 : String := "44414305404206440505424407050543400942440741050905074105434042440505050540420644070542440741054305064441050705"
theorem cover_1552299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1552299)
  decide +kernel
#print axioms cover_1552299

def state_1552354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 85)))
def hex_1552354 : String := "400642440706440706"
theorem cover_1552354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1552354)
  decide +kernel
#print axioms cover_1552354

def state_1552365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
def hex_1552365 : String := "420744074143090707"
theorem cover_1552365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1552365)
  decide +kernel
#print axioms cover_1552365

def state_1552374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
def hex_1552374 : String := "424407414340420707424407414340070707074407414305070707074441430907074143400942440909094007420744074143050707430907"
theorem cover_1552374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552374 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1552374)
  decide +kernel
#print axioms cover_1552374

def state_1552431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 85)))
def hex_1552431 : String := "07"
theorem cover_1552431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552431 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1552431)
  decide +kernel
#print axioms cover_1552431

def state_1552433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 84)))
def hex_1552433 : String := "4143400942444143090707414305400742070509094007420707430907"
theorem cover_1552433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1552433)
  decide +kernel
#print axioms cover_1552433

def state_1552464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 85)))
def hex_1552464 : String := "404244094105090942444105430540094244070505410543050505"
theorem cover_1552464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1552464)
  decide +kernel
#print axioms cover_1552464

def state_1552491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 85)))
def hex_1552491 : String := "404244070644430906064244434140060A07074341054006420A05064443410540074207050A430541050A"
theorem cover_1552491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1552491)
  decide +kernel
#print axioms cover_1552491
end Mub6.Numerical.CircleFullD0.Forest
