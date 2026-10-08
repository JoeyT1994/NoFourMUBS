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
def state_1491023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 59)))
def hex_1491023 : String := "40434142090A424440070707444006430A4109060A41420744400A090A420744400743410707074007074341090941094209444043094109070909"
theorem cover_1491023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1491023)
  decide +kernel
#print axioms cover_1491023

def state_1491083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 50 else 29)))
def hex_1491083 : String := "444043410707074341420505050540074341090707"
theorem cover_1491083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1491083)
  decide +kernel
#print axioms cover_1491083

def state_1491105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 58)))
def hex_1491105 : String := "4043064142440507060643414244054043064107054309054406400608420A064142054405400643410505050A"
theorem cover_1491105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1491105)
  decide +kernel
#print axioms cover_1491105

def state_1491151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 59)))
def hex_1491151 : String := "43414244070744064006434105064107074244060706414207444006430607074207440607"
theorem cover_1491151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1491151)
  decide +kernel
#print axioms cover_1491151

def state_1491190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 39 else (if j.val < 4 then 100 else 59)))
def hex_1491190 : String := "42444043410707070909444043410606414209060643084109420908404341094209054109420744060509"
theorem cover_1491190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1491190)
  decide +kernel
#print axioms cover_1491190
end Mub6.Numerical.CircleFullD0.Forest
