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
def state_2331477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2331477 : String := "42434440430605060644400544414205434005444142050605050505050543444042434441434406064408400806064143400606050644414440084208080508054344084142434008440706080808440808424344060644414044420643060806060606434407414042430706070708444140424407070706064140424306050707064042054341444243400506054340414408420508084107084005410705420543400506054442050805054243060543414440420607070644060641444042050706060644404205440805424441434044420508054442414306400506064107064205410705400544420508054340050605054441434008070843080841434008070808400505"
theorem cover_2331477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 265) (hex := hex_2331477)
  decide +kernel
#print axioms cover_2331477

def state_2331744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2331744 : String := "40414243440905050909414243444041420909094142430844090808424308090840414205440805054142440805080844400941424309050909400541420543440805050543440940414409050541440842084340050840050808440940094143440842050909054243440908440940080509"
theorem cover_2331744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 115) (hex := hex_2331744)
  decide +kernel
#print axioms cover_2331744
end Mub6.Numerical.CircleFullD0.Forest
