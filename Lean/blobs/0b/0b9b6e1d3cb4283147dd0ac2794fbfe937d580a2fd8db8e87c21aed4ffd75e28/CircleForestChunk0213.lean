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
def state_72480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_72480 : String := "4243084440414308440808430844070808404105430809414308090843444009410842080708444041424308090942430807074108074041090909"
theorem cover_72480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_72480)
  decide +kernel
#print axioms cover_72480

def state_72540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_72540 : String := "4344404441420843404441080508080842084340440508050808080844404308080808"
theorem cover_72540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_72540)
  decide +kernel
#print axioms cover_72540

def state_72576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_72576 : String := "444042444143400909400907434044050905400A05410943400909084441074309070942444107050844070940420809420809"
theorem cover_72576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72576 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_72576)
  decide +kernel
#print axioms cover_72576

def state_72627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
def hex_72627 : String := "444042434441070A084407084309074243080707400908"
theorem cover_72627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_72627)
  decide +kernel
#print axioms cover_72627

def state_72650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_72650 : String := "414243084441430708074143060909434406064441080841060942084344424405080608440708"
theorem cover_72650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72650 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_72650)
  decide +kernel
#print axioms cover_72650

def state_72696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_72696 : String := "41434244094009094440090940410909410909094342440909440940090909"
theorem cover_72696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_72696)
  decide +kernel
#print axioms cover_72696
end Mub6.Numerical.CircleFullPrototype.Forest
