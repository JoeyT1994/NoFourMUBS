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
def state_52438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
def hex_52438 : String := "40414244050A440843404142070607410642050640070642050841420544050605"
theorem cover_52438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_52438)
  decide +kernel
#print axioms cover_52438

def state_52471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_52471 : String := "404142440809440843404142070507410642080640070642080841420A4406064244050A4408434041420806080A08"
theorem cover_52471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_52471)
  decide +kernel
#print axioms cover_52471

def state_52519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
def hex_52519 : String := "410507"
theorem cover_52519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_52519)
  decide +kernel
#print axioms cover_52519

def state_52523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
def hex_52523 : String := "4344404105424344400508050A054108420A06400508444041054207050A40050A"
theorem cover_52523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_52523)
  decide +kernel
#print axioms cover_52523

def state_52559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 42)))
def hex_52559 : String := "414243444007410A070707434440054105420705050707"
theorem cover_52559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_52559)
  decide +kernel
#print axioms cover_52559

def state_52583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 42)))
def hex_52583 : String := "420A43444140420805064042434490080A434490084406410507420A064108404207050844410640420A060A0A"
theorem cover_52583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_52583)
  decide +kernel
#print axioms cover_52583

def state_52629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 42)))
def hex_52629 : String := "434440410A050540060A0A"
theorem cover_52629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_52629)
  decide +kernel
#print axioms cover_52629

def state_52640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 42)))
def hex_52640 : String := "4344404142434490070743449007070741420A43444109090944410640420506050A42054309440507400741420A0907444007410A42050707"
theorem cover_52640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_52640)
  decide +kernel
#print axioms cover_52640
end Mub6.Numerical.CircleFullPrototype.Forest
