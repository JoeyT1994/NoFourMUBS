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
def state_1510609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 121)))
def hex_1510609 : String := "42440A4007414307070A444041434244060505420A094306094143080A0A404105430542050541430542440A05054305420A05"
theorem cover_1510609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1510609)
  decide +kernel
#print axioms cover_1510609

def state_1510660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 121)))
def hex_1510660 : String := "42440A07444041434209090A090A4041434207050743420709074143420A44400A0A054207440A4007060A"
theorem cover_1510660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1510660)
  decide +kernel
#print axioms cover_1510660

def state_1510703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 121)))
def hex_1510703 : String := "418843420A44400A0840414308420A0843080A410808420A440A4041430A0A0A0A"
theorem cover_1510703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510703 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1510703)
  decide +kernel
#print axioms cover_1510703

def state_1510737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 120)))
def hex_1510737 : String := "4041884306424406400641080606418808"
theorem cover_1510737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1510737)
  decide +kernel
#print axioms cover_1510737

def state_1510755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 121)))
def hex_1510755 : String := "4188434244400608050842444009414308420A094308094041430542090509414305424440090A0505434244080505420A0944064005410505"
theorem cover_1510755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510755 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1510755)
  decide +kernel
#print axioms cover_1510755

def state_1510812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 121)))
def hex_1510812 : String := "41884308424440410808084041430842440A40410505064408054308420A0841080808"
theorem cover_1510812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510812 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1510812)
  decide +kernel
#print axioms cover_1510812
end Mub6.Numerical.CircleFullD0.Forest
