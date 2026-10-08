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
def state_1600717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 25)))
def hex_1600717 : String := "44400A41434205440A050A0A400A05"
theorem cover_1600717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1600717)
  decide +kernel
#print axioms cover_1600717

def state_1600734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
def hex_1600734 : String := "414344420A4006410643444208060606420A06064344084208400641060808"
theorem cover_1600734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1600734)
  decide +kernel
#print axioms cover_1600734

def state_1600769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 60 else 100)))
def hex_1600769 : String := "40410A0A414344420A400A074205400A050A43444205400A05050A"
theorem cover_1600769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1600769)
  decide +kernel
#print axioms cover_1600769

def state_1600797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 100)))
def hex_1600797 : String := "41434442400941090A0942400A410A0A4006410643090644420A0606434442400A0A4041090A9F420A404106069F44420A40069F420A06"
theorem cover_1600797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1600797)
  decide +kernel
#print axioms cover_1600797

def state_1600854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 120 else 100)))
def hex_1600854 : String := "44424041094344420709420A4009070A4107430707404108090842404143080A43444205400A05050A41080540410843084442400608060808"
theorem cover_1600854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1600854)
  decide +kernel
#print axioms cover_1600854

def state_1600911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 121 else 100)))
def hex_1600911 : String := "4442400A4143070A4344070A0A40410643090641084344080844420A08420A0642400A410A0A400641084308440806"
theorem cover_1600911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1600911)
  decide +kernel
#print axioms cover_1600911
end Mub6.Numerical.CircleFullD0.Forest
