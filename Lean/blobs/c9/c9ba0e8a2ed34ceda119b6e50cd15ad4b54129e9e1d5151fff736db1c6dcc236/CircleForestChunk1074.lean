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
def state_1558211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 85 else 87)))
def hex_1558211 : String := "410A4044070A0A"
theorem cover_1558211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1558211)
  decide +kernel
#print axioms cover_1558211

def state_1558219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 107 else (if j.val < 4 then 84 else 87)))
def hex_1558219 : String := "41404442430508054243050805444243050A050540440942430941080909444243060A064243410506410A400A064305410506"
theorem cover_1558219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1558219)
  decide +kernel
#print axioms cover_1558219

def state_1558270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 87)))
def hex_1558270 : String := "4140440A080A404443420707074342080808440A0A"
theorem cover_1558270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558270 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1558270)
  decide +kernel
#print axioms cover_1558270

def state_1558291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1558291 : String := "4442434140440A0A06060A43060A42434140440A420A0A440A0A4044420A064243060A43060A060A43410506410A0A"
theorem cover_1558291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1558291)
  decide +kernel
#print axioms cover_1558291

def state_1558339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1558339 : String := "4442074306074243414044074207430907444206064243060543064140070605400506074341400906064140074407434207060707"
theorem cover_1558339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1558339)
  decide +kernel
#print axioms cover_1558339

def state_1558392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1558392 : String := "44420606424306410A054306414044060A0606"
theorem cover_1558392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1558392)
  decide +kernel
#print axioms cover_1558392

def state_1558411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 21)))
def hex_1558411 : String := "440741404344070A070A40074344070A05"
theorem cover_1558411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1558411)
  decide +kernel
#print axioms cover_1558411
end Mub6.Numerical.CircleFullD0.Forest
