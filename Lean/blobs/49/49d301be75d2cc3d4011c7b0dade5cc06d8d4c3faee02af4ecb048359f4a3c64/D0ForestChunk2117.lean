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
def state_2588683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 18)))
def hex_2588683 : String := "4041080841440742434008414407424307400707070A404144070808414407DC4407DC43084008414407430742400707070844070A"
theorem cover_2588683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588683 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_2588683)
  decide +kernel
#print axioms cover_2588683

def state_2588736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 18)))
def hex_2588736 : String := "430840084144070808"
theorem cover_2588736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2588736)
  decide +kernel
#print axioms cover_2588736

def state_2588747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
def hex_2588747 : String := "40064144420643064006090606"
theorem cover_2588747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2588747)
  decide +kernel
#print axioms cover_2588747

def state_2588761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2588761 : String := "41444206080606"
theorem cover_2588761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2588761)
  decide +kernel
#print axioms cover_2588761

def state_2588771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 38)))
def hex_2588771 : String := "4340064144424306400609430840080906064041444243064005DC080606DC"
theorem cover_2588771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588771 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2588771)
  decide +kernel
#print axioms cover_2588771

def state_2588803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 38)))
def hex_2588803 : String := "40084144084243064006090809"
theorem cover_2588803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2588803)
  decide +kernel
#print axioms cover_2588803

def state_2588816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 38)))
def hex_2588816 : String := "4041440805084144434240080908424008414409090940050943424008440909400809424044050544414309050941434240050705050A4005440505440A0A"
theorem cover_2588816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588816 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2588816)
  decide +kernel
#print axioms cover_2588816

def state_2588879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
def hex_2588879 : String := "42430640064144DC060643400641444206090606404144050506414443424006440A06400509424005070507440A06"
theorem cover_2588879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2588879)
  decide +kernel
#print axioms cover_2588879

def state_2588926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2588926 : String := "4442430640060A0A06"
theorem cover_2588926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2588926)
  decide +kernel
#print axioms cover_2588926
end Mub6.Numerical.CircleFullD0.Forest
