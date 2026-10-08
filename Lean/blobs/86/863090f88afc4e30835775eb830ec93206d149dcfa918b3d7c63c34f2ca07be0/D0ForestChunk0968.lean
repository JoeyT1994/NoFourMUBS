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
def state_1532859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 17)))
def hex_1532859 : String := "41434440420641064344080506094006090943444042074143080707084042410607414306064308074208410808440740064207410907"
theorem cover_1532859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1532859)
  decide +kernel
#print axioms cover_1532859

def state_1532919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 34)))
def hex_1532919 : String := "41430506434440420605420805054440064206410643080606"
theorem cover_1532919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1532919)
  decide +kernel
#print axioms cover_1532919

def state_1532944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 34)))
def hex_1532944 : String := "41430544400505054305444042410607410543050742414305064344400708054407400642064105074105430544400742410A074105070505"
theorem cover_1532944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532944 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1532944)
  decide +kernel
#print axioms cover_1532944

def state_1533002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 34)))
def hex_1533002 : String := "4143050943084440420841090808404206410543050608"
theorem cover_1533002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1533002)
  decide +kernel
#print axioms cover_1533002

def state_1533025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 34)))
def hex_1533025 : String := "41430544404205050905430544404241430509430844084042084105050841054305444042410A080A42080A054241080841050805"
theorem cover_1533025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1533025)
  decide +kernel
#print axioms cover_1533025

def state_1533078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 35)))
def hex_1533078 : String := "05"
theorem cover_1533078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533078 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1533078)
  decide +kernel
#print axioms cover_1533078
end Mub6.Numerical.CircleFullD0.Forest
