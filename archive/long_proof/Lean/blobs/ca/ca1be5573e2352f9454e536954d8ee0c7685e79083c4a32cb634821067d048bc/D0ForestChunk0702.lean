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
def state_1469379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 8)))
def hex_1469379 : String := "41434440074207410A074006424106074143060643080744074006420641060707"
theorem cover_1469379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1469379)
  decide +kernel
#print axioms cover_1469379

def state_1469414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 8)))
def hex_1469414 : String := "4440420A094241430A440A400A420A0A0A414309444009420A09400942410A0A410509094042410609094241430544400642060A05430A440A0A410509"
theorem cover_1469414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469414 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1469414)
  decide +kernel
#print axioms cover_1469414

def state_1469477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1469477 : String := "07"
theorem cover_1469477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469477)
  decide +kernel
#print axioms cover_1469477

def state_1469479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 16)))
def hex_1469479 : String := "41434407400642064106070707"
theorem cover_1469479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1469479)
  decide +kernel
#print axioms cover_1469479

def state_1469495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
def hex_1469495 : String := "400742414344074006420741430A060707074143448740420709424143448740064206054407060741430944874008424106070909440740074207410A0707"
theorem cover_1469495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469495 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 63) (hex := hex_1469495)
  decide +kernel
#print axioms cover_1469495

def state_1469558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 33)))
def hex_1469558 : String := "40420641060742414344060606074143444042060942410643090741050905444006420641060706430907"
theorem cover_1469558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1469558)
  decide +kernel
#print axioms cover_1469558

def state_1469601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 16)))
def hex_1469601 : String := "440740064206410607"
theorem cover_1469601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1469601)
  decide +kernel
#print axioms cover_1469601

def state_1469610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
def hex_1469610 : String := "07"
theorem cover_1469610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1469610)
  decide +kernel
#print axioms cover_1469610
end Mub6.Numerical.CircleFullD0.Forest
