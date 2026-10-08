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
def state_2580890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 16)))
def hex_2580890 : String := "4342054041054405050542404105080540410A444342050642080643420540410644430506430508054208404106080606"
theorem cover_2580890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580890 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 49) (hex := hex_2580890)
  decide +kernel
#print axioms cover_2580890

def state_2580939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 17)))
def hex_2580939 : String := "4342054041050505420840410844080808"
theorem cover_2580939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2580939)
  decide +kernel
#print axioms cover_2580939

def state_2580956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
def hex_2580956 : String := "410505"
theorem cover_2580956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580956 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2580956)
  decide +kernel
#print axioms cover_2580956

def state_2580959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
def hex_2580959 : String := "4041084442084340410644060806060808"
theorem cover_2580959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2580959)
  decide +kernel
#print axioms cover_2580959

def state_2580979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
def hex_2580979 : String := "4406424340410644060A050606"
theorem cover_2580979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2580979)
  decide +kernel
#print axioms cover_2580979

def state_2580993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 16)))
def hex_2580993 : String := "4243404106440743074240070506060606"
theorem cover_2580993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2580993)
  decide +kernel
#print axioms cover_2580993

def state_2581014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
def hex_2581014 : String := "4443050643054205404106440643050605"
theorem cover_2581014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581014 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2581014)
  decide +kernel
#print axioms cover_2581014

def state_2581032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 34)))
def hex_2581032 : String := "43420507424041054407430542050505400706"
theorem cover_2581032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2581032)
  decide +kernel
#print axioms cover_2581032

def state_2581051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 35)))
def hex_2581051 : String := "43420540410505054240410544050505404144074342050742084007064443074240070507434205074208400A4106074105440505"
theorem cover_2581051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581051 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2581051)
  decide +kernel
#print axioms cover_2581051

def state_2581104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
def hex_2581104 : String := "410505"
theorem cover_2581104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2581104)
  decide +kernel
#print axioms cover_2581104

def state_2581109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
def hex_2581109 : String := "4406420806"
theorem cover_2581109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2581109)
  decide +kernel
#print axioms cover_2581109
end Mub6.Numerical.CircleFullD0.Forest
