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
def state_2566784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 95)))
def hex_2566784 : String := "40E24206430641440A40E2050A"
theorem cover_2566784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2566784)
  decide +kernel
#print axioms cover_2566784

def state_2566797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
def hex_2566797 : String := "444042074341440740070607070A4042064306444140070A07414007060606"
theorem cover_2566797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2566797)
  decide +kernel
#print axioms cover_2566797

def state_2566828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_2566828 : String := "420643064144050606"
theorem cover_2566828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2566828)
  decide +kernel
#print axioms cover_2566828

def state_2566837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
def hex_2566837 : String := "44404209434144070606070A40420643064441400706060606"
theorem cover_2566837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2566837)
  decide +kernel
#print axioms cover_2566837

def state_2566863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
def hex_2566863 : String := "4440420A430A080A404243090843414440420A4341440740070807070A404243E20843E208420A430A08440A4042094344074140070807070A08420A0A"
theorem cover_2566863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_2566863)
  decide +kernel
#print axioms cover_2566863

def state_2566924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
def hex_2566924 : String := "440A4042094344074140070807070A"
theorem cover_2566924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2566924)
  decide +kernel
#print axioms cover_2566924

def state_2566945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
def hex_2566945 : String := "414405404342050542050505444043420505070540434241440508074108440708420741440540070507430A0A"
theorem cover_2566945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2566945)
  decide +kernel
#print axioms cover_2566945
end Mub6.Numerical.CircleFullD0.Forest
