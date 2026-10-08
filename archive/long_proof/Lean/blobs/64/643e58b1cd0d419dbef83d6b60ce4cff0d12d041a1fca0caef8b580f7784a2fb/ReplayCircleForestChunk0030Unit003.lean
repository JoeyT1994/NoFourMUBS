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
def state_272560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
def hex_272560 : String := "4440414243444007050644050A43440606440842060742430705430707414243060543064405064243054440054105060543440540070A440540070540414243440A06064344064206054406064243440A410609444106430A050643440706064142430A440640060A4344404206060A40424143440605440640050943060641054305440605420A4143440740050A440A40050A4344074005070A4440060A40424341440640060A0606434144420605424005430541080605064144064206080642430A0A4341440840420A0808440A0A41440808440A40420606084243440A40410642094307060A440A0643440740414206060741420A07074440064106064041060641420A4344060A064206430706"
theorem cover_272560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 273) (hex := hex_272560)
  decide +kernel
#print axioms cover_272560

def state_272835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_272835 : String := "4142430544404142050505050843440542434405094405094344090909440A42440908094243444105430540054244410508050505444105400542434406050505414405054440050505434405414205430505054441420505424005050541094244090909"
theorem cover_272835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 101) (hex := hex_272835)
  decide +kernel
#print axioms cover_272835

def state_272937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_272937 : String := "424344400543054105424440050A0505054440054105420805404405054441050505434405404205430505054440420505424105050540094244090609"
theorem cover_272937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_272937)
  decide +kernel
#print axioms cover_272937
end Mub6.Numerical.CircleFullPrototype.Forest
