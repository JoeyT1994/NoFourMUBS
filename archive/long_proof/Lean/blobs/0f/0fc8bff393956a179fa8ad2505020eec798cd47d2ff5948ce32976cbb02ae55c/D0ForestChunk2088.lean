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
def state_2581583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 36)))
def hex_2581583 : String := "4041444305074305420540410707050A410505"
theorem cover_2581583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2581583)
  decide +kernel
#print axioms cover_2581583

def state_2581603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 104 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
def hex_2581603 : String := "4144424340410707054041064406080643070642434041080805084340414406080A4106084041060A064442430A0A0A42430A400A080A"
theorem cover_2581603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2581603)
  decide +kernel
#print axioms cover_2581603

def state_2581658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 105 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
def hex_2581658 : String := "41440608444208064208430908"
theorem cover_2581658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581658 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2581658)
  decide +kernel
#print axioms cover_2581658

def state_2581671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 36)))
def hex_2581671 : String := "4340414407424307400707070A09404144064243404106070606060A410644060A"
theorem cover_2581671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581671 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2581671)
  decide +kernel
#print axioms cover_2581671

def state_2581705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 37)))
def hex_2581705 : String := "43404144430542054041440A080A05430542054041080605440A0A4105054041444208434041080A0808084442430A080A42080A410808"
theorem cover_2581705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2581705)
  decide +kernel
#print axioms cover_2581705

def state_2581761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
def hex_2581761 : String := "40414442430A400A0A0ADC0A4144094205090A"
theorem cover_2581761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2581761)
  decide +kernel
#print axioms cover_2581761

def state_2581780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
def hex_2581780 : String := "40414442434041440A0A0A41080A4041080A0843400A0A400A0642434041080A080843400A0A40414408080A080A414442080608440A0A"
theorem cover_2581780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2581780)
  decide +kernel
#print axioms cover_2581780
end Mub6.Numerical.CircleFullD0.Forest
