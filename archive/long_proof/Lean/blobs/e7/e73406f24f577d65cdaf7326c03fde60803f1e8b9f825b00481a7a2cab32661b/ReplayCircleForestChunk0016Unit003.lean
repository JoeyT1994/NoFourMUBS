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
def state_134315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_134315 : String := "4344404143440642080644084208400841430608084308084143064406420806430608400941430A420A4440414307420A440607090A090944084041424344080908434440094142084344080908080944084006410606420843090841424344080A08434440414208434408400941050908084142054344050544050508404142094307444009050909414205430A050A440840414205434440080506064208430906414205430505420843440809084208434408094408400808"
theorem cover_134315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 187) (hex := hex_134315)
  decide +kernel
#print axioms cover_134315

def state_134503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
def hex_134503 : String := "44404142430644064041424306440640070643050A42430508054106064305440542400506054243054405414005060505414206064206064041424307444041070941074209070707420905414243074440410742430644060907410706070742430A4440414209430644050909410606094307444005064005410705"
theorem cover_134503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 125) (hex := hex_134503)
  decide +kernel
#print axioms cover_134503

def state_134629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_134629 : String := "40414244084340410A084142080A08080A420805414244084340414208440643060A084142060606084409434042410A440643050A0A4206060A42084408434005064005410A05"
theorem cover_134629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 71) (hex := hex_134629)
  decide +kernel
#print axioms cover_134629

def state_134701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_134701 : String := "4142434440414243090A0A4209430505414243444041070841070807440840410A09414243070807420843070843070A4243440809440809434440054142430508050509440A4009410A094009414209070944400A410A42080A4006414206064206430906434442400A41074305050A42400707070A424344414009420843050509094441400808080943440505440505"
theorem cover_134701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 145) (hex := hex_134701)
  decide +kernel
#print axioms cover_134701
end Mub6.Numerical.CircleFullPrototype.Forest
