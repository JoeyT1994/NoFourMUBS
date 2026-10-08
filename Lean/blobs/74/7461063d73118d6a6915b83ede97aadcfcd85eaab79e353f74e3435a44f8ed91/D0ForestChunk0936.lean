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
def state_1525225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 89)))
def hex_1525225 : String := "43404244418305054441430640050605070640420544050542444143060505054441430640050606410705"
theorem cover_1525225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1525225)
  decide +kernel
#print axioms cover_1525225

def state_1525268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
def hex_1525268 : String := "42444143404206060640420A44080A0A06414340440606060A0644414340420606064042440841090644084107064208080641430740424441070607070706"
theorem cover_1525268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525268 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1525268)
  decide +kernel
#print axioms cover_1525268

def state_1525333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 44)))
def hex_1525333 : String := "444143404207440741434005090505420A4441090741090A40070A4340054205440505054143404442050505444209090940050905"
theorem cover_1525333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525333 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1525333)
  decide +kernel
#print axioms cover_1525333

def state_1525391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 66 else 88)))
def hex_1525391 : String := "4441434042074406064244070944414340060906074109434005090540064207440606434005070541434042054405054209444109050940050905"
theorem cover_1525391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1525391)
  decide +kernel
#print axioms cover_1525391
end Mub6.Numerical.CircleFullD0.Forest
