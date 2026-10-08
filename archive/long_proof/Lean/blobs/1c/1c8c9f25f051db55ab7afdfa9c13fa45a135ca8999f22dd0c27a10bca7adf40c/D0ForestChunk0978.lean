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
def state_1535208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
def hex_1535208 : String := "424344404105424305444042070506050507054440410A420A0A410742090740410A424305090A410742070743050A"
theorem cover_1535208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535208 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1535208)
  decide +kernel
#print axioms cover_1535208

def state_1535257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 17)))
def hex_1535257 : String := "4440424143054406400505060606404241050505420505"
theorem cover_1535257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1535257)
  decide +kernel
#print axioms cover_1535257

def state_1535281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 34)))
def hex_1535281 : String := "40424143444006064042410A0A0A4208060A430644060A4143060A0642414306090606"
theorem cover_1535281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1535281)
  decide +kernel
#print axioms cover_1535281

def state_1535316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 35)))
def hex_1535316 : String := "4042414344404241050A054241050505050A434440424108060606400505440A0A4143050A434406050A42414344090509430844060A4143050A06"
theorem cover_1535316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1535316)
  decide +kernel
#print axioms cover_1535316

def state_1535375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 17)))
def hex_1535375 : String := "4306440640410A4243050A0606"
theorem cover_1535375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535375 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1535375)
  decide +kernel
#print axioms cover_1535375

def state_1535388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
def hex_1535388 : String := "434406054440410A060640410809410706"
theorem cover_1535388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1535388)
  decide +kernel
#print axioms cover_1535388

def state_1535407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 8)))
def hex_1535407 : String := "4406400906"
theorem cover_1535407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535407 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1535407)
  decide +kernel
#print axioms cover_1535407

def state_1535413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
def hex_1535413 : String := "40424306414405400506050606"
theorem cover_1535413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1535413)
  decide +kernel
#print axioms cover_1535413
end Mub6.Numerical.CircleFullD0.Forest
