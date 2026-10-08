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
def state_1666794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 25 else 31)))
def hex_1666794 : String := "4341444042080742084307410809084409404208074208430741080941440A080A"
theorem cover_1666794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1666794)
  decide +kernel
#print axioms cover_1666794

def state_1666827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 25 else 31)))
def hex_1666827 : String := "43410744090741440540054243070505444005420A0540420A05424341444007420A07070A0A430705"
theorem cover_1666827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_1666827)
  decide +kernel
#print axioms cover_1666827

def state_1666870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 50 else 31)))
def hex_1666870 : String := "4144420843064041060906084409420543054041080505"
theorem cover_1666870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1666870)
  decide +kernel
#print axioms cover_1666870

def state_1666893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 51 else 31)))
def hex_1666893 : String := "41444208404341064406080A060844420A400A434406410609074208404341080A0A43410805410807"
theorem cover_1666893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1666893)
  decide +kernel
#print axioms cover_1666893

def state_1666935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 50 else 31)))
def hex_1666935 : String := "41444309404241060907064307400742410644060807440943094042414409070907424144090505410A09"
theorem cover_1666935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1666935)
  decide +kernel
#print axioms cover_1666935

def state_1666980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 62) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 62)))
def hex_1666980 : String := "40424341064406404243060505060505420606"
theorem cover_1666980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666980 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1666980)
  decide +kernel
#print axioms cover_1666980
end Mub6.Numerical.CircleFullD0.Forest
