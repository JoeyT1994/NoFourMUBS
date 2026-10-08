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
def state_1329706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_1329706 : String := "4344064142060606444142060606414243444042060606404241444306400A0643404241070606064042090A0944064306404241440609050606414406430540420A05050606444042410A4306070A064042410A43440A400A090A410A434406400A060A0A4306440640410A420A060642430644064041424344054005060543064406400706060606"
theorem cover_1329706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329706 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 137) (hex := hex_1329706)
  decide +kernel
#print axioms cover_1329706

def state_1329843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1329843 : String := "4243444005410605404142440506060A410642440506064405400541420506054306440640414306440542054005060606"
theorem cover_1329843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1329843)
  decide +kernel
#print axioms cover_1329843

def state_1329892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1329892 : String := "414243440842440840060606444243080706424344084006060943064406404109060606424344410842400A080A4142440806064244404341064244050606410605430808400643410642080641060844400608064441420506054142434440050606060642434405400508050643440A0606"
theorem cover_1329892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 115) (hex := hex_1329892)
  decide +kernel
#print axioms cover_1329892

def state_1330010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_1330010 : String := "43444042444143400A064042050A4244060544430641440607050743064005064108430505440A410743060A42440606440607400807444042434441400542054443050505050505434441404442430A05430A41400844430808080542050A4442434144400A0707444005060541444005420543070540050905430A414440430A420541074440050707430742070740430708074440430A0543064205414406050540054307054243070543074107400507400544420543060542050A414008420507054441400543444205414440434205410805054342094107444005090709400809054205410905050505424344414209444043060906094205440640050641090509434441444042430641094440050609430641074406074206064042430709070744404206060640424306054306414406050506410740420507074441434440420941094443404205410905060909090909434440050640050944400509050940054205430705"
theorem cover_1330010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 363) (hex := hex_1330010)
  decide +kernel
#print axioms cover_1330010

def state_1330374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
def hex_1330374 : String := "44404441420A0709070707"
theorem cover_1330374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330374 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1330374)
  decide +kernel
#print axioms cover_1330374

def state_1330388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 6)))
def hex_1330388 : String := "44414240444309420A090A4443074241444043074241070707070744400A4306420606400A07410744090707404409084443064105090742400A44430641420A06060A400944060A41070A"
theorem cover_1330388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 75) (hex := hex_1330388)
  decide +kernel
#print axioms cover_1330388


end Mub6.Numerical.CircleFullD0.Forest
