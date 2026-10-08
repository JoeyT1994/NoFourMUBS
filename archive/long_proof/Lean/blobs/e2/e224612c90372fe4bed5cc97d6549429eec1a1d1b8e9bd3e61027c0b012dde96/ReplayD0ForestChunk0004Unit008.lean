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
def state_973779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_973779 : String := "434442400A0A0542404143440A42400A41420A434408070A0A40074142434408070A43070A0A0A0A41434442400A06094240414243444008064041420543440805050A4142054344060505064406054344400809404142434408074408054344080744084005410507420A0A41424344094041054205070944060543094408404105420508414205090642430906094406400A41420544060506420A434409400A4109060A41420643440640414206090606060640414243440940414243074408070707414243094408404109070909094408400A4142440643400841080605440843400808080A4344054007094408400A41440842430908430908094243090A43050A41424309440640414206440643090606060909440A4206400A41434206440606060643440942400A064009090A40414344054240074143050A07050A0A4143440542404143054405424041440507070905050905440842400A4143440542404108080909080A400A0543050A440A0A"
theorem cover_973779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 22) (count := 371) (hex := hex_973779)
  decide +kernel
#print axioms cover_973779

def state_974151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_974151 : String := "4143424440094109430709054440064106070609434244414007430742050707050742440A05440A410907"
theorem cover_974151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_974151)
  decide +kernel
#print axioms cover_974151

def state_974197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
def hex_974197 : String := "4440414342050609434244400541050505444007414442430605060644424306050707064205444009410943444205400941050905050541434205444044420506050A05054342444041054205444305050541054205444340410542050A0A05050544404144424340060A0543064006410544420506054205064442434041440605074144420A0A0A44424340070A0543074007410A0942050740050543400641064443060706404144424306050606444243070507074144424340060A054306400808420543060544424340414408050741444205080544094205070543400641440906074041084408074108440843070542054306054205430605410A4442430A40410505410544420543090505430A40414442430A05430A404105080A0A44424340410A09090543094041440843080544084309054109094205430A05410A44424309400506090A420A0A404105050A4205444041430505434442054041054344420508050541054344420508050505054105434442054041054344420540080805054105434407050505050505"
theorem cover_974197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 401) (hex := hex_974197)
  decide +kernel
#print axioms cover_974197

def state_974600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_974600 : String := "414306094344060644424041060941430609434442400641060A060609400641064306440A06420906"
theorem cover_974600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_974600)
  decide +kernel
#print axioms cover_974600

def state_974642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_974642 : String := "4344420A0606444240430609430A074006430608420506"
theorem cover_974642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_974642)
  decide +kernel
#print axioms cover_974642

def state_974666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 14)))
def hex_974666 : String := "4442404106444306424006414406064443064240410607410844080740064106094306424006410607060606410A444309424041444309420A0A0A444309424041440843080809090943094240410A444307420509070A40410607090A404106440906090A400641064443054240060505064240060A06"
theorem cover_974666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 119) (hex := hex_974666)
  decide +kernel
#print axioms cover_974666


end Mub6.Numerical.CircleFullD0.Forest
