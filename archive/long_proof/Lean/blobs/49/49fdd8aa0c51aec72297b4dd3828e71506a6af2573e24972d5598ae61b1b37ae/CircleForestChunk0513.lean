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
def state_284650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 97)))
def hex_284650 : String := "404109434244404306410606064006060642444041094342070609410943060909094143060943064244060606"
theorem cover_284650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284650 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_284650)
  decide +kernel
#print axioms cover_284650

def state_284695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 48)))
def hex_284695 : String := "4440090609"
theorem cover_284695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_284695)
  decide +kernel
#print axioms cover_284695

def state_284700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 49)))
def hex_284700 : String := "41430A0943424005060642404441094342070609054441094306090809"
theorem cover_284700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_284700)
  decide +kernel
#print axioms cover_284700

def state_284729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
def hex_284729 : String := "444107430642404405060506410A4306420606"
theorem cover_284729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_284729)
  decide +kernel
#print axioms cover_284729

def state_284748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 24)))
def hex_284748 : String := "40444109424344404109434244054009050905054009090909094441074205074108420809"
theorem cover_284748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 37) (hex := hex_284748)
  decide +kernel
#print axioms cover_284748

def state_284785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 24)))
def hex_284785 : String := "4340090609"
theorem cover_284785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_284785)
  decide +kernel
#print axioms cover_284785

def state_284795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 48)))
def hex_284795 : String := "41424440060606064244060606"
theorem cover_284795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_284795)
  decide +kernel
#print axioms cover_284795

def state_284811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
def hex_284811 : String := "4043414244404306050540430641060606064244050606414244054043414205050505054405400A050505"
theorem cover_284811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_284811)
  decide +kernel
#print axioms cover_284811

def state_284854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 97)))
def hex_284854 : String := "404341424440060606060741424440074306050744404306090640070642074440070507430641424405060605"
theorem cover_284854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_284854)
  decide +kernel
#print axioms cover_284854
end Mub6.Numerical.CircleFullPrototype.Forest
