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
def state_1590098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 27)))
def hex_1590098 : String := "414205414006050505"
theorem cover_1590098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1590098)
  decide +kernel
#print axioms cover_1590098

def state_1590107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
def hex_1590107 : String := "4305440505"
theorem cover_1590107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1590107)
  decide +kernel
#print axioms cover_1590107

def state_1590114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 13)))
def hex_1590114 : String := "44414243440A0544414042440A0A0A08404205070541404205070505430A440A0A42430544050543074407074142430A41400705050A420507"
theorem cover_1590114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1590114)
  decide +kernel
#print axioms cover_1590114

def state_1590176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 36) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 52)))
def hex_1590176 : String := "404342444041430706074108430505400708440807424440064308060606430808"
theorem cover_1590176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1590176)
  decide +kernel
#print axioms cover_1590176

def state_1590209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 52)))
def hex_1590209 : String := "4043424441400705050507424441400643050607410605440706434205054205440805"
theorem cover_1590209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590209 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1590209)
  decide +kernel
#print axioms cover_1590209

def state_1590244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 53)))
def hex_1590244 : String := "41404342444006050506064305084043070605"
theorem cover_1590244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1590244)
  decide +kernel
#print axioms cover_1590244

def state_1590263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 51 else (if j.val < 4 then 27 else 26)))
def hex_1590263 : String := "4441404308060840430706430808414006084006430806"
theorem cover_1590263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 23) (hex := hex_1590263)
  decide +kernel
#print axioms cover_1590263

def state_1590286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 26)))
def hex_1590286 : String := "42444140430742440705074305054043050705414007050544414007430A42444108050507400743050741400743050507"
theorem cover_1590286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1590286)
  decide +kernel
#print axioms cover_1590286
end Mub6.Numerical.CircleFullD0.Forest
