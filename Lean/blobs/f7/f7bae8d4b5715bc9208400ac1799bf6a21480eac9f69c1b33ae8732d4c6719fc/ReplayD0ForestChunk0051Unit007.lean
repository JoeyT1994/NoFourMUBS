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
def state_2576416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2576416 : String := "4041424344404406080608444006070A4344400642060608444042060642434406080643064406064008420A0842434440410944424309074309404107444207430906074106070909094440410743440707074106070743444041420906424443094041064406090609440608090944404106424344064041060507060641064243440607060640410805094142430944060743440608444243094407074309444041420743090742060909404107060942090842434409074407074309444142060942060609"
theorem cover_2576416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 199) (hex := hex_2576416)
  decide +kernel
#print axioms cover_2576416

def state_2576619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2576619 : String := "4344404341084206440806080840060708"
theorem cover_2576619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576619 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2576619)
  decide +kernel
#print axioms cover_2576619

def state_2576640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_2576640 : String := "43414440430908080A444043420609420809434208410A44434006054009084306084208410844080840430609434206410806084108444042084309050808"
theorem cover_2576640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576640 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2576640)
  decide +kernel
#print axioms cover_2576640

def state_2576705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_2576705 : String := "444042430909430A05420A430A0640420943090542430A0843440A0A440909"
theorem cover_2576705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 31) (hex := hex_2576705)
  decide +kernel
#print axioms cover_2576705

def state_2576738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
def hex_2576738 : String := "42434144400943090909444009434206090909410909434144074005420905444005424307050540054243410909050505"
theorem cover_2576738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2576738)
  decide +kernel
#print axioms cover_2576738

def state_2576788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 8)))
def hex_2576788 : String := "434144430A0A43400A0A0A444340424109064144074340070709440743400607400942090742410544430540420541050505430540090541444307420A0743420507420A400707444307424007050743420507424041090905400741070740420941444309090944434007420907090942410A4443400942054105054009084340090808414443420A07420A0643420A404107070A420840090644434240410709414407430542050744074307420807400707424009414406084443420907420806434208090840410707410607434240094108444342054007050808404109440709414407430742080744074342400705074209074240090840094144060844434209074208064342084007070843404206414409094443060906424105440505414443420505420A40410909410505434205054208400905444342054041440505060542400905404109094144050544430542050743054205400905434205400605424006054009410844430508064042094109094241080841444342084009084208400908084443424009084009414443420540070508084443420840070742080908420840094108084342084009080841444042090942084306064009084440420943410905054243410808084341444243060606420843060644424340094106084005084340050605424309084340094106440808054108054042090942084341084442084309080808"
theorem cover_2576788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 527) (hex := hex_2576788)
  decide +kernel
#print axioms cover_2576788


end Mub6.Numerical.CircleFullD0.Forest
