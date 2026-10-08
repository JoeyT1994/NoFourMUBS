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
def state_1047328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_1047328 : String := "41404406060640444243410640440506064140440606064044050509430505424341064044060606410640444243050A054243060A050606440606"
theorem cover_1047328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1047328)
  decide +kernel
#print axioms cover_1047328

def state_1047387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_1047387 : String := "41404243440606080606404243444106404306440606064106404342090642080606444106404442430606064208060608434406064406064243060806"
theorem cover_1047387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1047387)
  decide +kernel
#print axioms cover_1047387

def state_1047448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_1047448 : String := "434406064406410606"
theorem cover_1047448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047448 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1047448)
  decide +kernel
#print axioms cover_1047448

def state_1047457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1047457 : String := "42430644060606"
theorem cover_1047457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1047457)
  decide +kernel
#print axioms cover_1047457

def state_1047466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
def hex_1047466 : String := "434144404307090A08444043420A0742444109400943090608440607430A420806404309080841084440420843440608080808"
theorem cover_1047466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047466 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1047466)
  decide +kernel
#print axioms cover_1047466

def state_1047517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
def hex_1047517 : String := "43410A44070A4144060644064042090506"
theorem cover_1047517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047517 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1047517)
  decide +kernel
#print axioms cover_1047517

def state_1047534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1047534 : String := "42430A08430606"
theorem cover_1047534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047534 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1047534)
  decide +kernel
#print axioms cover_1047534

def state_1047546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
def hex_1047546 : String := "4340444241084306080642080644060608"
theorem cover_1047546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047546 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1047546)
  decide +kernel
#print axioms cover_1047546
end Mub6.Numerical.CircleFullD0.Forest
