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
def state_1476790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 89 else 117)))
def hex_1476790 : String := "40430541050543414442400506050544420505054144424043054109050640054341050541090542060544424005430606400543050505"
theorem cover_1476790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1476790)
  decide +kernel
#print axioms cover_1476790

def state_1476845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 89 else 117)))
def hex_1476845 : String := "4005430541444240050A050505"
theorem cover_1476845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1476845)
  decide +kernel
#print axioms cover_1476845

def state_1476859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 88 else 58)))
def hex_1476859 : String := "4442404143050505414307080840050705"
theorem cover_1476859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1476859)
  decide +kernel
#print axioms cover_1476859

def state_1476876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 58)))
def hex_1476876 : String := "444240414309440905094143440842400508054408424043050A0A40050843080A40094108084240054143054442400543050505050505"
theorem cover_1476876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1476876)
  decide +kernel
#print axioms cover_1476876

def state_1476933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 88 else 58)))
def hex_1476933 : String := "440707"
theorem cover_1476933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1476933)
  decide +kernel
#print axioms cover_1476933

def state_1476937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 116)))
def hex_1476937 : String := "42404341440707084144080944084240430841060606084307084043080808"
theorem cover_1476937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1476937)
  decide +kernel
#print axioms cover_1476937

def state_1476968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 117)))
def hex_1476968 : String := "42404341440706440706414409064442064043060606060640434107074144424043070907084206054408054307410707"
theorem cover_1476968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1476968)
  decide +kernel
#print axioms cover_1476968
end Mub6.Numerical.CircleFullD0.Forest
