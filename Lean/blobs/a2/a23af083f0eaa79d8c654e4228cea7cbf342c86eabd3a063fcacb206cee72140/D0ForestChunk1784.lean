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
def state_2301324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 93)))
def hex_2301324 : String := "404143074244410740050707074306420544400541070505410706"
theorem cover_2301324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301324 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2301324)
  decide +kernel
#print axioms cover_2301324

def state_2301351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 46)))
def hex_2301351 : String := "4440410743074244404107430708074041070807070707"
theorem cover_2301351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301351 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_2301351)
  decide +kernel
#print axioms cover_2301351

def state_2301374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
def hex_2301374 : String := "430642444041430642064440090606060606444041434206440606424440080608444008410706084306084143064206060640414306080606"
theorem cover_2301374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301374 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2301374)
  decide +kernel
#print axioms cover_2301374

def state_2301432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 47)))
def hex_2301432 : String := "414342444143404205070640050743060541430605054441074307400507410743060542444105050544410A0505434206444306050505"
theorem cover_2301432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301432 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2301432)
  decide +kernel
#print axioms cover_2301432

def state_2301487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 47)))
def hex_2301487 : String := "414342060742444041074305054107064005060743064206444041430505050605"
theorem cover_2301487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2301487)
  decide +kernel
#print axioms cover_2301487

def state_2301522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 46)))
def hex_2301522 : String := "4143070A4342444340084107064008410708434008060807424440084108080808"
theorem cover_2301522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2301522)
  decide +kernel
#print axioms cover_2301522
end Mub6.Numerical.CircleFullD0.Forest
