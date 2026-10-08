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
def state_1313814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_1313814 : String := "40064142444340064142440606060609434006414244430608084406430640064108060640084142080908440943060942440643060506"
theorem cover_1313814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 55) (hex := hex_1313814)
  decide +kernel
#print axioms cover_1313814

def state_1313869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
def hex_1313869 : String := "430609"
theorem cover_1313869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1313869)
  decide +kernel
#print axioms cover_1313869

def state_1313872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_1313872 : String := "420606"
theorem cover_1313872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1313872)
  decide +kernel
#print axioms cover_1313872

def state_1313875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_1313875 : String := "4409410909"
theorem cover_1313875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313875 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1313875)
  decide +kernel
#print axioms cover_1313875

def state_1313882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_1313882 : String := "41424043084408410809080842404306090808"
theorem cover_1313882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1313882)
  decide +kernel
#print axioms cover_1313882

def state_1313905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_1313905 : String := "444142430640060805064142434440060707444041420706064108074041070607434405400505444006054041050605424306440640060706"
theorem cover_1313905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1313905)
  decide +kernel
#print axioms cover_1313905

def state_1313964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_1313964 : String := "424043444108064142434406064440060840064108064306090644094109094344084108084408410A0A40434405060908"
theorem cover_1313964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1313964)
  decide +kernel
#print axioms cover_1313964

def state_1314013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_1314013 : String := "42404306094344060644090A4006430609"
theorem cover_1314013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1314013)
  decide +kernel
#print axioms cover_1314013
end Mub6.Numerical.CircleFullD0.Forest
