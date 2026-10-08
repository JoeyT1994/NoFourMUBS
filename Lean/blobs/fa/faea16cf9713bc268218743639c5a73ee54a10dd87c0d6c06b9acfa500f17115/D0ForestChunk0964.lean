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
def state_1531911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 32)))
def hex_1531911 : String := "434440420706064042414308070709420806440540074205414344054007060505"
theorem cover_1531911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1531911)
  decide +kernel
#print axioms cover_1531911

def state_1531944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
def hex_1531944 : String := "42410908414344084042084143064406404207060606084440420541090509404209410943440640420806060909430644054042050606"
theorem cover_1531944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531944 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1531944)
  decide +kernel
#print axioms cover_1531944

def state_1532002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 33)))
def hex_1532002 : String := "4344404241060841430506430844070642084143050908400642410508410543054408054440060906"
theorem cover_1532002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1532002)
  decide +kernel
#print axioms cover_1532002

def state_1532043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 33)))
def hex_1532043 : String := "43444042070708404207414305070708440740074207414344074006080707"
theorem cover_1532043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1532043)
  decide +kernel
#print axioms cover_1532043

def state_1532079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 104) else (if j.val < 3 then 206 else (if j.val < 4 then 76 else 66)))
def hex_1532079 : String := "41430544400642064105430506054344400A0805444042070742414308060741430544070507404206054241050705"
theorem cover_1532079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1532079)
  decide +kernel
#print axioms cover_1532079

def state_1532126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 104) else (if j.val < 3 then 207 else (if j.val < 4 then 76 else 66)))
def hex_1532126 : String := "4105430544404241430507070942414305444042070542410507050543054407400742070541050905"
theorem cover_1532126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1532126)
  decide +kernel
#print axioms cover_1532126
end Mub6.Numerical.CircleFullD0.Forest
