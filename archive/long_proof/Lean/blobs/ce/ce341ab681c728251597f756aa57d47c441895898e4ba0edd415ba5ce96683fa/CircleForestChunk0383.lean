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
def state_1029384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 29)))
def hex_1029384 : String := "440640414208084206434406404108420606060606"
theorem cover_1029384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_1029384)
  decide +kernel
#print axioms cover_1029384

def state_1029405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
def hex_1029405 : String := "42074344404105050540414243054405054305440540414205050505420505410505440640414206434406400A06060A06"
theorem cover_1029405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_1029405)
  decide +kernel
#print axioms cover_1029405

def state_1029454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 14)))
def hex_1029454 : String := "4406404142090A0A06"
theorem cover_1029454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1029454)
  decide +kernel
#print axioms cover_1029454

def state_1029463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
def hex_1029463 : String := "42434407400A070A43440A4041420A0A0841420743440540410505054406400A06420743050A0A"
theorem cover_1029463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1029463)
  decide +kernel
#print axioms cover_1029463

def state_1029503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
def hex_1029503 : String := "414209434441400709400A42094307440A074106400609094243440A4206400609094344400841420A434408060A08400641420606420608440A400941090A"
theorem cover_1029503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1029503)
  decide +kernel
#print axioms cover_1029503

def state_1029568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 15)))
def hex_1029568 : String := "43444009070909"
theorem cover_1029568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1029568)
  decide +kernel
#print axioms cover_1029568

def state_1029579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
def hex_1029579 : String := "42094344414009084042090742094344410840060806444108400708080909"
theorem cover_1029579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1029579)
  decide +kernel
#print axioms cover_1029579

def state_1029611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 30)))
def hex_1029611 : String := "43444041090A410942094344054006050A0909"
theorem cover_1029611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1029611)
  decide +kernel
#print axioms cover_1029611

def state_1029633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
def hex_1029633 : String := "414243060907420A07"
theorem cover_1029633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1029633)
  decide +kernel
#print axioms cover_1029633
end Mub6.Numerical.CircleFullD0.Forest
