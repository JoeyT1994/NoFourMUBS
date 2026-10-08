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
def state_990407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
def hex_990407 : String := "4043414408424307070608414442400543054142440540050A0505054240430741074405074341064408074144424007060606444240430541440507054341060541440506050542400743064441064206050606400506440542404308440508430844424105050542414043084405424107050543440808444241400543054405060505424140070640084308C64106050808054341440A0644080A41444240430A410A4244050A050A0542404306410644424043060A06060606064442400543050A0542404344084241060806444241404305440542410505050A050542414043064442410640050606060640430844054142400843060A0505430A440A410609410605430A440A064043050506"
theorem cover_990407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990407 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 271) (hex := hex_990407)
  decide +kernel
#print axioms cover_990407

def state_990681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_990681 : String := "44410742434044080744410508054044410706074441420543054007054243050543084008440805410505434007440807400744414243070707080707"
theorem cover_990681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_990681)
  decide +kernel
#print axioms cover_990681


end Mub6.Numerical.CircleFullD0.Forest
