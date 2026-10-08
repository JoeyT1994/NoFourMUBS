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
def state_2575335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 18)))
def hex_2575335 : String := "42054305404144064205430506444205430506420543054041440542050644420506DC0505"
theorem cover_2575335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_2575335)
  decide +kernel
#print axioms cover_2575335

def state_2575373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 46 else (if j.val < 4 then 23 else 19)))
def hex_2575373 : String := "43054044050505"
theorem cover_2575373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2575373)
  decide +kernel
#print axioms cover_2575373

def state_2575381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 46 else 19)))
def hex_2575381 : String := "4044050505"
theorem cover_2575381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2575381)
  decide +kernel
#print axioms cover_2575381

def state_2575387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 19)))
def hex_2575387 : String := "444142054305400A0542054305404441420543050ADC414205430508DC0541424305084340440505054007084243050843404405050540444107070708"
theorem cover_2575387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2575387)
  decide +kernel
#print axioms cover_2575387

def state_2575448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 19)))
def hex_2575448 : String := "440505"
theorem cover_2575448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2575448)
  decide +kernel
#print axioms cover_2575448

def state_2575453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 23 else 18)))
def hex_2575453 : String := "43054041050505"
theorem cover_2575453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2575453)
  decide +kernel
#print axioms cover_2575453

def state_2575461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 46 else 18)))
def hex_2575461 : String := "4041050505"
theorem cover_2575461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2575461)
  decide +kernel
#print axioms cover_2575461

def state_2575466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
def hex_2575466 : String := "4041444205430540070542054305404144420507DC44420507DC05444243054041050505430740070742430540410505054309404144090A0A09410505"
theorem cover_2575466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2575466)
  decide +kernel
#print axioms cover_2575466

def state_2575528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 23 else 19)))
def hex_2575528 : String := "430540414405050605"
theorem cover_2575528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2575528)
  decide +kernel
#print axioms cover_2575528

def state_2575538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 46 else 19)))
def hex_2575538 : String := "40414405050605"
theorem cover_2575538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2575538)
  decide +kernel
#print axioms cover_2575538
end Mub6.Numerical.CircleFullD0.Forest
