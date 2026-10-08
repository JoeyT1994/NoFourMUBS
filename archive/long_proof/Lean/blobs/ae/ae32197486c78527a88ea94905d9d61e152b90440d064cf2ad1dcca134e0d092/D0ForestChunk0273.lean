import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1002978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 104 else 88)))
def hex_1002978 : String := "4044C60606"
theorem cover_1002978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002978 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1002978)
  decide +kernel
#print axioms cover_1002978

def state_1002983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
def hex_1002983 : String := "424044084308094409094005440506"
theorem cover_1002983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1002983)
  decide +kernel
#print axioms cover_1002983

def state_1003003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 176)))
def hex_1003003 : String := "C6"
theorem cover_1003003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1003003)
  decide +kernel
#print axioms cover_1003003

def state_1003006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 144 else (if j.val < 4 then 211 else 176)))
def hex_1003006 : String := "404443C60A43C60A4443070743C608"
theorem cover_1003006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 15) (hex := hex_1003006)
  decide +kernel
#print axioms cover_1003006

def state_1003021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 145 else (if j.val < 4 then 211 else 176)))
def hex_1003021 : String := "404443C64241400A4407080A41400544054305080543C6420A41400A060A4443C6420741060543C64208410640444305070606"
theorem cover_1003021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1003021)
  decide +kernel
#print axioms cover_1003021

def state_1003072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 221) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 176)))
def hex_1003072 : String := "424044070A0740440543C60A4407430907"
theorem cover_1003072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003072 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1003072)
  decide +kernel
#print axioms cover_1003072

def state_1003093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 368 else 220) else (if j.val < 3 then 144 else (if j.val < 4 then 210 else 177)))
def hex_1003093 : String := "444341424044C6430608060642400A094044C643060A0641420840440A0606420A400A44090A43410642400A4406060641080A"
theorem cover_1003093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1003093)
  decide +kernel
#print axioms cover_1003093

def state_1003144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 369 else 220) else (if j.val < 3 then 144 else (if j.val < 4 then 210 else 177)))
def hex_1003144 : String := "444306410642080643064106420806"
theorem cover_1003144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003144 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1003144)
  decide +kernel
#print axioms cover_1003144

def state_1003159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 145 else (if j.val < 4 then 210 else 177)))
def hex_1003159 : String := "40444306424106400A06060606"
theorem cover_1003159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1003159)
  decide +kernel
#print axioms cover_1003159

def state_1003172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 221) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 177)))
def hex_1003172 : String := "42404443090943414209400909090A4409430909404443410505414240050905054341060541420A060A444306094306410609"
theorem cover_1003172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003172 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1003172)
  decide +kernel
#print axioms cover_1003172
end Mub6.Numerical.CircleFullD0.Forest
