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
def state_380509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
def hex_380509 : String := "44404143064442064143064440424109084143444205050644050943440506054206410605064306444005050606060606"
theorem cover_380509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 49) (hex := hex_380509)
  decide +kernel
#print axioms cover_380509

def state_380562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_380562 : String := "42444341440A40420608064440424344410A0506060A0A40420643080742060A41440A064440420607060643410640420608060644430A0A08"
theorem cover_380562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_380562)
  decide +kernel
#print axioms cover_380562

def state_380619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_380619 : String := "42444344404142430506050505400741420643440540070507050743400741420644060607064443424405400705054207440507434240074108070807"
theorem cover_380619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_380619)
  decide +kernel
#print axioms cover_380619

def state_380680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_380680 : String := "414244430A06060A424443404405410605050643400606064443050A4340424108440508084209054042060A0A"
theorem cover_380680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_380680)
  decide +kernel
#print axioms cover_380680

def state_380725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_380725 : String := "40414206434441080806064206434408420640060644080641064206430806"
theorem cover_380725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_380725)
  decide +kernel
#print axioms cover_380725
end Mub6.Numerical.CircleFullPrototype.Forest
