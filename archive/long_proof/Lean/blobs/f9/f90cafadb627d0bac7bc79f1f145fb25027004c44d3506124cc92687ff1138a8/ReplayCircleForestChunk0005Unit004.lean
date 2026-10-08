import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_18077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_18077 : String := "4344424041430A07070A4041430A4407420A0A430A44070A0A424440414342050A05434244074007050A42070A41054342050A05404105434244400605060942050A05444041430A420A440A0A430A420A440A0A410A0A4041430A0A430A0A0A4442074340414407070741090708420543444041054208434407404105080508050505"
theorem cover_18077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 131) (hex := hex_18077)
  decide +kernel
#print axioms cover_18077
end Mub6.Numerical.CircleFullPrototype.Forest
