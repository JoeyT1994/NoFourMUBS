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
def state_283088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
def hex_283088 : String := "44404305444142054440050505420744400743050707054344414240050940050542090905444142404443054142444005410507054440054105430542094440050505054207440905054443410A09414240440A0A0A4044410A430942090A0A0A4209404409074409410606430541420A0A0740444305414244400541054205050505424440410507414243054408050608054408050544434106064142404441060605060642404441060641060606064305414205054240050606424007440907404443084207410808430507444306424140440606060606434209064207064142400543050505420540054305074005430507"
theorem cover_283088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 245) (hex := hex_283088)
  decide +kernel
#print axioms cover_283088

def state_283335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
def hex_283335 : String := "44414243444007414305420644060507074440060A0743444041420543050942070A414243054440050905094243070A43440A050A400541050744400A41090A4041080741090A42074344400742070A070A07"
theorem cover_283335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 83) (hex := hex_283335)
  decide +kernel
#print axioms cover_283335
end Mub6.Numerical.CircleFullPrototype.Forest
