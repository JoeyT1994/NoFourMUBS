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
def state_1597106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_1597106 : String := "40414243440505444205400705090742050741420543050505"
theorem cover_1597106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597106 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1597106)
  decide +kernel
#print axioms cover_1597106

def state_1597138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 12)))
def hex_1597138 : String := "444008414306420844084008060840414342054408050805410505"
theorem cover_1597138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1597138)
  decide +kernel
#print axioms cover_1597138

def state_1597170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
def hex_1597170 : String := "42084340084106064005410508"
theorem cover_1597170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1597170)
  decide +kernel
#print axioms cover_1597170

def state_1597183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 49)))
def hex_1597183 : String := "424340084106060843404109084144094243064109060944064206430640070640410908414409424341090841090809440808"
theorem cover_1597183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1597183)
  decide +kernel
#print axioms cover_1597183

def state_1597234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 24)))
def hex_1597234 : String := "44420805420843400841440542080508400841440542080508"
theorem cover_1597234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1597234)
  decide +kernel
#print axioms cover_1597234

def state_1597259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
def hex_1597259 : String := "430808"
theorem cover_1597259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1597259)
  decide +kernel
#print axioms cover_1597259

def state_1597264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
def hex_1597264 : String := "444206404306410606064206404306414442060942404306410606064009430609440642064043064106060606"
theorem cover_1597264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597264 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1597264)
  decide +kernel
#print axioms cover_1597264

def state_1597310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
def hex_1597310 : String := "4240430808064043414405424005060544084206400506410508430641444206054206400506440642064043060806"
theorem cover_1597310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597310 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1597310)
  decide +kernel
#print axioms cover_1597310
end Mub6.Numerical.CircleFullD0.Forest
