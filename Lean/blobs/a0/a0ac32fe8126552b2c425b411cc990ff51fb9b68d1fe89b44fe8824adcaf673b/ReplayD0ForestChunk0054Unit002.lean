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
def state_2600604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_2600604 : String := "42434144424340050507430A4006074207434041050505074442430540440505050A42054305404144424305050A42054305074442050A4205430540414442050A42054305074442050A4205430540414442050A42054305074442050ADA05054105054107444207404344064106080607420740434107444207080707074341440A4309404241064406090609440A430A404241440A4309090A0A0A414406400606444006064042434144064006074440060A4042434144064006064440060640424341064406DA050542070A050542070A0606424341070A070A"
theorem cover_2600604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600604 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 22) (count := 219) (hex := hex_2600604)
  decide +kernel
#print axioms cover_2600604

def state_2600823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_2600823 : String := "44064006420706"
theorem cover_2600823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2600823)
  decide +kernel
#print axioms cover_2600823

def state_2600830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_2600830 : String := "4344064006430A06440606"
theorem cover_2600830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600830 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2600830)
  decide +kernel
#print axioms cover_2600830

def state_2600841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2600841 : String := "41424344414243440606074309444041070607074243064406060A4107420709444107420644080607434441090A094441070A0742434442080A424340414442070A07440842050A41070807430A404107440842070A410708440807430A440A400607"
theorem cover_2600841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 99) (hex := hex_2600841)
  decide +kernel
#print axioms cover_2600841

def state_2600943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
def hex_2600943 : String := "43444041424305440543054405054309444205430505424305440505430944050942430644084143050806434441054205054109064441420543050542084305084142430544050509424306084344050544050541424344054005440505440A404305440505434405050A434407400907444042050707404243050A09420A43070A42434440054105054006414405054405064440080A404143050A430608410A43060A4344404105420505410742050740414205094206440505414244050507420644050544404142054305050841420A07424305054305054041424305050542050541420505054041424344064007060943440908094243440607440607434406410607440909414243064440094306444109060640430607430641090643440908440909424306440606434406064440410942060541424306050505404109420609414206080644404142430A4440070607434408420A43440840080A08440642440807440640080A424308074344080808414243440A0A44060A430A44060A42430A444007060A4344084041420A43050808410A054408404142070808410A420A084041420743444243440707074344400A094007090A0707420743444142074309070707074142434440430907434441090909444109070707074344404243090A43090A4243440A090A43090A09440A0742434440074143440706070707074344404142070942070541420A0505090A"
theorem cover_2600943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 533) (hex := hex_2600943)
  decide +kernel
#print axioms cover_2600943


end Mub6.Numerical.CircleFullD0.Forest
