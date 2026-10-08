import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1627373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 18)))
def hex_1627373 : String := "42404443060706064044434108420A090843090A44434106420640440806064108420808430641064206400806"
theorem cover_1627373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1627373)
  decide +kernel
#print axioms cover_1627373

def state_1627419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 49 else 18)))
def hex_1627419 : String := "400A444341064205050706"
theorem cover_1627419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1627419)
  decide +kernel
#print axioms cover_1627419

def state_1627431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 18)))
def hex_1627431 : String := "4443410A0A0A0A"
theorem cover_1627431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1627431)
  decide +kernel
#print axioms cover_1627431

def state_1627438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 18)))
def hex_1627438 : String := "44434142400A06404443410A0A0A0A444306410642050A0642400A05400A4443050A054142400A07400A44080A420A0A43414206400905420505410A0A"
theorem cover_1627438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1627438)
  decide +kernel
#print axioms cover_1627438

def state_1627499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 19)))
def hex_1627499 : String := "43410609414206400906420A40094443050A05"
theorem cover_1627499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1627499)
  decide +kernel
#print axioms cover_1627499

def state_1627519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
def hex_1627519 : String := "44430941400944420905094009440A0909"
theorem cover_1627519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1627519)
  decide +kernel
#print axioms cover_1627519

def state_1627539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
def hex_1627539 : String := "4009444243074140090640094442060742060707420907"
theorem cover_1627539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1627539)
  decide +kernel
#print axioms cover_1627539

def state_1627562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
def hex_1627562 : String := "40444209070944424341070541404442090709444243054106050742050740444209070944420505050742430541090507"
theorem cover_1627562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1627562)
  decide +kernel
#print axioms cover_1627562

def state_1627613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_1627613 : String := "44424341084009444208070908430705420909"
theorem cover_1627613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1627613)
  decide +kernel
#print axioms cover_1627613
end Mub6.Numerical.CircleFullD0.Forest
