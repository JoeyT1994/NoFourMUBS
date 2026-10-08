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
def state_1305874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 88)))
def hex_1305874 : String := "43404241084405430506410944054305060506"
theorem cover_1305874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1305874)
  decide +kernel
#print axioms cover_1305874

def state_1305897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 178)))
def hex_1305897 : String := "4143404244054108054405414305080505404208440841080608430506"
theorem cover_1305897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1305897)
  decide +kernel
#print axioms cover_1305897

def state_1305926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 179)))
def hex_1305926 : String := "414340420A4441074305400A0541060905400A420844080A430940424406094406410A0642094406410A05"
theorem cover_1305926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1305926)
  decide +kernel
#print axioms cover_1305926

def state_1305970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 178)))
def hex_1305970 : String := "414340424405410705440907054042440941094306060942440841080609430506"
theorem cover_1305970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1305970)
  decide +kernel
#print axioms cover_1305970

def state_1306004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 176) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 179)))
def hex_1306004 : String := "434007420507404244410A4340420A07420A07060A4407074244414307084305064107434007050A44410743050607"
theorem cover_1306004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1306004)
  decide +kernel
#print axioms cover_1306004

def state_1306051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 177) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 179)))
def hex_1306051 : String := "4340424405094405070540424406414340420A07420907060644064143070606424406414305060644064143050606"
theorem cover_1306051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1306051)
  decide +kernel
#print axioms cover_1306051

def state_1306098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 67 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 89)))
def hex_1306098 : String := "424405414305080544054143054042440541080544054107050505"
theorem cover_1306098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1306098)
  decide +kernel
#print axioms cover_1306098
end Mub6.Numerical.CircleFullD0.Forest
