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
def state_1320569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_1320569 : String := "444009424407410909074008420809"
theorem cover_1320569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1320569)
  decide +kernel
#print axioms cover_1320569

def state_1320589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_1320589 : String := "434441420A40070A424006084043440741090607430844050A41420A440A0A42440A0A440A4043440A0A0A0A444105420543400705050A"
theorem cover_1320589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1320589)
  decide +kernel
#print axioms cover_1320589

def state_1320644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1320644 : String := "4344410740074243090707414409094440420A07420A090A4407410743444007420A070A07"
theorem cover_1320644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1320644)
  decide +kernel
#print axioms cover_1320644

def state_1320682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_1320682 : String := "4344420640060842440606444006410A060A4442430606434006414405420607064007410507420A43444006410A060A4440060A06"
theorem cover_1320682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1320682)
  decide +kernel
#print axioms cover_1320682

def state_1320737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_1320737 : String := "4041424344060607074206430506414243084407404107064142080708430907420843084407400708"
theorem cover_1320737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1320737)
  decide +kernel
#print axioms cover_1320737
end Mub6.Numerical.CircleFullD0.Forest
