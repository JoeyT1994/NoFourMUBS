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
def state_1636458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 18)))
def hex_1636458 : String := "4244400609400641090906"
theorem cover_1636458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1636458)
  decide +kernel
#print axioms cover_1636458

def state_1636474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
def hex_1636474 : String := "41434408420808084344424008434108440707084007430708424009430941080A4007074408420808"
theorem cover_1636474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1636474)
  decide +kernel
#print axioms cover_1636474

def state_1636516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 100) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
def hex_1636516 : String := "43444208084206400806440808"
theorem cover_1636516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1636516)
  decide +kernel
#print axioms cover_1636516

def state_1636530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 101) else (if j.val < 3 then 56 else (if j.val < 4 then 100 else 38)))
def hex_1636530 : String := "444240434108440805084305410605404307084341420507054108420508424043410605410844080505404307410844080743054144060505"
theorem cover_1636530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 57) (hex := hex_1636530)
  decide +kernel
#print axioms cover_1636530

def state_1636587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 101) else (if j.val < 3 then 56 else (if j.val < 4 then 101 else 38)))
def hex_1636587 : String := "4442084008084240084106430508400841084344080508"
theorem cover_1636587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1636587)
  decide +kernel
#print axioms cover_1636587

def state_1636611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 39)))
def hex_1636611 : String := "414309424408084408084309420A0A"
theorem cover_1636611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1636611)
  decide +kernel
#print axioms cover_1636611

def state_1636627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 100) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 39)))
def hex_1636627 : String := "434206444009060642444008060644400806400806"
theorem cover_1636627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 21) (hex := hex_1636627)
  decide +kernel
#print axioms cover_1636627

def state_1636648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 101) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 39)))
def hex_1636648 : String := "434244404305410605050544404305410905050542444041080A064041060A05444041080A41430608430542050840410A0A410605"
theorem cover_1636648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636648 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1636648)
  decide +kernel
#print axioms cover_1636648

def state_1636703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
def hex_1636703 : String := "4143070543074244060806"
theorem cover_1636703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1636703)
  decide +kernel
#print axioms cover_1636703
end Mub6.Numerical.CircleFullD0.Forest
