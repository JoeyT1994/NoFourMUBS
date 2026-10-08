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
def state_1306125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 117 else 89)))
def hex_1306125 : String := "40424406410A064406414340420A09420A090606424406410806440641434042084406410806080606"
theorem cover_1306125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306125 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1306125)
  decide +kernel
#print axioms cover_1306125

def state_1306166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 89) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 44)))
def hex_1306166 : String := "440643404241440509054144430506430506060506"
theorem cover_1306166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1306166)
  decide +kernel
#print axioms cover_1306166

def state_1306189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 88)))
def hex_1306189 : String := "09"
theorem cover_1306189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1306189)
  decide +kernel
#print axioms cover_1306189

def state_1306191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 116 else 89)))
def hex_1306191 : String := "404244410943050641074340070540424406080742440641070644060744090742440541430540424407070705054405410705"
theorem cover_1306191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306191 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1306191)
  decide +kernel
#print axioms cover_1306191

def state_1306242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 117 else 89)))
def hex_1306242 : String := "404244064109060942440641090609"
theorem cover_1306242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306242 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1306242)
  decide +kernel
#print axioms cover_1306242

def state_1306257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 89) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 44)))
def hex_1306257 : String := "440643404241440A43050606080506"
theorem cover_1306257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1306257)
  decide +kernel
#print axioms cover_1306257

def state_1306272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 44)))
def hex_1306272 : String := "06"
theorem cover_1306272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1306272)
  decide +kernel
#print axioms cover_1306272

def state_1306275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
def hex_1306275 : String := "4244414340420A084244410A0909444107430708074005420A05430906410A0844414307050808"
theorem cover_1306275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306275 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1306275)
  decide +kernel
#print axioms cover_1306275

def state_1306319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 90)))
def hex_1306319 : String := "4244410A0909444143074007420A0743400805404244410A08090842444143090A0909444107430506410708410709"
theorem cover_1306319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1306319)
  decide +kernel
#print axioms cover_1306319
end Mub6.Numerical.CircleFullD0.Forest
