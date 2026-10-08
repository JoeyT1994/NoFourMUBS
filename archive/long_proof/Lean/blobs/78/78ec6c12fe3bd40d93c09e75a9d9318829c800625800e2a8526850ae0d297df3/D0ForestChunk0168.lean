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
def state_977744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 176) else (if j.val < 3 then 124 else (if j.val < 4 then 86 else 114)))
def hex_977744 : String := "43444240410909090942404143070507410A0940414306070709440842054041434408050543074408054143440805054309440805"
theorem cover_977744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_977744)
  decide +kernel
#print axioms cover_977744

def state_977797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 177) else (if j.val < 3 then 124 else (if j.val < 4 then 86 else 114)))
def hex_977797 : String := "4344094240070907444240410806060942404143050507410506400741430944090509"
theorem cover_977797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_977797)
  decide +kernel
#print axioms cover_977797

def state_977832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 88) else (if j.val < 3 then 124 else (if j.val < 4 then 86 else 114)))
def hex_977832 : String := "4143094409420540410A090909"
theorem cover_977832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_977832)
  decide +kernel
#print axioms cover_977832

def state_977847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 176) else (if j.val < 3 then 125 else (if j.val < 4 then 86 else 114)))
def hex_977847 : String := "43440942400709064408424041434406064408420506430707414309440842054041060709430944084240070909404106074143094408424006090609"
theorem cover_977847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_977847)
  decide +kernel
#print axioms cover_977847

def state_977908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 177) else (if j.val < 3 then 125 else (if j.val < 4 then 86 else 114)))
def hex_977908 : String := "430944094240070907"
theorem cover_977908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_977908)
  decide +kernel
#print axioms cover_977908

def state_977917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 86 else 114)))
def hex_977917 : String := "410909"
theorem cover_977917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_977917)
  decide +kernel
#print axioms cover_977917

def state_977920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 86 else 115)))
def hex_977920 : String := "424041430A0543074442050705410A430A4442054041050909054041430744424007410A0740064106070707410A4309440908"
theorem cover_977920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_977920)
  decide +kernel
#print axioms cover_977920
end Mub6.Numerical.CircleFullD0.Forest
