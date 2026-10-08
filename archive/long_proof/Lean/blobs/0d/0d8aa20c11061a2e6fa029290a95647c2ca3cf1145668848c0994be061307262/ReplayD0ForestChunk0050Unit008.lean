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
def state_2566146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
def hex_2566146 : String := "434144400643424106440640064342070606060640064342414440064342410644064006434241064406400608060606064006434241440609444006430906400909090644404342070606434241444006434207060640430706434241440740070807410644074006430806420706074144060644400643070640064342440741400609074406090642410607064043050543424441404342050505434244414043070608074109054441094005090942444140060907410905094005434205050541400543050505444140060940054342444105050509054109054244414005434244060506060505440605410644064006434244410640050909090642410644064005434208060606444007434207414406400643420706060707404305054342444140074342070707074140054305050544414006434244414006430706074140054342440705440605060544410607410605084005430705414005434205050505420808410608"
theorem cover_2566146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566146 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 363) (hex := hex_2566146)
  decide +kernel
#print axioms cover_2566146

def state_2566509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_2566509 : String := "440742074344070507"
theorem cover_2566509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566509 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2566509)
  decide +kernel
#print axioms cover_2566509

def state_2566520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_2566520 : String := "424340414405420505070540070543404105440543420740070507054041050705"
theorem cover_2566520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2566520)
  decide +kernel
#print axioms cover_2566520

def state_2566558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_2566558 : String := "424341404405420A4305050540070A410A0A4341404405430505054044074342074144050A07070A414044054205050540070A"
theorem cover_2566558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2566558)
  decide +kernel
#print axioms cover_2566558

def state_2566610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
def hex_2566610 : String := "434144404243090943414405404243050543050505440A4042074307070641440540420943410507070544070A420A0A40424306414409400906094341444042430609430841440540080544400705404306090642064305054042064306E206444042064306414407060606064144404243090943414440430505054043420941054405400705420741050743050544400709404307070A41444007054042074307070A440740070A420A43050A40E24206430641440A40E2050A444042074341440740070607070A4042064306444140070A0741400706060642064306414405060644404209434144070606070A40420643064441400706060606414440420A430A080A404243090843414440420A4341440740070807070A404243E20843E208420A430A08440A4042094344074140070807070A08420A0A440A4042094344074140070807070A"
theorem cover_2566610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 329) (hex := hex_2566610)
  decide +kernel
#print axioms cover_2566610

def state_2566942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_2566942 : String := "404342414405404342050542050505444043420505070540434241440508074108440708420741440540070507430A0A414405404305050544404305050540434208084241440540430842070505440740070A4144054006054440060540434207060643050A430505424144054043420505424105070505440A404342074144050A07070A41440540060544400605404342414405400605070606430A0A430505"
theorem cover_2566942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566942 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 161) (hex := hex_2566942)
  decide +kernel
#print axioms cover_2566942


end Mub6.Numerical.CircleFullD0.Forest
