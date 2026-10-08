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
def state_962976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 110)))
def hex_962976 : String := "40410542050741420543440505054243440A050543444007414205070A0505"
theorem cover_962976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_962976)
  decide +kernel
#print axioms cover_962976

def state_963007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 111)))
def hex_963007 : String := "43400641420506424407050705"
theorem cover_963007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_963007)
  decide +kernel
#print axioms cover_963007

def state_963021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 55)))
def hex_963021 : String := "4443400A4142440A43400941090A09440A4340074142440A07070A0A0A0A4340410942090741420944434007410707090942440A094443070A07400509"
theorem cover_963021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_963021)
  decide +kernel
#print axioms cover_963021

def state_963082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 55)))
def hex_963082 : String := "4443404107074142440A430740074142070707440707420A07400A41420A43440A070A0A434007414207070740074142050742440A0507"
theorem cover_963082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_963082)
  decide +kernel
#print axioms cover_963082

def state_963137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 27)))
def hex_963137 : String := "44400A4142060A064041050A4142050542434405050543440A0505"
theorem cover_963137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_963137)
  decide +kernel
#print axioms cover_963137

def state_963167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_963167 : String := "4142434407070A070A"
theorem cover_963167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_963167)
  decide +kernel
#print axioms cover_963167

def state_963179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 54)))
def hex_963179 : String := "444009094041070741424309440940074107070942430944080707"
theorem cover_963179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_963179)
  decide +kernel
#print axioms cover_963179
end Mub6.Numerical.CircleFullD0.Forest
