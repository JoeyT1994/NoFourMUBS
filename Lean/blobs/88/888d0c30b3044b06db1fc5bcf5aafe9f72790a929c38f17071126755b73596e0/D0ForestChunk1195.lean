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
def state_1587244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 24)))
def hex_1587244 : String := "4043414206090641420709424440090640430641070A0744094009430609430607"
theorem cover_1587244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1587244)
  decide +kernel
#print axioms cover_1587244

def state_1587280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
def hex_1587280 : String := "424443064041074206440607064340410842060806404142070842440743050544080807440808"
theorem cover_1587280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587280 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1587280)
  decide +kernel
#print axioms cover_1587280

def state_1587320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
def hex_1587320 : String := "4406430640414244060544430640410842054406050543054041080505420544060505"
theorem cover_1587320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1587320)
  decide +kernel
#print axioms cover_1587320

def state_1587355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 25)))
def hex_1587355 : String := "44430640410942060906434041424406080842060A064041424408080842444306404142060806064305404142050805054443080843080808"
theorem cover_1587355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1587355)
  decide +kernel
#print axioms cover_1587355

def state_1587413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
def hex_1587413 : String := "4244404307070740434107420744400A07400A070A074440430809084043084106424408060608"
theorem cover_1587413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1587413)
  decide +kernel
#print axioms cover_1587413

def state_1587454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 50)))
def hex_1587454 : String := "404341420744074043090707420644064043060A06410A0A430607"
theorem cover_1587454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1587454)
  decide +kernel
#print axioms cover_1587454
end Mub6.Numerical.CircleFullD0.Forest
