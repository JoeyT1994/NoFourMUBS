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
def state_45486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_45486 : String := "4344404142080A42060A41420843070742054305440540080508444340414244060644074308424406064407084206440A06414244050807424405064407434006074041420607064107054041424409430609444307094342444006074006410806444041070A0740410506410743084206440708424409400909444009094041054342060505414342090505434209440940054105430605094244050644434142060706094341420644060606414206440940430609430609420644060641424405434044070607094407434042070707404209440741430709430709420707424405430505444305054340414206440743064206070641070540414209440743424406064407400607420944094009094205440543064109054142054405430740090505434440410806410842064308444006080840410842060808444041420643444206400508084442404105064108064005410543424406050505424005080542064306444142064006430642064105060606414208430844404241084308094108430842404409050840054441050905420808084206434440064108064006084440414206434206400641080642400641440906064041440905064144434209400907094308420808444306090606414243060A434042084108440706084042410A064144430709084443404205070509430840420641080608420A41084405084205430640060540414206430844420640050808064142060806404142080542064344064108064441420605064105064108420643440808444041080641084206430644060840410842060708"
theorem cover_45486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 595) (hex := hex_45486)
  decide +kernel
#print axioms cover_45486

def state_46082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_46082 : String := "440A42444008080808"
theorem cover_46082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_46082)
  decide +kernel
#print axioms cover_46082

def state_46092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_46092 : String := "4243400A4107440742430A400A070A4041440743424407400541050A0A42444041050A0740054105434442070505054440050705440A430A424144400A430A09400A430A44414209050A41054240050905440A0A0A4144074307424044074107430744074005070707440743424041070A07400A0742404144074344074041070A07444041074209070740414209054243440941090609430A44090A41074243070907444307084341440A400A4206070A414440080740424306080A4243414405060509430A414407400807084408400A420508410744054307404107050540414407430A4244074005070A44070A0743400A4144070A0A4041440A050A414407424307404406050643400A07400506440742430A400A41074407430742070A430A400A414406060A"
theorem cover_46092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 297) (hex := hex_46092)
  decide +kernel
#print axioms cover_46092

def state_46391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_46391 : String := "44400A410842430844400A08080A400A08"
theorem cover_46391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_46391)
  decide +kernel
#print axioms cover_46391

def state_46410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_46410 : String := "4105430A42444105400743064142060506410507440A05"
theorem cover_46410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_46410)
  decide +kernel
#print axioms cover_46410

def state_46434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_46434 : String := "430842444005410643074042080507084440050605"
theorem cover_46434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_46434)
  decide +kernel
#print axioms cover_46434

def state_46456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_46456 : String := "424440414308400A41084206080A410843400A08404142060A06410742050A404108060844400A41070A400A08"
theorem cover_46456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_46456)
  decide +kernel
#print axioms cover_46456
end Mub6.Numerical.CircleFullPrototype.Forest
