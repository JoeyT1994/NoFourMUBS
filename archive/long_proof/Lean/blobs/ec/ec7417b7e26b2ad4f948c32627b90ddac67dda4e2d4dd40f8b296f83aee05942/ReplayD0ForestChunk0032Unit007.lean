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
def state_1608886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1608886 : String := "41444008420843444140054243440541050805054008420843440541050805414042080542434441400542080508414007424344414007090841070708434441050707064007420843440807064408410606434405060640084208434441400542080508410707064441050806404208064243414440084208434408090840070944080841440808084341444006424344414006420706400642070707060607444006424341440707080806070644084008420843414440064208070744080706"
theorem cover_1608886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 193) (hex := hex_1608886)
  decide +kernel
#print axioms cover_1608886

def state_1609079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1609079 : String := "434140074205074007054140074209074007420507"
theorem cover_1609079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_1609079)
  decide +kernel
#print axioms cover_1609079

def state_1609104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1609104 : String := "4042440605444143064406404206430641440640420641060606060606414305404205444341060541444042054108430544060505050505050506"
theorem cover_1609104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 59) (hex := hex_1609104)
  decide +kernel
#print axioms cover_1609104


end Mub6.Numerical.CircleFullD0.Forest
