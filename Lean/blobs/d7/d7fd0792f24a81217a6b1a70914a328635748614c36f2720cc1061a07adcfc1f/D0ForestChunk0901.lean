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
def state_1516780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 55 else 31)))
def hex_1516780 : String := "44400841060A08"
theorem cover_1516780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1516780)
  decide +kernel
#print axioms cover_1516780

def state_1516790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
def hex_1516790 : String := "414243444009414209090940054105424305090544400941090940084108420809434409054409400941070942430909430909"
theorem cover_1516790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516790 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1516790)
  decide +kernel
#print axioms cover_1516790

def state_1516844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 86 else (if j.val < 4 then 108 else 62)))
def hex_1516844 : String := "44404142430744070607424309090741074243070707404142430506054243054440090605054106420607"
theorem cover_1516844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1516844)
  decide +kernel
#print axioms cover_1516844

def state_1516887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 86 else (if j.val < 4 then 109 else 62)))
def hex_1516887 : String := "44404142434407060607424309090941420607420607404142064306064206434407060906"
theorem cover_1516887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1516887)
  decide +kernel
#print axioms cover_1516887

def state_1516924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 87 else (if j.val < 4 then 54 else 62)))
def hex_1516924 : String := "43074407400707"
theorem cover_1516924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1516924)
  decide +kernel
#print axioms cover_1516924

def state_1516932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 91) else (if j.val < 3 then 86 else (if j.val < 4 then 54 else 62)))
def hex_1516932 : String := "4344414009420A0740090A41404243050943050942434441060A050643050740420909420A430707444140090A0A41404243090609420643070640090A"
theorem cover_1516932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1516932)
  decide +kernel
#print axioms cover_1516932

def state_1516993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 91) else (if j.val < 3 then 87 else (if j.val < 4 then 54 else 62)))
def hex_1516993 : String := "43440741074005074441070741400707400907"
theorem cover_1516993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1516993)
  decide +kernel
#print axioms cover_1516993

def state_1517013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 63)))
def hex_1517013 : String := "41424305080542430544400841420805090505"
theorem cover_1517013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1517013)
  decide +kernel
#print axioms cover_1517013
end Mub6.Numerical.CircleFullD0.Forest
