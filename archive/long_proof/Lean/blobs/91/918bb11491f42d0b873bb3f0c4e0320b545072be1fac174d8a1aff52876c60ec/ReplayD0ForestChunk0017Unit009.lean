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
def state_1464613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1464613 : String := "414243444243060A430740410A064144050A44070606440A0A4344074344400641070606444007410942060709444041420A054243070A0741420505424344054041050741054205050A43070544400A410A420A43440708080A424306444142400643060A400A434407060A4206080643440706444140074243074407410A090707414440420A074243060A430741444007420A070844074007420A07400A420643060844400742060705"
theorem cover_1464613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 171) (hex := hex_1464613)
  decide +kernel
#print axioms cover_1464613

def state_1464785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1464785 : String := "42434440420843094105440540420505050809444042410843080A4105434405400A050A42050540424441094306070744410A43400A090A0A42074441054309070743444043410709410542440540070507430505404344414209430907094109064441090909434441090909094440410542050505404441420A4305054243404441054205050A4405090A43404405094405094044050805410A4243090A430908444105420505410909"
theorem cover_1464785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 171) (hex := hex_1464785)
  decide +kernel
#print axioms cover_1464785

def state_1464957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_1464957 : String := "4344084006410906444041424308444208080843084408084243064408060841424308440508084208084041420644430640064142070A0806064142440807440843090742440806440808"
theorem cover_1464957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 75) (hex := hex_1464957)
  decide +kernel
#print axioms cover_1464957

def state_1465033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
def hex_1465033 : String := "444041434208074244074007080743070741430842080A0840414306444206400641094306440706060641430909434408064442080A09"
theorem cover_1465033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465033 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1465033)
  decide +kernel
#print axioms cover_1465033

def state_1465089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_1465089 : String := "40414243440740414205050741050844054041050841050843074405404105070542080741420505420808"
theorem cover_1465089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1465089)
  decide +kernel
#print axioms cover_1465089
end Mub6.Numerical.CircleFullD0.Forest
