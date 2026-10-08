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
def state_2559004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
def hex_2559004 : String := "41444042434441050641400605400642080806064243050543050540424341444042430A06064243070707400A07444042434144060A4408400808080642434107440807084307084042430A410A44080A0A424307070741440640064207064408400808434144060A4440064243070606400A07064243410744404207070507414405074408074307410744080744404243414408400808080808420808404243414440420808420808404243410A05084305054243410744080608434107440705084440080840054208080843414440420806420808404243050505424307080944400808400542080508424341444042080807404207070744084042060806084341444042070707074408404208070708"
theorem cover_2559004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 275) (hex := hex_2559004)
  decide +kernel
#print axioms cover_2559004
end Mub6.Numerical.CircleFullD0.Forest
