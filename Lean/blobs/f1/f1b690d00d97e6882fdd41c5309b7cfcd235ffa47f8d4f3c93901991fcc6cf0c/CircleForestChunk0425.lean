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
def state_1039437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_1039437 : String := "434041420A094244090A094109094041424407430A07444309070A4244064340410A0606064443090643400A0940410706064142060706"
theorem cover_1039437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1039437)
  decide +kernel
#print axioms cover_1039437

def state_1039492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_1039492 : String := "42440643404142064406430506060606440943404109090940414206440643090642060906"
theorem cover_1039492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1039492)
  decide +kernel
#print axioms cover_1039492

def state_1039529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_1039529 : String := "414206440643090606"
theorem cover_1039529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1039529)
  decide +kernel
#print axioms cover_1039529

def state_1039540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_1039540 : String := "4243444042080808084440420741074308070708430A4440410A42430A44400706050A0A0A"
theorem cover_1039540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1039540)
  decide +kernel
#print axioms cover_1039540

def state_1039578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
def hex_1039578 : String := "43444041084207444305404142060705060808084440414207434406070642064344060706064041080807"
theorem cover_1039578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1039578)
  decide +kernel
#print axioms cover_1039578

def state_1039622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
def hex_1039622 : String := "444041424443084041080808080A424443054041090509080941080908"
theorem cover_1039622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1039622)
  decide +kernel
#print axioms cover_1039622
end Mub6.Numerical.CircleFullD0.Forest
