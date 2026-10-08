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
def state_1493937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_1493937 : String := "4142434405404305050544050543440840424308410705070844400707404241070507424107050742054308440505"
theorem cover_1493937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1493937)
  decide +kernel
#print axioms cover_1493937

def state_1493984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_1493984 : String := "4306440640424109060642414308070808"
theorem cover_1493984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493984 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1493984)
  decide +kernel
#print axioms cover_1493984

def state_1494001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1494001 : String := "4243064405404105060506"
theorem cover_1494001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1494001)
  decide +kernel
#print axioms cover_1494001

def state_1494012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1494012 : String := "41424308440840414243080A08420508410808084243080A08"
theorem cover_1494012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1494012)
  decide +kernel
#print axioms cover_1494012

def state_1494044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 14)))
def hex_1494044 : String := "414244400643084406410A080A0A424406400643410808414442400608060A4406424006080606"
theorem cover_1494044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1494044)
  decide +kernel
#print axioms cover_1494044

def state_1494087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
def hex_1494087 : String := "434406410A06440641424006430A44410A060A0606"
theorem cover_1494087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1494087)
  decide +kernel
#print axioms cover_1494087

def state_1494109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 28)))
def hex_1494109 : String := "44414240060806064142400A4309444109420906090A4240064308444206064241094006080806"
theorem cover_1494109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1494109)
  decide +kernel
#print axioms cover_1494109
end Mub6.Numerical.CircleFullD0.Forest
