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
def state_1502469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 58)))
def hex_1502469 : String := "44414240434407074407410707090742404344054107074405410705430705074142090742404341094442090709414442090709444205074209070907"
theorem cover_1502469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1502469)
  decide +kernel
#print axioms cover_1502469

def state_1502530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 58)))
def hex_1502530 : String := "44414240434405410607440506430905074205074142060A4240434144420507064405420507410605064043070707"
theorem cover_1502530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1502530)
  decide +kernel
#print axioms cover_1502530

def state_1502577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
def hex_1502577 : String := "43444109420507410942060744414205074205054106420607"
theorem cover_1502577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 25) (hex := hex_1502577)
  decide +kernel
#print axioms cover_1502577

def state_1502602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 59)))
def hex_1502602 : String := "41064206404344410A42400A060A0A4441064206400A060606"
theorem cover_1502602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1502602)
  decide +kernel
#print axioms cover_1502602

def state_1502627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 29)))
def hex_1502627 : String := "4441420640430606064205404344414205070541064205404307070744054106054344410605060641064206404344410642064043060606060606"
theorem cover_1502627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1502627)
  decide +kernel
#print axioms cover_1502627

def state_1502686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1502686 : String := "43444106420640430906060606"
theorem cover_1502686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1502686)
  decide +kernel
#print axioms cover_1502686
end Mub6.Numerical.CircleFullD0.Forest
