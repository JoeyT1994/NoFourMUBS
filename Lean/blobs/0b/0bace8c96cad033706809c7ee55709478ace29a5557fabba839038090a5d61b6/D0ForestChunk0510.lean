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
def state_1311121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
def hex_1311121 : String := "4440410743444208410740070542410705074442084108404344080708084208410740070808404107430742440A0707410743054205440805"
theorem cover_1311121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1311121)
  decide +kernel
#print axioms cover_1311121

def state_1311178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1311178 : String := "430542400909400707"
theorem cover_1311178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1311178)
  decide +kernel
#print axioms cover_1311178

def state_1311187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
def hex_1311187 : String := "44430744404107424307444107424007430708070707410742430744404107420807084007070740070707"
theorem cover_1311187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 43) (hex := hex_1311187)
  decide +kernel
#print axioms cover_1311187

def state_1311233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1311233 : String := "05"
theorem cover_1311233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1311233)
  decide +kernel
#print axioms cover_1311233

def state_1311236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1311236 : String := "05"
theorem cover_1311236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311236 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1311236)
  decide +kernel
#print axioms cover_1311236

def state_1311240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 24)))
def hex_1311240 : String := "05"
theorem cover_1311240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1311240)
  decide +kernel
#print axioms cover_1311240

def state_1311243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
def hex_1311243 : String := "420840434441420540070505414205070544410842080941420840090842404305060540434409410742050709430508430508"
theorem cover_1311243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311243 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1311243)
  decide +kernel
#print axioms cover_1311243

def state_1311294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
def hex_1311294 : String := "420540430544064142064006050605"
theorem cover_1311294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1311294)
  decide +kernel
#print axioms cover_1311294

def state_1311311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 49)))
def hex_1311311 : String := "4043050A05"
theorem cover_1311311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1311311)
  decide +kernel
#print axioms cover_1311311

def state_1311316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
def hex_1311316 : String := "4043444107054107054441420840070742400A054043444107420507074441094206064107420A0743054441080541080541420A07420A40074305440A0505"
theorem cover_1311316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1311316)
  decide +kernel
#print axioms cover_1311316
end Mub6.Numerical.CircleFullD0.Forest
