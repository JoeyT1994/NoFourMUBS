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
def state_1514610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 123)))
def hex_1514610 : String := "4041424309080909414243444009410742090705444009410609400806434407054407400507424344094009414206050944094009410609430909"
theorem cover_1514610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1514610)
  decide +kernel
#print axioms cover_1514610

def state_1514671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 61)))
def hex_1514671 : String := "434440414342060706434206440707420644070606064440410642064306060606"
theorem cover_1514671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514671 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1514671)
  decide +kernel
#print axioms cover_1514671

def state_1514704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 61)))
def hex_1514704 : String := "434440410707074041054205054106074440410742430707070740410642060706"
theorem cover_1514704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514704 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1514704)
  decide +kernel
#print axioms cover_1514704

def state_1514740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
def hex_1514740 : String := "40414342440A064407404107070742440A0644404107070740410643070A0643420A080A4143420607060A"
theorem cover_1514740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514740 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1514740)
  decide +kernel
#print axioms cover_1514740

def state_1514783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 123)))
def hex_1514783 : String := "4041434206444005060506434206444041430542060508080542064440414306060A060606"
theorem cover_1514783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1514783)
  decide +kernel
#print axioms cover_1514783

def state_1514820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 61)))
def hex_1514820 : String := "444041420643440A060A0A0A404106420643060606"
theorem cover_1514820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514820 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1514820)
  decide +kernel
#print axioms cover_1514820
end Mub6.Numerical.CircleFullD0.Forest
