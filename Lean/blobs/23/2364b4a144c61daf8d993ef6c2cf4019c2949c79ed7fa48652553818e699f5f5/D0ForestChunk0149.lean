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
def state_973235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
def hex_973235 : String := "424344084041064243060806410A42430A440805430608440840410808410742050843440840064106430644080644084008410808"
theorem cover_973235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_973235)
  decide +kernel
#print axioms cover_973235

def state_973291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 40 else 54)))
def hex_973291 : String := "400808"
theorem cover_973291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_973291)
  decide +kernel
#print axioms cover_973291

def state_973295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 40 else 55)))
def hex_973295 : String := "41424344080644080543064408064243440807440840074108074307440807"
theorem cover_973295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973295 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_973295)
  decide +kernel
#print axioms cover_973295

def state_973326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 40 else 55)))
def hex_973326 : String := "41424344080A440840054105420508430944084041060841080842430944084041084208084142050809430944084041080809"
theorem cover_973326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_973326)
  decide +kernel
#print axioms cover_973326

def state_973377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 41 else 27)))
def hex_973377 : String := "44084041420808424408054408430805414244080508424408054408430805"
theorem cover_973377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_973377)
  decide +kernel
#print axioms cover_973377

def state_973408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 27)))
def hex_973408 : String := "43440940410643064408064143094408424006090609440840414408420808440842430808430708414408420808440842430808430808"
theorem cover_973408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973408 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_973408)
  decide +kernel
#print axioms cover_973408

def state_973464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 42) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
def hex_973464 : String := "424344070A074344070A44074041070807"
theorem cover_973464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_973464)
  decide +kernel
#print axioms cover_973464
end Mub6.Numerical.CircleFullD0.Forest
