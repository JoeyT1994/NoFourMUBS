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
def state_2325412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
def hex_2325412 : String := "444241054305404405050505424105434044050705404442410543050A0542410543070A0744050707"
theorem cover_2325412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325412 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2325412)
  decide +kernel
#print axioms cover_2325412

def state_2325454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 124 else 88)))
def hex_2325454 : String := "404409424143094009440909060944420606420606"
theorem cover_2325454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2325454)
  decide +kernel
#print axioms cover_2325454

def state_2325477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 176)))
def hex_2325477 : String := "42414340090940440909444209094241430940094409420909090909414309400944090909"
theorem cover_2325477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_2325477)
  decide +kernel
#print axioms cover_2325477

def state_2325515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 177)))
def hex_2325515 : String := "41434044090844420909424143090806094044420909084442414340094409420808400844420A090809414309400844090809420841080843094009440909"
theorem cover_2325515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325515 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2325515)
  decide +kernel
#print axioms cover_2325515

def state_2325578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 125 else 177)))
def hex_2325578 : String := "414340094409074044090844420909424107080709"
theorem cover_2325578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2325578)
  decide +kernel
#print axioms cover_2325578

def state_2325601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 176)))
def hex_2325601 : String := "414340444205054206050640444241050741050942414340440505050A43060A4105094442050542060543064044060606"
theorem cover_2325601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2325601)
  decide +kernel
#print axioms cover_2325601
end Mub6.Numerical.CircleFullD0.Forest
