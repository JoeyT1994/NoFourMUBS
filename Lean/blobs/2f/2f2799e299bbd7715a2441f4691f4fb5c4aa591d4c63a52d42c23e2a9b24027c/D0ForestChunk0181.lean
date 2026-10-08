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
def state_980892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 9)))
def hex_980892 : String := "414405424340084144050808404144054243050605054144054243400807404144054207050707430505070508"
theorem cover_980892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 45) (hex := hex_980892)
  decide +kernel
#print axioms cover_980892

def state_980937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 9)))
def hex_980937 : String := "41444205054240434144054206050506434144054207400507070740054305414405420505054405420605"
theorem cover_980937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_980937)
  decide +kernel
#print axioms cover_980937

def state_980980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
def hex_980980 : String := "4341444207054240430A07070A0741440742074043410505070707"
theorem cover_980980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_980980)
  decide +kernel
#print axioms cover_980980

def state_981007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 4)))
def hex_981007 : String := "44054005430505"
theorem cover_981007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_981007)
  decide +kernel
#print axioms cover_981007

def state_981015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 4)))
def hex_981015 : String := "440740414344064206400641434405420740050544064206090706064143070707"
theorem cover_981015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 33) (hex := hex_981015)
  decide +kernel
#print axioms cover_981015

def state_981049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 8)))
def hex_981049 : String := "40414305060505"
theorem cover_981049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_981049)
  decide +kernel
#print axioms cover_981049

def state_981057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 9)))
def hex_981057 : String := "41434244054041430509054143050905054244064006410906440540410942050541094205054305420605"
theorem cover_981057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_981057)
  decide +kernel
#print axioms cover_981057

def state_981100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 9)))
def hex_981100 : String := "4143424405404143050A0507054244074041440742070907074405404109050A430507"
theorem cover_981100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981100 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_981100)
  decide +kernel
#print axioms cover_981100
end Mub6.Numerical.CircleFullD0.Forest
