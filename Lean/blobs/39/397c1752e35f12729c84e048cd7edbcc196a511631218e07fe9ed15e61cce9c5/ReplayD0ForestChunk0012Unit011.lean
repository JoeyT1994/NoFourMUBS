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
def state_1305327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 22)))
def hex_1305327 : String := "40424144430540424144430540B842414405430540B80505414405430540B805054306404244B841060844B807424441430540B84205440505430540B805410609444107430540080507444305404241B8050A054305400842090841444307404241070A070A07440A0842054144054305404244050707050543064042444106080608424441060509444107050744430540424144050805080509414443074042410708070A07440A0805"
theorem cover_1305327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305327 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 171) (hex := hex_1305327)
  decide +kernel
#print axioms cover_1305327
end Mub6.Numerical.CircleFullD0.Forest
