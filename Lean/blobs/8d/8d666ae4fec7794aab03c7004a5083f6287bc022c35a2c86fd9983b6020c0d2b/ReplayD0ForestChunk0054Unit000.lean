import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2598914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2598914 : String := "40414243444005414243440A0A0505054041420643064405060641424344410A06064405064344050644054144050606424306440506430A4405064405404142440506440543404144050606410506084206440A06414244050644054341050A05424405064405064344054041434405064405424041440506064105064041050A054306444206050641434405064405420A050A4405404144054243404144054205050A41050A400A05434041050A054041050A0544420A43050A4243060A0A41440542430A050544050A4243440540420643060642434405064405060A440540064244050644050643440540060A440740444142060706060A414243444142434044410A0A410A0A4441424307400A0907420A07414208090A40440541420A0A0A44414243400A06050942430A050541420843090942080A434044050A094005440541090A42434044050A44420A070A4005440542410A050A43070541424344400A0840060844404142080A0A080843440A0A44400A0A400A084243440A0844400A08080A444142400543440541080505050541424440050807444005430A0540430A0508424440050808440A0A4344414309050541430944400509090A44054144050A0A42434442434005410A05050542430A44400508080A4405424405080A430A44050A"
theorem cover_2598914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598914 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 487) (hex := hex_2598914)
  decide +kernel
#print axioms cover_2598914

def state_2599403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2599403 : String := "4243444006410606404106424344064006420706060641064243444207060706064440064106060643444006410606064440414442434006064041440806064144050606434041090641070640410944080841070A420643064006064442064306400606064144424341070608430941050A060606"
theorem cover_2599403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599403 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 117) (hex := hex_2599403)
  decide +kernel
#print axioms cover_2599403

def state_2599523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_2599523 : String := "4042434406410640064209060606424344064142430A06060A0606"
theorem cover_2599523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599523 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2599523)
  decide +kernel
#print axioms cover_2599523


end Mub6.Numerical.CircleFullD0.Forest
