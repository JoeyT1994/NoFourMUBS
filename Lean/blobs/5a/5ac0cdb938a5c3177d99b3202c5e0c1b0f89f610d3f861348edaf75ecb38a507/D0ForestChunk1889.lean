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
def state_2326370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 176)))
def hex_2326370 : String := "41434044074207094442074143090707424143400744074207410A07070741434009440942090983098307"
theorem cover_2326370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_2326370)
  decide +kernel
#print axioms cover_2326370

def state_2326413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 176)))
def hex_2326413 : String := "414340440909444209094241430983090983430983"
theorem cover_2326413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2326413)
  decide +kernel
#print axioms cover_2326413

def state_2326435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 177)))
def hex_2326435 : String := "41434008444241434008440A080843400744070807414340084442080908084309080883434008444207090883"
theorem cover_2326435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326435 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_2326435)
  decide +kernel
#print axioms cover_2326435

def state_2326480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 177)))
def hex_2326480 : String := "4143404442080808444241434008440908084309084143078309088343400944090883"
theorem cover_2326480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326480 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_2326480)
  decide +kernel
#print axioms cover_2326480

def state_2326517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 176)))
def hex_2326517 : String := "4143404442074143058343070742410A0A4143404405420A0505834340094406068344420A410508420A41050A83434044074207414306070644060683"
theorem cover_2326517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326517 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2326517)
  decide +kernel
#print axioms cover_2326517

def state_2326578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 176)))
def hex_2326578 : String := "414340444241050941050942414305834309834105430983444205054241054305830583434044090944060683"
theorem cover_2326578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2326578)
  decide +kernel
#print axioms cover_2326578
end Mub6.Numerical.CircleFullD0.Forest
