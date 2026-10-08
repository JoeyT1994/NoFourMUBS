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
def state_1585131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 52)))
def hex_1585131 : String := "4440064142444340064106424443050505060606064244434007414205070540064106420506430706444307060606"
theorem cover_1585131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_1585131)
  decide +kernel
#print axioms cover_1585131

def state_1585179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
def hex_1585179 : String := "4243444041D042054305080540414205080505444041424407080842440505440808084041064205060543440808440808"
theorem cover_1585179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1585179)
  decide +kernel
#print axioms cover_1585179

def state_1585229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 52)))
def hex_1585229 : String := "4344050544404142054443050505050505"
theorem cover_1585229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1585229)
  decide +kernel
#print axioms cover_1585229

def state_1585246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 52)))
def hex_1585246 : String := "43444041424305080842050A05404142050805054440414244080808424443050505444308084305080840414243050606420543050605"
theorem cover_1585246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1585246)
  decide +kernel
#print axioms cover_1585246

def state_1585301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 53)))
def hex_1585301 : String := "404106420906414243090943440806064209434405054440060506"
theorem cover_1585301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1585301)
  decide +kernel
#print axioms cover_1585301

def state_1585330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
def hex_1585330 : String := "410642444340064106420A444340060A0606060606"
theorem cover_1585330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_1585330)
  decide +kernel
#print axioms cover_1585330

def state_1585352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
def hex_1585352 : String := "424443400A070A43400608064443080606"
theorem cover_1585352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1585352)
  decide +kernel
#print axioms cover_1585352
end Mub6.Numerical.CircleFullD0.Forest
