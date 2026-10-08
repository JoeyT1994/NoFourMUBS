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
def state_1666999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 62) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 63)))
def hex_1666999 : String := "40424341084440420807420843060608410844400542080508430705424341064406084106440608434106440643074007064106440640424306050506"
theorem cover_1666999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1666999)
  decide +kernel
#print axioms cover_1666999

def state_1667061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 62)))
def hex_1667061 : String := "40424344094140420909420909090A434409414005430905090542434406410609440641064207400A064344064106094406410640424306050506"
theorem cover_1667061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1667061)
  decide +kernel
#print axioms cover_1667061

def state_1667123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 102 else 63)))
def hex_1667123 : String := "41444042430808430741050A424308084309414406084409F2404208074208430708444042090942090940420A07424305084307F2"
theorem cover_1667123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1667123)
  decide +kernel
#print axioms cover_1667123

def state_1667176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 103 else 63)))
def hex_1667176 : String := "4144400A420A4341050A05400A42084308080A"
theorem cover_1667176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1667176)
  decide +kernel
#print axioms cover_1667176

def state_1667195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 51 else 63)))
def hex_1667195 : String := "434144400743074241054405070507444007430742090707414405400542434105F2050544400542434405F2050540420A05F2"
theorem cover_1667195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1667195)
  decide +kernel
#print axioms cover_1667195
end Mub6.Numerical.CircleFullD0.Forest
