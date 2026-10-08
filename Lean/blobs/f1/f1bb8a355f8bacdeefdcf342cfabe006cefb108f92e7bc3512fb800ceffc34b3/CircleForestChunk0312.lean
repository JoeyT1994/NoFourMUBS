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
def state_1012313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 47)))
def hex_1012313 : String := "44404341070A0A4341420506424409404305050544404309090640070641420544400A06060A4043070743410742050741080A"
theorem cover_1012313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1012313)
  decide +kernel
#print axioms cover_1012313

def state_1012364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 47)))
def hex_1012364 : String := "44404307074306410606400706"
theorem cover_1012364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1012364)
  decide +kernel
#print axioms cover_1012364

def state_1012377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 47)))
def hex_1012377 : String := "4142084440070607420A44400A4341060A0A40074341060A08"
theorem cover_1012377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1012377)
  decide +kernel
#print axioms cover_1012377

def state_1012402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
def hex_1012402 : String := "444341064240440943090906064142080642404409430908094044430909430641060906434106424044430641050943060806064108420840444306060606"
theorem cover_1012402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1012402)
  decide +kernel
#print axioms cover_1012402

def state_1012465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 23)))
def hex_1012465 : String := "4044434106424044050706054142400706064240440543050A4443054106050605430641064244400706070606"
theorem cover_1012465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1012465)
  decide +kernel
#print axioms cover_1012465

def state_1012513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
def hex_1012513 : String := "434142400A0940440543080A44094308094209080A"
theorem cover_1012513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1012513)
  decide +kernel
#print axioms cover_1012513
end Mub6.Numerical.CircleFullD0.Forest
