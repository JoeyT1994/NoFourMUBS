import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_50422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 13)))
def hex_50422 : String := "4344400A080A444041424344080A050542434441400A08090A4441400542430805050741400542430A44050505400A42430907090941424308440808084243094440410809084041424309440840410542430907050809090909400A414243400A074041420705424443400A07400541054244050505060A4107424408060643060642430940414244430A404142440505054244430A41050A0A0A414244430840050843070644050542444309404144050509094309400A4142910609090A0A42444309400A090A09414244430941404244080709080943074106404409060709424409090909"
theorem cover_50422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 231) (hex := hex_50422)
  decide +kernel
#print axioms cover_50422

def state_50653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_50653 : String := "43400A410742070740410A420A0A414207064244430A40414442070A07084107444243054008054307400A4107440505070744430A400A41060A06"
theorem cover_50653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_50653)
  decide +kernel
#print axioms cover_50653

def state_50712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_50712 : String := "434409420606444243094440054105430944424005080509400A4143060509430944050606"
theorem cover_50712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_50712)
  decide +kernel
#print axioms cover_50712

def state_50749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_50749 : String := "424344094140420509050544414344404206090940424143090A0609094440420643060742064309444140064206070641400709074042434144060A06414406080643410A44060A41444207070A44070A42434144400605400A0505414440064205430644064006054042430608430A4008414442060A0808420543054041444205430540060542050A05054406400605430941444042430907090940420A09424309404241440909090909094440070940420A0909434406404205090544064042064143060706420541430944064007094305064143404244410A050544410A43090A0A420544090540420844430A080842444341400A0505414008444205430540080505400805084443410A0941400A42440A080A400842440505090A43404205444143050A0505054042084441430A08430A070842054441430540080505054309444142430944400709090942430944074007090941424309400A44090A0642430940440A0A44090A430909"
theorem cover_50749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 21) (count := 367) (hex := hex_50749)
  decide +kernel
#print axioms cover_50749

def state_51116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_51116 : String := "41424344084007054440430844410842080841424307400808084243404408410705054044084142430741074007054307410740440807074205430541404408070505084308404441080941424307410742080806424309414240440807080909090843084408410808404307414207064244430740410744420543054107050541070507444340070640410642444307410644090606064106420706064307410742054440430506050543094440424308440809090840060642430944404143094442050942050943054405054143054405054309054041430542054443094041424405050909094305400A0505054309440940410909410909"
theorem cover_51116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 251) (hex := hex_51116)
  decide +kernel
#print axioms cover_51116


end Mub6.Numerical.CircleFullPrototype.Forest
