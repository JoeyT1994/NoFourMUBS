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
def state_999157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 107 else 87)))
def hex_999157 : String := "424140444306080606404443424140050605054241084005084105054342410840054405060642084106054443424106050542084106054306084106400506"
theorem cover_999157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_999157)
  decide +kernel
#print axioms cover_999157

def state_999220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
def hex_999220 : String := "444306424106070606"
theorem cover_999220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_999220)
  decide +kernel
#print axioms cover_999220

def state_999230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
def hex_999230 : String := "4405434241050505424140440543054241400544050805054443050543424140050605054207050505"
theorem cover_999230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_999230)
  decide +kernel
#print axioms cover_999230

def state_999271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
def hex_999271 : String := "4443050743424106050542414044074306070707410505"
theorem cover_999271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_999271)
  decide +kernel
#print axioms cover_999271

def state_999294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
def hex_999294 : String := "434442070A4241060706444207410A074241404407080607410640440743060706"
theorem cover_999294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_999294)
  decide +kernel
#print axioms cover_999294

def state_999327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 21)))
def hex_999327 : String := "40434405424105050544054241404405060605054306440506"
theorem cover_999327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999327 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_999327)
  decide +kernel
#print axioms cover_999327

def state_999353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 20)))
def hex_999353 : String := "424042074143070707074042414305440540420705070505420705"
theorem cover_999353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999353 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_999353)
  decide +kernel
#print axioms cover_999353

def state_999384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 42)))
def hex_999384 : String := "41434044074207410807070707"
theorem cover_999384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999384 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_999384)
  decide +kernel
#print axioms cover_999384
end Mub6.Numerical.CircleFullD0.Forest
