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
def state_1000341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 88)))
def hex_1000341 : String := "41420540070842400A05404443C60A430A0A4443C6420841080A4342054105400A444341050A050508"
theorem cover_1000341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1000341)
  decide +kernel
#print axioms cover_1000341

def state_1000382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 89)))
def hex_1000382 : String := "4341074205074105420540074443050505"
theorem cover_1000382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1000382)
  decide +kernel
#print axioms cover_1000382

def state_1000400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 44)))
def hex_1000400 : String := "400644064341050606"
theorem cover_1000400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1000400)
  decide +kernel
#print axioms cover_1000400

def state_1000410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
def hex_1000410 : String := "4443414206400644060A060643410A0606"
theorem cover_1000410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1000410)
  decide +kernel
#print axioms cover_1000410

def state_1000431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 88)))
def hex_1000431 : String := "400644C64341420540440A0544430505054206400609410506"
theorem cover_1000431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1000431)
  decide +kernel
#print axioms cover_1000431

def state_1000457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 88)))
def hex_1000457 : String := "44C64341420A070A0A"
theorem cover_1000457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1000457)
  decide +kernel
#print axioms cover_1000457

def state_1000467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 176)))
def hex_1000467 : String := "C6"
theorem cover_1000467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1000467)
  decide +kernel
#print axioms cover_1000467

def state_1000471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 220) else (if j.val < 3 then 142 else (if j.val < 4 then 208 else 177)))
def hex_1000471 : String := "4044434107080A43070A4443414205400709094142054044C6054409050943410542050941054205400A05"
theorem cover_1000471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1000471)
  decide +kernel
#print axioms cover_1000471

def state_1000514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 220) else (if j.val < 3 then 143 else (if j.val < 4 then 208 else 177)))
def hex_1000514 : String := "404443074107080744434107084142400744C60707420908430741074240070907"
theorem cover_1000514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1000514)
  decide +kernel
#print axioms cover_1000514

def state_1000547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 221) else (if j.val < 3 then 71 else (if j.val < 4 then 208 else 177)))
def hex_1000547 : String := "424044060A0940084408430809"
theorem cover_1000547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1000547)
  decide +kernel
#print axioms cover_1000547
end Mub6.Numerical.CircleFullD0.Forest
