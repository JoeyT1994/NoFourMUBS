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
def state_978817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 29)))
def hex_978817 : String := "424041430705074143444205400741080705054307444205400741050705400741434442400708070744424041430705074143080543074442050805400741430744424041430605074143080508850843070708430707"
theorem cover_978817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 87) (hex := hex_978817)
  decide +kernel
#print axioms cover_978817

def state_978904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_978904 : String := "43444240070905074442400A41434409070A0A40074143070A09424007414307070707"
theorem cover_978904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978904 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_978904)
  decide +kernel
#print axioms cover_978904

def state_978939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 15)))
def hex_978939 : String := "400741430742050707"
theorem cover_978939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_978939)
  decide +kernel
#print axioms cover_978939

def state_978948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
def hex_978948 : String := "42444041434205440A05090A4143420544400A06054205440605434205440605050544404143440A42090A0A0A41434442400A4143440A42054041050A4105060A0A400A4143440842404143440A09090A4143444206400806420540410505054406054344064205400A0606400A414344420808424041434442400941050A85050943440A4205850A41434442404105430505410505850544080543444206854205854406058544084240094341050605400A43850A43440A42400A414344064206850606400A41850A0A0A0A4240410505054041090A414344420540410943070941434442058505094344424007410508400741850707440A05054442054009434105090505434442400A41050640074143070A0708440A05440A42050A43440A4240054105060A0A404109430505414305054342050505"
theorem cover_978948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 26) (count := 313) (hex := hex_978948)
  decide +kernel
#print axioms cover_978948

def state_979261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
def hex_979261 : String := "444041424344420A050A0A434405430705054243440741420A0A4207430707444105420A05410A42440A0A0A434407414307054307074405054142434440420A05424341444007420A070A070A430705400A420A43070A440A0A430744050542434440074107074007070A434407070740414243440A094442440A090A0943440A09440A400941070942430A44410A42440A080A0843440A0A0A4142434440424307074307070709444042444143094206050A09440A410707424441430A4042090542094405090A094441430705070707434440430A0707400907440707424344400A4107074041090941074207430907444041424407070A420707074009074344400A41070A40414309090A414342094440090709074342440A09440A40094109080A440A400A07"
theorem cover_979261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 297) (hex := hex_979261)
  decide +kernel
#print axioms cover_979261


end Mub6.Numerical.CircleFullD0.Forest
