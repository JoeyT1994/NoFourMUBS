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
def state_2568228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
def hex_2568228 : String := "41444043424144050644400605400643090906064342050542050540434241094440090909090943090944404342414440434207060643420A0A0A4043424144060944074007090906434241090A09420A094440070A4043420744074109070743420A0A0A4144060944400643090640090942414406400643420A0606440740070A06434241440540430A0A050A4109440A0A420A41090A404342444140430909430909404342440705094205054342440A4109060942440A41090509414009094005430909094244414043090643090940434205050543420A09084140090940054309050943424441404309090940430A0A0A410940430609060942444140430909090A4109404309090A09"
theorem cover_2568228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 269) (hex := hex_2568228)
  decide +kernel
#print axioms cover_2568228

def state_2568497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_2568497 : String := "43424144050606414405074440430505050642414405404342050542050505440A4043060A064144054043070705440A4043420A07420A090A"
theorem cover_2568497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2568497)
  decide +kernel
#print axioms cover_2568497

def state_2568554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
def hex_2568554 : String := "4440434241440A404307070A44070A41444043420707070A404342414407400708074144400705084407400708420741440740070A070A440A40070A424144070A0741440A4043420707070A44070A430A0A404342444140430642064407414007060606060644414043424441080606444108400706410840080642444140070A07414043070743060A4007064441404342070707430A0A40070A414043424407050942070943420808420A094043050543060A4306420A0A40434206440606420707064140434206084244414005060606444140054308094005064105050640430605064244414043420707070A40070A414043420644414005060505420744070543060A400706444140434244074140070A07444140070A0741404342070707430A0A40050A420744074140060807430A0A40070A41404342444140054342060A0A050544414005430909050542444140050A0505444140050905054342440A0644410A0A410906420A440A41090A400543060A4306420A440A410A06"
theorem cover_2568554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568554 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 383) (hex := hex_2568554)
  decide +kernel
#print axioms cover_2568554

def state_2568937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_2568937 : String := "41444042434144054006050A0843410644064006080642050540424341444042434106080606420A430A06404243E20843410644064006434208080806424341440A40E20A0A0843414440060540430908430505440A4043420A09080A0844404207080A4042434408414007080708434408414008080808420A430A080843414406400643090644400643420808084043424408410908060643424408410908090808424341440540420A0A050A08434144054043090805440A0A0844404207434144070807070A4042434408414008080808434408414008080808420A0A"
theorem cover_2568937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 223) (hex := hex_2568937)
  decide +kernel
#print axioms cover_2568937

def state_2569160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_2569160 : String := "44424307074340070A07424344400706064408400706434440414342070707070A40414306420744074140050605060644400708400808"
theorem cover_2569160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2569160)
  decide +kernel
#print axioms cover_2569160

def state_2569215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_2569215 : String := "41444205054243404144050606060A43404144054305050A0A40410A0A0A440A420643060A"
theorem cover_2569215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2569215)
  decide +kernel
#print axioms cover_2569215

def state_2569252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 11)))
def hex_2569252 : String := "4041444208084208084407084144050808"
theorem cover_2569252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2569252)
  decide +kernel
#print axioms cover_2569252
end Mub6.Numerical.CircleFullD0.Forest
