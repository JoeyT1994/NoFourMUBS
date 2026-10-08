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
def state_2559279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2559279 : String := "424341440506064144054042050505440A06434144050744404243050543050505404206070641440507444042080805404243070843070707"
theorem cover_2559279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559279 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2559279)
  decide +kernel
#print axioms cover_2559279

def state_2559336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_2559336 : String := "40424341444042064306410744400A060606060641444042434144090606414409400A064409400906434144400A07074440420A0A420607400A0641444042430A0A0A420707400A0744404243410A0508430A084243070843070840420505420607420643070740424306410606430A0A06444042430609434144400506060641444005420808400506440505064042060506434144404243070A0A07400A07444042430641444005060505430A410A05420607400A064144404243410A44400A070A4144400A0707444042430A080A420707400507430A41094440060709420707400A07444042434144400542430607070505414440054208080505434144400507050541444005080505424341070641440707440806430741074408074005420607420643074107440706"
theorem cover_2559336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559336 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 301) (hex := hex_2559336)
  decide +kernel
#print axioms cover_2559336

def state_2559637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 24)))
def hex_2559637 : String := "4341444043074207070707444043420808424144404307424441074009070707070744404342E20942E20943074207074043084241074440090707070709430707404308424107444009070707074144404243444105400605074406410640060709420505404243074107090707444042434144404243440609060642430707074042430709090744404243E24106440640064243090809430906424341074440E207074144400605074440420808420505404243070807074307094042434109444009090941094440090909094243070707414406400642430707074440064208064042434109440809060642434107440807080943090942434107444042070705074107444042080805074307094042434109444009070941094440090909094243070707"
theorem cover_2559637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559637 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 295) (hex := hex_2559637)
  decide +kernel
#print axioms cover_2559637

def state_2559932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 25)))
def hex_2559932 : String := "424341400806064140444243070A0A0A0740444206430A410A4440050605060643410740080641400907400907"
theorem cover_2559932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_2559932)
  decide +kernel
#print axioms cover_2559932

def state_2559977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_2559977 : String := "414442050507444243404107060640410744420505060743074041070707420607"
theorem cover_2559977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2559977)
  decide +kernel
#print axioms cover_2559977

def state_2560012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
def hex_2560012 : String := "44424344054041054243440541050744054105404243050506054344410506074405410506054405404105424344054105400605050605434405404105060506424340410A4442430741074407070A0A41070740414442050A0A4442434144050744404243070A060707414405400A054440060540420A0607434107440607410606420A0A41440507444205070743400A0740410A09410707"
theorem cover_2560012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 153) (hex := hex_2560012)
  decide +kernel
#print axioms cover_2560012


end Mub6.Numerical.CircleFullD0.Forest
