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
def state_2317883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_2317883 : String := "444009424306414407400942060606094042434409414344094008064409400842060606440941444009424309090940084243410806084308084409084309440941424409080908424344060644414042430944090909424306440606430544050640090641404442430641400944060606430641400944090906424306414440414206080606400806064306414440090607064442060606064306444140094243050905064140424409430607090606"
theorem cover_2317883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 177) (hex := hex_2317883)
  decide +kernel
#print axioms cover_2317883

def state_2318061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_2318061 : String := "404207094241434407404207094207410843060707074143440940090944074042070942414407430808070A430907"
theorem cover_2318061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2318061)
  decide +kernel
#print axioms cover_2318061

def state_2318109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2318109 : String := "42444143400942440741430907070907074143444042080842414344090808430805410A0940054205084440074205080543444007090505444143090A090A"
theorem cover_2318109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2318109)
  decide +kernel
#print axioms cover_2318109

def state_2318176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
def hex_2318176 : String := "4042444143090707414340094409094044070944074143420709420709094309074409414309400942440909090942444143404143050807054007410807430607414340444143050906414306420909064405064044414342070907074143424009440941050640094405410506420740440941430909094441050941430542400705054309094309420709444143054205054306074143420505420A4044054105430542050505430642064044060606430640440709440606444143400905404241430507070942080843060941434042440509094205054042444143050909414340090540094405424105090509440941430540090509424441054305084105430640090644054105430540090543064009420606"
theorem cover_2318176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 279) (hex := hex_2318176)
  decide +kernel
#print axioms cover_2318176

def state_2318456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
def hex_2318456 : String := "42074407414340420709424407414340094409094006440606074409410A094007420744074106074340070907"
theorem cover_2318456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_2318456)
  decide +kernel
#print axioms cover_2318456

def state_2318502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 10)))
def hex_2318502 : String := "4407414340440741420743404407414207430707074407414207434044050905400744054105070707074441420743400705070741420A43404441050741420A05420743404405050540070A44050A404407414207434044050A0507070A42074340070A07400744074142074340070A070707"
theorem cover_2318502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 115) (hex := hex_2318502)
  decide +kernel
#print axioms cover_2318502

def state_2318618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 20)))
def hex_2318618 : String := "4143404207414407430907074208084007420741080707"
theorem cover_2318618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318618 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2318618)
  decide +kernel
#print axioms cover_2318618


end Mub6.Numerical.CircleFullD0.Forest
