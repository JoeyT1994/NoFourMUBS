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
def state_1340432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
def hex_1340432 : String := "4142444005434105424405400543410544054240050605050505400543414442400543414405054405420A050505420605444240054341444240054341440542070544420605420805050542400543410A4442080508050544424005434144060806050542400543080540054344054105070505054240054344414240050A05420840054307054106080505050542444005434142440A4005434144064206050605050A0540054344414240054344414208400543440607050841420840054307050805400543440A070542080741424005430805400543070542080705440A40054342440A070705"
theorem cover_1340432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340432 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 233) (hex := hex_1340432)
  decide +kernel
#print axioms cover_1340432

def state_1340666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
def hex_1340666 : String := "4142444043094109424406404309090609094043414405050541444240430A410A44420A090A0909420A4006094442404341440505054144424043094109090909420A0944420609424008054043070909430509094240430544410A4208400707410A08054043074441090707094305410905094244404306414206090606404305444142404305440641420607060540070942060741424007050707054409400709"
theorem cover_1340666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 163) (hex := hex_1340666)
  decide +kernel
#print axioms cover_1340666


end Mub6.Numerical.CircleFullD0.Forest
