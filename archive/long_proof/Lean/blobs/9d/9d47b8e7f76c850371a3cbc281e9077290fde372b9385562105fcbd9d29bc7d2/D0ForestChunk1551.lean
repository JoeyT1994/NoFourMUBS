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
def state_2245759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_2245759 : String := "4344404241430A0543080609420A414344070844060543080640420A080A444009064042430A44094143054405060643080942430A064305440505"
theorem cover_2245759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2245759)
  decide +kernel
#print axioms cover_2245759

def state_2245822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_2245822 : String := "4441440A400742074305090A410807"
theorem cover_2245822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2245822)
  decide +kernel
#print axioms cover_2245822

def state_2245841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 12)))
def hex_2245841 : String := "4042414409080741444305424041060708054308420840410644060708440A43074207400741440A08074241080A41440509440A430A40420841090A09"
theorem cover_2245841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2245841)
  decide +kernel
#print axioms cover_2245841

def state_2245902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 13)))
def hex_2245902 : String := "4042074108430744070742084108430808"
theorem cover_2245902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2245902)
  decide +kernel
#print axioms cover_2245902

def state_2245922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 12)))
def hex_2245922 : String := "410907"
theorem cover_2245922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2245922)
  decide +kernel
#print axioms cover_2245922

def state_2245926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
def hex_2245926 : String := "4344424041094443060607094006410644054305064208404108430909094442404106430906090609"
theorem cover_2245926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2245926)
  decide +kernel
#print axioms cover_2245926

def state_2245970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 24)))
def hex_2245970 : String := "40074441430A42074007444106070807410907"
theorem cover_2245970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2245970)
  decide +kernel
#print axioms cover_2245970
end Mub6.Numerical.CircleFullD0.Forest
