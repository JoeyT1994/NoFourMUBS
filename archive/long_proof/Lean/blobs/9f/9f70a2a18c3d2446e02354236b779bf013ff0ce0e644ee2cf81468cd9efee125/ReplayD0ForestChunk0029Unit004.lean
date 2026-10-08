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
def state_1577323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
def hex_1577323 : String := "4142444340410542080541424405430905054244094340084109084005410908094005410542440543400509050543404142440506054208074142444340410542050541424405D005424443090543400841D008400541D0084405430505400541054244050A054340410642080641D0424443400741D008400641D00843400641D007064443070643070606444305054340054106424405060505424443400841424408084409430707084008414208440543050508434007414244080844070708400841420806084443400541090740054105420705430740064106074006410642444340080A0606444305050644094340054142440505054244090707064244434008414208440943070908400841420844054305050843400841424408084443070707084008414208444307400541050743070608444340070940054105094307400741424407060607"
theorem cover_1577323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 333) (hex := hex_1577323)
  decide +kernel
#print axioms cover_1577323

def state_1577659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 50)))
def hex_1577659 : String := "4340414244094309090942440943404106060640410942440608094109060941424406430607094206440643060940414244094309090942440943404109094109420A090A094142440707094244094340410706060A4409430909"
theorem cover_1577659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 91) (hex := hex_1577659)
  decide +kernel
#print axioms cover_1577659


end Mub6.Numerical.CircleFullD0.Forest
