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
def state_1512592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1512592 : String := "4342440A400A0A44404143420A44064006080A0A0A40414342440A40414305070741434206050A0A44404143050909414308420A0808400541050542440A40070A444041430909090A4041434205054207094309094143420A05420A440A050A43420A440940050A0A4143420A440840414305420A050808420A440A4041430A0A0A0A0A420A440A404143420A440A404143420709070A0A0A0A0A"
theorem cover_1512592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 155) (hex := hex_1512592)
  decide +kernel
#print axioms cover_1512592

def state_1512747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1512747 : String := "414342064440414342060842064405060A410608404106430606064206440A0643420A440A4140430A0A060A0A"
theorem cover_1512747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1512747)
  decide +kernel
#print axioms cover_1512747

def state_1512792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
def hex_1512792 : String := "4041434206444041430506430542060506064206444041064342064440080606060606434244404107070606444041434205054207444005410543054205050543424440050A0505420744404105050A054143420605420644404106430506060643420A44410505054206440A064005064206444041434206444041070741060A40070608434207440A070741060A4041060706410643420644060606"
theorem cover_1512792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 157) (hex := hex_1512792)
  decide +kernel
#print axioms cover_1512792

def state_1512949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 15)))
def hex_1512949 : String := "4440414205434405400806054205430A05414205050540410642064344400806060606"
theorem cover_1512949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512949 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1512949)
  decide +kernel
#print axioms cover_1512949

def state_1512990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 30)))
def hex_1512990 : String := "44404143424408404105060807424440414306090641430742440707070840414342880542444009414307070940410909414305424409050543090944060543424406400541050606420906414342880742444041070707404143070743074244070707410707074308424440410908084041430742090743080941070807440640060743084244400608404143060906414308424408400908080806414308424408404143074244070707080807084041430542444041054305424440054105090505414305424440410505410643050605054342050542444041430542444005410507050543054244090505414307420607430842444007060607054440050705050543424440050805054244404143054244090505430909414342440805054244404143090909414308420A070840410505414305420505430542440A05054408054308424440090840094143050A0808400541050544400508054143424408050542444041434244070505420607430842444041070806060741060840050644070543084244404143084244084041430506080607080840414305420605430542444041050806050541060808"
theorem cover_1512990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 433) (hex := hex_1512990)
  decide +kernel
#print axioms cover_1512990


end Mub6.Numerical.CircleFullD0.Forest
