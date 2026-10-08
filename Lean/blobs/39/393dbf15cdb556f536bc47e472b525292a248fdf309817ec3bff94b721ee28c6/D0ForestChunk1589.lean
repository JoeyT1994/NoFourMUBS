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
def state_2254611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 45 else 25)))
def hex_2254611 : String := "444140420A430A440841400A0A08420A430544050A0A4140420A430A4441400A0A0A4140420A0A42090A0A420A430A4441400A050A414042090A090A0A"
theorem cover_2254611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2254611)
  decide +kernel
#print axioms cover_2254611

def state_2254672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
def hex_2254672 : String := "430A444140420A05050A41404209430A440A09090A"
theorem cover_2254672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254672 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2254672)
  decide +kernel
#print axioms cover_2254672

def state_2254693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 25)))
def hex_2254693 : String := "404344054105420A05444105084142404344054105054408410608430544054105420A05054240080A08430544054105420A05"
theorem cover_2254693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2254693)
  decide +kernel
#print axioms cover_2254693

def state_2254744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 25)))
def hex_2254744 : String := "420A4008430A44080A"
theorem cover_2254744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2254744)
  decide +kernel
#print axioms cover_2254744

def state_2254758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 24)))
def hex_2254758 : String := "4441400842440543050805084140424344080A4408414240080808080842430A44414008420A0508414042430A44080A08420A070A0808"
theorem cover_2254758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254758 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2254758)
  decide +kernel
#print axioms cover_2254758

def state_2254813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 24)))
def hex_2254813 : String := "44084140084243440841400842434407410708070708440841400807080808"
theorem cover_2254813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 31) (hex := hex_2254813)
  decide +kernel
#print axioms cover_2254813
end Mub6.Numerical.CircleFullD0.Forest
