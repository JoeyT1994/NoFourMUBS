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
def state_2583925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
def hex_2583925 : String := "424340414443420840444143050806060542084044080808430608444306060641080840410844080808434041444243404441434205400A05424041080605400A41080A0A4143064206400608064441050A4105084044414208434041440A080A0840410808080A41080A44410808084340440A4142430A400A0A0A0A4441424305400A05090A41424305084309400A080A4044414243400A0A400A410808430A0A0A414243400A08400A08430A400A0A0A4441420843400A06060A41420843400A08080A4243400644080640444108060608434044414243064006080A060644414208430A080A410806404441424340440806080843400A0A400A080A414207430707064441080808440A42060A4144420843440909444041060806084208434408080844424341050808430A414409080A4208430A084041444243404441080A08080843404441424340050805430A050A41420843400508050A4441080A084044050508420843404441080A0808084442430A0A0A4208430A0A41440808444208434108080808"
theorem cover_2583925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 393) (hex := hex_2583925)
  decide +kernel
#print axioms cover_2583925

def state_2584318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2584318 : String := "44424041080A08404143444240050605420805050A414306064344424106080642084106080542084041434408080543440A080508"
theorem cover_2584318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584318 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2584318)
  decide +kernel
#print axioms cover_2584318

def state_2584371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_2584371 : String := "424344414306080606444108400607084344414243400644434142050A0A4142080A0A4341080608400A444142080A0A08430A0A4243060A0A414243064006084340060A400A440A0842060A444142400A080A0A414208400A0842080A"
theorem cover_2584371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584371 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 93) (hex := hex_2584371)
  decide +kernel
#print axioms cover_2584371

def state_2584464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_2584464 : String := "40414206434440064206430641444206400507060606444042060542410706414344050505430605060641424344080607434442434006084007074340414442064340064107064006070606414408074408064041444207430707074442064306070641080842064306074442084041080808074206434441420643064006080606440806"
theorem cover_2584464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 133) (hex := hex_2584464)
  decide +kernel
#print axioms cover_2584464

def state_2584597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_2584597 : String := "44404142080505414208434408080542070A40414208050508"
theorem cover_2584597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2584597)
  decide +kernel
#print axioms cover_2584597

def state_2584622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2584622 : String := "41424308084344420843404108444208060808084208434408404108420743070708080842434441080707074344414208434044424341050808434106094106404406080642084341080808084044080808420843404441420843404442430909090A094044424108080942080A08420843400A0A400A4441080A08410808084044414208434044420806080808420743400A080A080841420843440840070808420843440808084441080708"
theorem cover_2584622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 173) (hex := hex_2584622)
  decide +kernel
#print axioms cover_2584622

def state_2584795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2584795 : String := "404142430A074344404206430A054207434407070705054243070543444006414206430607064041050607444006070641420743444207434440070707070707420743444107070707"
theorem cover_2584795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584795 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 73) (hex := hex_2584795)
  decide +kernel
#print axioms cover_2584795

def state_2584874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_2584874 : String := "444042410909090940064209440906"
theorem cover_2584874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2584874)
  decide +kernel
#print axioms cover_2584874

def state_2584893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
def hex_2584893 : String := "4144404207080940424306084308084243094407414240060540080942060943094409410909440740420608424306414407060609"
theorem cover_2584893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2584893)
  decide +kernel
#print axioms cover_2584893

def state_2584948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
def hex_2584948 : String := "4042074308054207430706"
theorem cover_2584948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2584948)
  decide +kernel
#print axioms cover_2584948

def state_2584960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
def hex_2584960 : String := "4243444140084207080841400842430608080844410A400542430805054140054209054005424344080805054344080805"
theorem cover_2584960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584960 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2584960)
  decide +kernel
#print axioms cover_2584960


end Mub6.Numerical.CircleFullD0.Forest
