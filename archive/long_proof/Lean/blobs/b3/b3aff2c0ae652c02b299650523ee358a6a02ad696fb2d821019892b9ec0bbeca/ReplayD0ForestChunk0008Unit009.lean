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
def state_1012985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_1012985 : String := "444006410606400A444142064340440641420643400644060A06064407414243070643404407414243400A070643400544054142070505400A0742064305070740440641420643400607060607074006440641420643400606060642064340060706414243400A44410806080543400A44414243400A4407080843404441420A43400A44414243050A0542070541420A43050A0A0A0A0A44414243404407080707434044414207430507074142084305064207430505440741060740440708074207430707414208434044410842084305060806084243400A070843404441420A0A090A4407410609400A08400A4441080708420A43400A440742074309070A41420843400A444108420843400A080808080A400A4441420543400A08050A08420A43400A4442064307070A0A"
theorem cover_1012985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012985 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 22) (count := 301) (hex := hex_1012985)
  decide +kernel
#print axioms cover_1012985

def state_1013287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_1013287 : String := "444008420505404243054405050842434405414008430644050608440541404442430505054243054107050544424305414044054105054405060505424341064005064140444106050706400544054106054305054005440542430505054305440505"
theorem cover_1013287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 99) (hex := hex_1013287)
  decide +kernel
#print axioms cover_1013287

def state_1013387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_1013387 : String := "40084241434405400842050544064006420641090543050608"
theorem cover_1013387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1013387)
  decide +kernel
#print axioms cover_1013387

def state_1013413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_1013413 : String := "4244414340084244060A084006420608084143444007420A410705070A0A440841074305420A07"
theorem cover_1013413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1013413)
  decide +kernel
#print axioms cover_1013413

def state_1013456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
def hex_1013456 : String := "404244414305060541434005440505400A444143420605060641434206050A0A43050644084143054008424405414305400744050705080542444143054041430506050705414340440541430542050505440541430542404405430507070505404441434240060705420640064405414305060543050641434240444106050A444143070707414342400A07054207400A44070843050740050542400644064142060A064044414342060506064143420A050A0A44414342400607054206400909430542060541434240444109050A444143050805410843050A05424006444108060840440941090A440941094209054305420605430542060544074143420740440505440541430542070505420740444143420705420740440509070741434240440708070542084044410942070541084208054407084305420705440741434207400506070743070743054044050507440541430540424405414305404405424143050905054405424143050905050505424405414305404405424143054009090505440542410A0505050505"
theorem cover_1013456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 399) (hex := hex_1013456)
  decide +kernel
#print axioms cover_1013456

def state_1013856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
def hex_1013856 : String := "4244064106064408414340420608424406414340064406070606440808400642064406410706430806"
theorem cover_1013856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1013856)
  decide +kernel
#print axioms cover_1013856

def state_1013898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 10)))
def hex_1013898 : String := "444143070606414340440641420643400644410606414206434044060A440941080A4006440608420643400644060A060606440741420743404441420743070707414208434044410842070908080842074340440741420743050807074044060807074044064108060707400644064142054340060505064340060706"
theorem cover_1013898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 125) (hex := hex_1013898)
  decide +kernel
#print axioms cover_1013898


end Mub6.Numerical.CircleFullD0.Forest
