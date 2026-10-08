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
def state_965759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
def hex_965759 : String := "424344064041424406434041424406434041080808064443400A0606434007084041080A06420A44064340074108060A414206440608060644434041420A090A06064340414244434007410705400706430740074107070742440A070741424406430806440943084007064244064305064405430540070640414244064340070606440A430740070642060A0642440643400A0606440A434041420A070A4142060505400A0641420644064340414206090606060606434409404142444309404142060909064340070940410707414244064340070606440907420609440907424409430940070909414244064309060909440640414243440640414206070A06064344400A06400741424307060742060744064041420607060642064344064007060606"
theorem cover_965759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 293) (hex := hex_965759)
  decide +kernel
#print axioms cover_965759

def state_966052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
def hex_966052 : String := "4142064344064041420A0942060906064206430906"
theorem cover_966052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966052 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_966052)
  decide +kernel
#print axioms cover_966052

def state_966073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 27)))
def hex_966073 : String := "404142064344064041050606060606"
theorem cover_966073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_966073)
  decide +kernel
#print axioms cover_966073

def state_966088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 13)))
def hex_966088 : String := "44430940414406434206090606064340414342440940414409070909094244404143094244064041430906090609090940414344424041424307440705070741090909424007410A070744424041434205070543424409050742050741434244060509420544050543090640070942400541054342050705400741070743440907444240414307420607430706414309060609424007414342070742050743074206070741434409420A09444206094240410A43420A09050A40410A09094309440942404143420609060606094409404143074244070707070943094244094041430944094207074307440907410909094143094244064041430944060A0906090940414342444041434206440640410808060606064041434442054041434442050505054307054143440905054309064205050543444206404143070A0706424005064007414307050744060541434406420540410543440605054105060643440642064041430906060606444041430942440640080608090940414342444007090707424440410543070541434205090543090505444007090743424409070742444007060707414342440940410A090909424406400506440940414309050909430942440606094244064005064440414342060806060640414342054440410508410543090505054342440605440A07420544060541434206440605050643424406404143440A42400706074406060A064409404143074244060707070942064406400A06414342064406404143094206090906064342060906"
theorem cover_966088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 573) (hex := hex_966088)
  decide +kernel
#print axioms cover_966088

def state_966661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_966661 : String := "42440643404142434406400A060643094406400A06420A09060644094309404143420A09060A06"
theorem cover_966661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966661 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_966661)
  decide +kernel
#print axioms cover_966661

def state_966701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_966701 : String := "41424344420906050543064440410505410542050705424344414206064240064406064006440706064441094209400543440A07050943074441400742430705070707"
theorem cover_966701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 67) (hex := hex_966701)
  decide +kernel
#print axioms cover_966701


end Mub6.Numerical.CircleFullD0.Forest
