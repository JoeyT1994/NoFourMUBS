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
def state_2568639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
def hex_2568639 : String := "4441404306420644074140070606060606"
theorem cover_2568639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2568639)
  decide +kernel
#print axioms cover_2568639

def state_2568660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 112 else 94)))
def hex_2568660 : String := "4244410806064441084007064108400806"
theorem cover_2568660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2568660)
  decide +kernel
#print axioms cover_2568660

def state_2568677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 113 else 94)))
def hex_2568677 : String := "42444140070A07414043070743060A4007064441404342070707430A0A40070A414043424407050942070943420808420A094043050543060A"
theorem cover_2568677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2568677)
  decide +kernel
#print axioms cover_2568677

def state_2568734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
def hex_2568734 : String := "4306420A0A"
theorem cover_2568734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2568734)
  decide +kernel
#print axioms cover_2568734

def state_2568739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
def hex_2568739 : String := "4043420644060642070706"
theorem cover_2568739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2568739)
  decide +kernel
#print axioms cover_2568739

def state_2568750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 95)))
def hex_2568750 : String := "414043420608424441400506060644414005430809400506410505064043060506"
theorem cover_2568750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2568750)
  decide +kernel
#print axioms cover_2568750

def state_2568784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
def hex_2568784 : String := "44414043420707070A40070A414043420644414005060505420744070543060A400706"
theorem cover_2568784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2568784)
  decide +kernel
#print axioms cover_2568784

def state_2568820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 94)))
def hex_2568820 : String := "4140434244074140070A07444140070A0741404342070707430A0A40050A420744074140060807430A0A40070A"
theorem cover_2568820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2568820)
  decide +kernel
#print axioms cover_2568820
end Mub6.Numerical.CircleFullD0.Forest
