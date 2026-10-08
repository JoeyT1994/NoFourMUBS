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
def state_1613605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1613605 : String := "4243404441424344404209414344404209410A0909090909090909434440414243440A400A08444042410A090A0A4042090A4209080A4209430A440A0A410A42090A4041424344400A08404205080544404209060909084209430A440A094108094440414243444042090642090A4006094440060906064209434440060A06064142090A094041420906094142090809420943444041420943440A09090909090941420543404441420508090544410805054044410606060909444142094340440A08084044410A0909090909404441420943444006414209060940060906094142090609094340444142430A4440060A4006080842434440410A42430A090A0A40410A4209070A44404106420906410A094006410A090A4142430806064243404441070706440A0540060943080644410842430A40440909090841084209084044410642434440064106060606060644414243400A084006080642090A414243080606420906"
theorem cover_1613605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 359) (hex := hex_1613605)
  decide +kernel
#print axioms cover_1613605

def state_1613964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1613964 : String := "444142434044074207080640444207074241070941080A440742070708424340440641420607060609430A40440A0A0A41424340440808084044424108090808080842094340440808084044410842090841080908"
theorem cover_1613964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 85) (hex := hex_1613964)
  decide +kernel
#print axioms cover_1613964

def state_1614049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1614049 : String := "43404142444305404205080505440805420544430A4041084443054205070508054142050805404142444340420544410643050605054006420544080505444308060642094443404106444209060541084442050805400641060606414205084205444308404108050505"
theorem cover_1614049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 107) (hex := hex_1614049)
  decide +kernel
#print axioms cover_1614049


end Mub6.Numerical.CircleFullD0.Forest
