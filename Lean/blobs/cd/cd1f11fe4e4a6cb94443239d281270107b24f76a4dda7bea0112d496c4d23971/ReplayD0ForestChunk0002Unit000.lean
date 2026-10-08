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
def state_947772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
def hex_947772 : String := "40424106444306060606424144434006420806404209064241084443080908410A4443400608404209064208080606444340060540424144430609064443054205050941444306400642410605060644050642414443054009420505084405430540090541444305404241440505050505084405054306400642080841444306400642410644430640060A060606444306400642414405060541060506"
theorem cover_947772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 157) (hex := hex_947772)
  decide +kernel
#print axioms cover_947772

def state_947930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
def hex_947930 : String := "4241094443420940064109090909414443060906444340064241060606404209064209414443060506440A0606"
theorem cover_947930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_947930)
  decide +kernel
#print axioms cover_947930

def state_947976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
def hex_947976 : String := "41444340094209410944434009420941084407080909090944434042094144434009420941090909094443400A420A41440509050A094241094443400905070941444340420941444305090944050942410707414407084405054009420741070743400908094443404205050540420941440A090A4207410705434042094109440506420841080509400942094109444340090606094340090909"
theorem cover_947976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 155) (hex := hex_947976)
  decide +kernel
#print axioms cover_947976

def state_948132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
def hex_948132 : String := "444340424106444306090606424144430A40090A0A444340424106444306400609060642410A4443054042070707080A4042094109444340064209060909424109440707410A44434042070A07070A430609410A444340060A404241064443064006424106444306070606060642410A44430A40424107070A0A0A0A0A40420941054443400642090605054241054443400942074107440707050941444340050A05054443404241094443400942094109444340060707090509414443060505444340064241064443064006070606404205410506424105094105444340064207070505430605424144070544434042074107070707430A05410A44434042410A44070A0A0A404207410A440707070A4005420541054407054340090A05430609"
theorem cover_948132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 289) (hex := hex_948132)
  decide +kernel
#print axioms cover_948132


end Mub6.Numerical.CircleFullD0.Forest
