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
def state_1537360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
def hex_1537360 : String := "424441090641090844064143060906"
theorem cover_1537360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1537360)
  decide +kernel
#print axioms cover_1537360

def state_1537376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
def hex_1537376 : String := "42444143400505094340424441430509084105084441050605080A414305094305400A09444143050A434042444105060505060A410543050A"
theorem cover_1537376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537376 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1537376)
  decide +kernel
#print axioms cover_1537376

def state_1537433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
def hex_1537433 : String := "4244410943080909444143050943060A4105430509"
theorem cover_1537433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 21) (hex := hex_1537433)
  decide +kernel
#print axioms cover_1537433

def state_1537454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 9)))
def hex_1537454 : String := "44400A094042090A09"
theorem cover_1537454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1537454)
  decide +kernel
#print axioms cover_1537454

def state_1537463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 9)))
def hex_1537463 : String := "434440440641420A0606064044414243050A054243050A064105054441070607440A400A0A"
theorem cover_1537463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1537463)
  decide +kernel
#print axioms cover_1537463

def state_1537500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_1537500 : String := "440A404341080A084341090A09"
theorem cover_1537500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1537500)
  decide +kernel
#print axioms cover_1537500

def state_1537514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_1537514 : String := "4209430909"
theorem cover_1537514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1537514)
  decide +kernel
#print axioms cover_1537514

def state_1537520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
def hex_1537520 : String := "430909"
theorem cover_1537520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537520 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1537520)
  decide +kernel
#print axioms cover_1537520

def state_1537523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
def hex_1537523 : String := "4344404142094306094243060906094041420943070942434440420806064042094409070909434406074406400A094109420943060644430940090909"
theorem cover_1537523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1537523)
  decide +kernel
#print axioms cover_1537523

def state_1537586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_1537586 : String := "42064344400841074209070506"
theorem cover_1537586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1537586)
  decide +kernel
#print axioms cover_1537586
end Mub6.Numerical.CircleFullD0.Forest
