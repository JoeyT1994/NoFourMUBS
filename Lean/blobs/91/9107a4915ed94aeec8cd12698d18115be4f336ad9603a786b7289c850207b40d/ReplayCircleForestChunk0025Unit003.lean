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
def state_168334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
def hex_168334 : String := "430740410944434241090641070642410906094307420908414443074240090707074443424041070505054240410944064305420605414443050907440505404109440605414409050543074240410744430508070707"
theorem cover_168334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 87) (hex := hex_168334)
  decide +kernel
#print axioms cover_168334

def state_168421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_168421 : String := "4344444041080808070744434440414206440643070606410806404142070742060A4107420543054440060505444041420643064406090641424306094308080640414209434440094107420643070907094243060943440641400942090A06440909414243444009070709434440410742070707074409094243440640060544064041090641420909054344404142064306440606064108054041074205430541400605054107054440410906414209430809420543050640414209094243060943414009440505060941424307094307094205430540410905054307404142074409064244430A090744430A08084107424443074041094244050544090541070507444307404144090708410744050507"
theorem cover_168421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 275) (hex := hex_168421)
  decide +kernel
#print axioms cover_168421

def state_168696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_168696 : String := "4243440541420A05054406414243400A44050A4044060A444243064140064406420906060642430A41400A44420943094041440609060942090A0A4305414044060A44430542404144060A0505054305420A050543054044060A44060506430544414306440640064206430541440640060505064143054042444305080508420544430541400805050505"
theorem cover_168696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 139) (hex := hex_168696)
  decide +kernel
#print axioms cover_168696
end Mub6.Numerical.CircleFullPrototype.Forest
