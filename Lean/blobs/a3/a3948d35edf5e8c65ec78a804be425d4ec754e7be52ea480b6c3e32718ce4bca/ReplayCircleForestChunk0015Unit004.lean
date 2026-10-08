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
def state_76682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_76682 : String := "4142434441434009424405090606434042050505404244060A44060906414344400A4208060A0A4344404208430509050844400A420A090A44060A434406414243440640410843080A0644060A43060642434440430541420505050540430544414205050508054440410609064044410A42074305090A44060A434406404243054405050605440640424406410643050A0606440641064244060A44064043420A060606424344430540414205050505434405054440070507444041420706070644070743444243054041060505064243054440410905054007054344050544404106050540414244050544050505054442060642444009064007410A07444041060806404143424409074406400706420908074106430509"
theorem cover_76682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 281) (hex := hex_76682)
  decide +kernel
#print axioms cover_76682
end Mub6.Numerical.CircleFullPrototype.Forest
