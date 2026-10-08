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
def state_1617053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
def hex_1617053 : String := "40414442434440410542434405410540050A05050A40410A424344410A40060A410A40060A06060A44400541050A4006410A420906430A0642434041440A06444243410A4440060A06060606410A440A0A40064106060644424341444042434441400505094140420905090909434405060542090A4042434144404209060940060944404208060940060906064209430A094440420906094042090609414440060940060944090943414440050A40060A44400642090640064243410A440909060606424341404442434144400609074440060907060607444209430A0642054307064044420906074442090905414006440906400609434140060A400644424341084006080606070641440A42430A4041080A0808444209430A40410A090742434041440905050909430A4041064406060A"
theorem cover_1617053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 307) (hex := hex_1617053)
  decide +kernel
#print axioms cover_1617053

def state_1617360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
def hex_1617360 : String := "4340410A4443084241084440060840060806070A40060A"
theorem cover_1617360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617360 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_1617360)
  decide +kernel
#print axioms cover_1617360

def state_1617383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
def hex_1617383 : String := "424340414442430740070A070707410A05404144424340064108070606060741444243084041060908080844420543084006080543400708400641080A"
theorem cover_1617383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1617383)
  decide +kernel
#print axioms cover_1617383

def state_1617444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
def hex_1617444 : String := "4007414243440A05060607"
theorem cover_1617444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1617444)
  decide +kernel
#print axioms cover_1617444

def state_1617456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
def hex_1617456 : String := "4344404142430944050543440505444142430540090543094009444106420506064243054009054340080540094442054305414007054007050541050542094344080944420943084009414442090805080941424344060944054041050541060943440540410505410642060644404105050540054105420605424344060944400906094344400806404209054244060944054143060643400506094440424309410509434105084105444205080542430641054405054341054405050540420943090542430909434405094405054041424344410709074441080A0843444107090744414243050505420A43094405400505084243440A080A430944094243400608084307404106064144420807060641424344404108090808444041080A08084344404142080709090844404142430805054243090A430905414206064243094406084309064041084208430708084243094409084344090944404209090940424341080908430941444208430740070707440906424308084309414440420843074107094208090844094042080608444041420A43444142074340074407070742074340074407070741420A43440A05080A0A0A4142430508434440414207434406060742054344420507050741420507054041420543050A0505440707420A434440420A4341440705070742054305074005050A4041420A434441050508080A41424344400A41434405420A05050A404105084143424440054105084005410508080543080A0A434440054105420A0540410508414243080505420843080505420A4344400A420A4344050A054042084341080A0A4243080A4341440808440A080A0A"
theorem cover_1617456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 615) (hex := hex_1617456)
  decide +kernel
#print axioms cover_1617456

def state_1618077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_1618077 : String := "4441070805"
theorem cover_1618077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1618077)
  decide +kernel
#print axioms cover_1618077


end Mub6.Numerical.CircleFullD0.Forest
