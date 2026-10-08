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
def state_2553878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_2553878 : String := "4243410A44090A414442094309070A440942090543410A44430A0A054144430A40064207060A4443070705"
theorem cover_2553878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_2553878)
  decide +kernel
#print axioms cover_2553878

def state_2553922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
def hex_2553922 : String := "43414409060609"
theorem cover_2553922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2553922)
  decide +kernel
#print axioms cover_2553922

def state_2553931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 24)))
def hex_2553931 : String := "4440430A42090A434206444108080842094441400A09400909410A400A430609400A430642060A"
theorem cover_2553931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2553931)
  decide +kernel
#print axioms cover_2553931

def state_2553970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 24)))
def hex_2553970 : String := "44404342060A4209410A44090543064206414409400A064409064043060A06"
theorem cover_2553970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2553970)
  decide +kernel
#print axioms cover_2553970

def state_2554003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
def hex_2554003 : String := "4043420944410A4007090A42094441064006090A43420944414009090941400A09400A09420944410909414042090A09400909"
theorem cover_2554003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_2554003)
  decide +kernel
#print axioms cover_2554003

def state_2554054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
def hex_2554054 : String := "40430A420A0A4342090A42094144400A42090A0A44400A42094309090A"
theorem cover_2554054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554054 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2554054)
  decide +kernel
#print axioms cover_2554054

def state_2554084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
def hex_2554084 : String := "4043420941444007090A4407054209414407400509074342094144094009090909"
theorem cover_2554084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2554084)
  decide +kernel
#print axioms cover_2554084
end Mub6.Numerical.CircleFullD0.Forest
