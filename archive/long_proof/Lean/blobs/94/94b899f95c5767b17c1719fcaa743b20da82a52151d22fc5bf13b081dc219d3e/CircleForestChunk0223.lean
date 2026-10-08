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
def state_74915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 97 else 42)))
def hex_74915 : String := "414244434041050941094244430940070607094041054205054142050542444340050605070643090744430906094244430707074443090807"
theorem cover_74915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_74915)
  decide +kernel
#print axioms cover_74915

def state_74972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 97 else 42)))
def hex_74972 : String := "41424443060643090A06424443404142444306060706074106420706404142070607410642070607440609"
theorem cover_74972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_74972)
  decide +kernel
#print axioms cover_74972

def state_75015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 43)))
def hex_75015 : String := "4309400709"
theorem cover_75015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_75015)
  decide +kernel
#print axioms cover_75015

def state_75020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 48 else 21)))
def hex_75020 : String := "44430940090609"
theorem cover_75020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_75020)
  decide +kernel
#print axioms cover_75020

def state_75027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 21)))
def hex_75027 : String := "4244434007414207090740074142074443400706400706070707444309400841090909"
theorem cover_75027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_75027)
  decide +kernel
#print axioms cover_75027

def state_75063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 21)))
def hex_75063 : String := "42444341064042440608060641064042440643410607410607060643084108400908440609"
theorem cover_75063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_75063)
  decide +kernel
#print axioms cover_75063

def state_75100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 21)))
def hex_75100 : String := "42444340414205050505404142440507440609074106054307074443060609"
theorem cover_75100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_75100)
  decide +kernel
#print axioms cover_75100
end Mub6.Numerical.CircleFullPrototype.Forest
