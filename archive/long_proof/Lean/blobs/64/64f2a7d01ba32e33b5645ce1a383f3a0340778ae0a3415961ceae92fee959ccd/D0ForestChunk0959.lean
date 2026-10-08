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
def state_1530647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_1530647 : String := "4344400A0A40414342440A40070A4440090A4041430907094143420A44084143050A050A0A4207440A40070A094143420A44084143080A080A0A0A"
theorem cover_1530647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_1530647)
  decide +kernel
#print axioms cover_1530647

def state_1530708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1530708 : String := "40414209060808"
theorem cover_1530708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530708 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1530708)
  decide +kernel
#print axioms cover_1530708

def state_1530718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
def hex_1530718 : String := "4344400908404143090909414308424408414043050A080808084440090A4041424309074309090941420A434408414042430509080808440A41400A0A0A0A"
theorem cover_1530718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530718 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1530718)
  decide +kernel
#print axioms cover_1530718

def state_1530781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
def hex_1530781 : String := "43084409400941424308440841400908080808"
theorem cover_1530781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530781 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1530781)
  decide +kernel
#print axioms cover_1530781

def state_1530800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1530800 : String := "4243080908"
theorem cover_1530800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530800 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1530800)
  decide +kernel
#print axioms cover_1530800

def state_1530805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1530805 : String := "41424308440A41400A0A0A0808"
theorem cover_1530805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530805 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1530805)
  decide +kernel
#print axioms cover_1530805

def state_1530819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_1530819 : String := "40090A"
theorem cover_1530819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530819 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1530819)
  decide +kernel
#print axioms cover_1530819

def state_1530822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_1530822 : String := "40414243440A4041420909090A440540090A43440940094142434409414009420A0909440541050943080909090941420A43440841420A080A4405050A"
theorem cover_1530822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 61) (hex := hex_1530822)
  decide +kernel
#print axioms cover_1530822

def state_1530883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1530883 : String := "420A434408080A"
theorem cover_1530883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1530883)
  decide +kernel
#print axioms cover_1530883

def state_1530890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1530890 : String := "41420A434408080A0A"
theorem cover_1530890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530890 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1530890)
  decide +kernel
#print axioms cover_1530890
end Mub6.Numerical.CircleFullD0.Forest
