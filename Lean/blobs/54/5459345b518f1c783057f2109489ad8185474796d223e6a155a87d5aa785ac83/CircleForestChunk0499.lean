import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_281219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
def hex_281219 : String := "43444006414342060A060A404106074143424406064440064143420608060A4005414305064342050506064342070A0A06"
theorem cover_281219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_281219)
  decide +kernel
#print axioms cover_281219

def state_281268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
def hex_281268 : String := "4344400A0A4041420A0A0A41424344400A4143080A084041050A41430542050543080A0A434408400808090A0A"
theorem cover_281268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_281268)
  decide +kernel
#print axioms cover_281268

def state_281313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
def hex_281313 : String := "0A"
theorem cover_281313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_281313)
  decide +kernel
#print axioms cover_281313

def state_281315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
def hex_281315 : String := "414205434008050505"
theorem cover_281315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_281315)
  decide +kernel
#print axioms cover_281315

def state_281329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
def hex_281329 : String := "414342094044054143080A08440541070542050A09"
theorem cover_281329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_281329)
  decide +kernel
#print axioms cover_281329

def state_281353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 23)))
def hex_281353 : String := "444009414309420606094041434206440605060741434209440940410509410A094206440640060809"
theorem cover_281353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_281353)
  decide +kernel
#print axioms cover_281353

def state_281395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
def hex_281395 : String := "4041434244094006414309060944084008084206440A4006434106060643090A41434244094041430942060709090742440540060507430942054405400A05"
theorem cover_281395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_281395)
  decide +kernel
#print axioms cover_281395
end Mub6.Numerical.CircleFullPrototype.Forest
