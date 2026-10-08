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
def state_2303698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 110 else 91)))
def hex_2303698 : String := "424440C441050A40C441430A0A0A4440C441054305420A0540C44143054244050909430A420A440A4041090A0A"
theorem cover_2303698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2303698)
  decide +kernel
#print axioms cover_2303698

def state_2303744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 70 else (if j.val < 4 then 111 else 91)))
def hex_2303744 : String := "444041434244060606060741430A0A0A404143424440060A40060A4406060643420708074143420A440A09420A090A"
theorem cover_2303744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2303744)
  decide +kernel
#print axioms cover_2303744

def state_2303791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 111 else 91)))
def hex_2303791 : String := "4440410643424406400641060706064143050643420A44054041050A05420A0640410643080641434209090643420A44404106080A40080908"
theorem cover_2303791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2303791)
  decide +kernel
#print axioms cover_2303791

def state_2303848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 91)))
def hex_2303848 : String := "43424440070A4041C4070A444041C44307070A4041C4430A08410A0A42440740070A44404143420708070741430A0A0A400841430A0808"
theorem cover_2303848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2303848)
  decide +kernel
#print axioms cover_2303848

def state_2303903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 91)))
def hex_2303903 : String := "4143420A44054041050A05420A444041050A054041090A0A430A0A"
theorem cover_2303903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2303903)
  decide +kernel
#print axioms cover_2303903
end Mub6.Numerical.CircleFullD0.Forest
