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
def state_2282128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 31)))
def hex_2282128 : String := "41444208434008084006060844424340060606434041444206430A0606440A0641090906420643400641060606"
theorem cover_2282128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282128 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2282128)
  decide +kernel
#print axioms cover_2282128

def state_2282173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 31)))
def hex_2282173 : String := "400606"
theorem cover_2282173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2282173)
  decide +kernel
#print axioms cover_2282173

def state_2282183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
def hex_2282183 : String := "41444208430808084442430740060609420709"
theorem cover_2282183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2282183)
  decide +kernel
#print axioms cover_2282183

def state_2282203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 112) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
def hex_2282203 : String := "44420843050808"
theorem cover_2282203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2282203)
  decide +kernel
#print axioms cover_2282203

def state_2282211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 124)))
def hex_2282211 : String := "42434008084008084340414442080508094108444243400505400805054208430508404144090809410844424340060606434005054006064206430806"
theorem cover_2282211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2282211)
  decide +kernel
#print axioms cover_2282211

def state_2282272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 125)))
def hex_2282272 : String := "420843400808400808"
theorem cover_2282272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2282272)
  decide +kernel
#print axioms cover_2282272

def state_2282281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 62)))
def hex_2282281 : String := "40414442064309060644420609064144420643080606444206434006060606"
theorem cover_2282281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2282281)
  decide +kernel
#print axioms cover_2282281

def state_2282312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 62)))
def hex_2282312 : String := "4340094144054208054442434009054009410509094243090909400941440A0A4442434009410709400606094243090609"
theorem cover_2282312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2282312)
  decide +kernel
#print axioms cover_2282312

def state_2282361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 63)))
def hex_2282361 : String := "424340080840060843400941080940090A"
theorem cover_2282361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2282361)
  decide +kernel
#print axioms cover_2282361
end Mub6.Numerical.CircleFullD0.Forest
