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
def state_2316433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 44)))
def hex_2316433 : String := "44410543054240440505050541430542400505054342404405410543420505080505424044410543420505420808410808440541050A4044050705"
theorem cover_2316433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2316433)
  decide +kernel
#print axioms cover_2316433

def state_2316494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 45)))
def hex_2316494 : String := "424044430742410740080707070707"
theorem cover_2316494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316494 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2316494)
  decide +kernel
#print axioms cover_2316494

def state_2316510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 45)))
def hex_2316510 : String := "40444341424044430808080A074240080640084443060806414240080A4008074208084341070808444341070A41420A070A430741070A"
theorem cover_2316510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316510 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2316510)
  decide +kernel
#print axioms cover_2316510

def state_2316565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 58 else 45)))
def hex_2316565 : String := "4044430741074208070707"
theorem cover_2316565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2316565)
  decide +kernel
#print axioms cover_2316565

def state_2316577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 45)))
def hex_2316577 : String := "424044424341060806430706084442430741050A070707"
theorem cover_2316577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316577 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2316577)
  decide +kernel
#print axioms cover_2316577

def state_2316600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 45)))
def hex_2316600 : String := "42404441420808420808084441420A430740080A420A430A0A414208070840444143070843080808444107430742400844410708070707"
theorem cover_2316600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2316600)
  decide +kernel
#print axioms cover_2316600
end Mub6.Numerical.CircleFullD0.Forest
