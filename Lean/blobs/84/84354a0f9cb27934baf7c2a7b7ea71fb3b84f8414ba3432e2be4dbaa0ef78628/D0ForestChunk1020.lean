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
def state_1545204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 85)))
def hex_1545204 : String := "4441434042084408050840064208084308074143404206050506434042440841060844084105430508084042064407064244074106074408410608"
theorem cover_1545204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1545204)
  decide +kernel
#print axioms cover_1545204

def state_1545264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 170)))
def hex_1545264 : String := "414305404244070644410507054244080505434042080808400708"
theorem cover_1545264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545264 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1545264)
  decide +kernel
#print axioms cover_1545264

def state_1545291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 171)))
def hex_1545291 : String := "414305400605434042444105080505420805404244410607064441430505430907410543050642440841054305084441050805"
theorem cover_1545291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1545291)
  decide +kernel
#print axioms cover_1545291

def state_1545342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 85)))
def hex_1545342 : String := "404244074341400742070707074407430907424407434140420808080841400708074443080743414009080841404207440741430907074208440808400707"
theorem cover_1545342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1545342)
  decide +kernel
#print axioms cover_1545342

def state_1545406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
def hex_1545406 : String := "420707"
theorem cover_1545406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1545406)
  decide +kernel
#print axioms cover_1545406

def state_1545410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 41 else 42)))
def hex_1545410 : String := "44074143400642064407060607"
theorem cover_1545410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1545410)
  decide +kernel
#print axioms cover_1545410
end Mub6.Numerical.CircleFullD0.Forest
