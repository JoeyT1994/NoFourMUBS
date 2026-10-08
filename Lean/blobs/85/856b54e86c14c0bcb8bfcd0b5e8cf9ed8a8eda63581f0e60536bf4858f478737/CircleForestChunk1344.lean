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
def state_1623306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 66)))
def hex_1623306 : String := "444341424008050742050741080943414205400705054142080842404408050540440843050805"
theorem cover_1623306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1623306)
  decide +kernel
#print axioms cover_1623306

def state_1623345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 211 else (if j.val < 4 then 193 else 66)))
def hex_1623345 : String := "4044074307410707444307410707430741084240070707"
theorem cover_1623345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1623345)
  decide +kernel
#print axioms cover_1623345

def state_1623371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 132)))
def hex_1623371 : String := "434142404407430741070644430541070505074240060506414240440643410A06064409434142050505090606"
theorem cover_1623371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1623371)
  decide +kernel
#print axioms cover_1623371

def state_1623416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 133)))
def hex_1623416 : String := "434142404443050A05050742054006054142400A4443050A05400A4443070643050A420A06"
theorem cover_1623416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_1623416)
  decide +kernel
#print axioms cover_1623416

def state_1623453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 207) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 66)))
def hex_1623453 : String := "4443414205050541090943054142054044430505050505"
theorem cover_1623453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1623453)
  decide +kernel
#print axioms cover_1623453

def state_1623476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 211 else (if j.val < 4 then 193 else 66)))
def hex_1623476 : String := "4044064307064443074107064307414240070507420506"
theorem cover_1623476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1623476)
  decide +kernel
#print axioms cover_1623476

def state_1623500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 192 else 67)))
def hex_1623500 : String := "41424044430541420505050505074205400705"
theorem cover_1623500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1623500)
  decide +kernel
#print axioms cover_1623500
end Mub6.Numerical.CircleFullD0.Forest
