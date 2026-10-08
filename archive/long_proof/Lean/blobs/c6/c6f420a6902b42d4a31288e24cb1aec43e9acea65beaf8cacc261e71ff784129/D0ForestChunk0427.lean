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
def state_1039889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_1039889 : String := "40410A424344090844404142430A4440410A42430944060A09090A430944090842430944094041420808090909410A094041084208080843094409080A"
theorem cover_1039889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 61) (hex := hex_1039889)
  decide +kernel
#print axioms cover_1039889

def state_1039953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_1039953 : String := "4344074240410743440742074041074207090707074041074309440742074008070707"
theorem cover_1039953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1039953)
  decide +kernel
#print axioms cover_1039953

def state_1039988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_1039988 : String := "434409424041434406420609060606404143094407424041430906060609090944064206404143440606060606"
theorem cover_1039988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039988 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1039988)
  decide +kernel
#print axioms cover_1039988

def state_1040033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_1040033 : String := "410706"
theorem cover_1040033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040033 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1040033)
  decide +kernel
#print axioms cover_1040033

def state_1040040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
def hex_1040040 : String := "444041430A0543424440410542050A07050A420544404105434407050507054107430A070A"
theorem cover_1040040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040040 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 37) (hex := hex_1040040)
  decide +kernel
#print axioms cover_1040040

def state_1040080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_1040080 : String := "0A"
theorem cover_1040080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040080)
  decide +kernel
#print axioms cover_1040080

def state_1040082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 14)))
def hex_1040082 : String := "0A"
theorem cover_1040082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040082)
  decide +kernel
#print axioms cover_1040082

def state_1040085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
def hex_1040085 : String := "4041430A074344424041074307070740410709070A44074205404105430A05074107430707"
theorem cover_1040085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1040085)
  decide +kernel
#print axioms cover_1040085
end Mub6.Numerical.CircleFullD0.Forest
