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
def state_1552534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 85)))
def hex_1552534 : String := "434009424409414309400942440709090909400742074407430907"
theorem cover_1552534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1552534)
  decide +kernel
#print axioms cover_1552534

def state_1552562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
def hex_1552562 : String := "43404244410543050505050540064206440505"
theorem cover_1552562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1552562)
  decide +kernel
#print axioms cover_1552562

def state_1552583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 43)))
def hex_1552583 : String := "424443094140064206090943094106400642060809"
theorem cover_1552583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1552583)
  decide +kernel
#print axioms cover_1552583

def state_1552606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 86)))
def hex_1552606 : String := "4341050941404244410543050605054244050505404244094309410609094244430941404244090909424441050905054009424409090989440989"
theorem cover_1552606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1552606)
  decide +kernel
#print axioms cover_1552606

def state_1552665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 87)))
def hex_1552665 : String := "4341054009054105404244430941060943070644090989"
theorem cover_1552665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552665 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1552665)
  decide +kernel
#print axioms cover_1552665

def state_1552688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 40 else 43)))
def hex_1552688 : String := "444305410509430505"
theorem cover_1552688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1552688)
  decide +kernel
#print axioms cover_1552688

def state_1552698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
def hex_1552698 : String := "420644410643090606"
theorem cover_1552698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1552698)
  decide +kernel
#print axioms cover_1552698

def state_1552710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
def hex_1552710 : String := "43400642444106434006420605060644410543054006050506"
theorem cover_1552710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552710 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1552710)
  decide +kernel
#print axioms cover_1552710

def state_1552737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 86)))
def hex_1552737 : String := "4244410607064441430906094106430906"
theorem cover_1552737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1552737)
  decide +kernel
#print axioms cover_1552737
end Mub6.Numerical.CircleFullD0.Forest
