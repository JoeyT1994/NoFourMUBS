import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1007203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 20)))
def hex_1007203 : String := "4340430841420608064341420505054142090942050540064341090606"
theorem cover_1007203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 29) (hex := hex_1007203)
  decide +kernel
#print axioms cover_1007203

def state_1007234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
def hex_1007234 : String := "44434107054142090742060543074107420A05"
theorem cover_1007234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1007234)
  decide +kernel
#print axioms cover_1007234

def state_1007253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
def hex_1007253 : String := "4443414209050541420909424006440543054106050543414240070907054142090742400A4443054109054341070541090A400505"
theorem cover_1007253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007253 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1007253)
  decide +kernel
#print axioms cover_1007253

def state_1007307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
def hex_1007307 : String := "44434142060706064341070A410706"
theorem cover_1007307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1007307)
  decide +kernel
#print axioms cover_1007307

def state_1007322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
def hex_1007322 : String := "44434142090942064044050944090941090643414209074240064443410906060A400744430909074142090742064007440907"
theorem cover_1007322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1007322)
  decide +kernel
#print axioms cover_1007322

def state_1007373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 10)))
def hex_1007373 : String := "44430840080943400742444305090707400742444309090707"
theorem cover_1007373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007373 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1007373)
  decide +kernel
#print axioms cover_1007373

def state_1007399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
def hex_1007399 : String := "4244430909434041094409090A400941080A44090A"
theorem cover_1007399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007399 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1007399)
  decide +kernel
#print axioms cover_1007399

def state_1007422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 20)))
def hex_1007422 : String := "434043414205050541420909050A40434109424405400607094109420609430A410907"
theorem cover_1007422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1007422)
  decide +kernel
#print axioms cover_1007422
end Mub6.Numerical.CircleFullD0.Forest
