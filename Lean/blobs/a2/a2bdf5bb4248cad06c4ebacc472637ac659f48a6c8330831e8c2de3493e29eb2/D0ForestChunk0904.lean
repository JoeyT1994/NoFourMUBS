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
def state_1517522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 31)))
def hex_1517522 : String := "43054441404209050840090805"
theorem cover_1517522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1517522)
  decide +kernel
#print axioms cover_1517522

def state_1517535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 46) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
def hex_1517535 : String := "4243084441400A080A4140420643050606400A0608"
theorem cover_1517535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517535 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1517535)
  decide +kernel
#print axioms cover_1517535

def state_1517556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 47) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
def hex_1517556 : String := "404243440805440A4140090A0A43054408054243080A08"
theorem cover_1517556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1517556)
  decide +kernel
#print axioms cover_1517556

def state_1517580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
def hex_1517580 : String := "4140420A434409414009420908094405410909420A430A050A"
theorem cover_1517580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517580 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1517580)
  decide +kernel
#print axioms cover_1517580

def state_1517608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 31)))
def hex_1517608 : String := "43444140420A090A0A414042074344090508420A43440A41060A440A064042074309070A440A4140080A0A"
theorem cover_1517608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1517608)
  decide +kernel
#print axioms cover_1517608

def state_1517653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
def hex_1517653 : String := "4140420909424344094140090A090A4308094009420A09"
theorem cover_1517653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1517653)
  decide +kernel
#print axioms cover_1517653

def state_1517677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 92) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 63)))
def hex_1517677 : String := "4042430509430509424344414005420A0540090A054441404209094206430A060A41404206050640420905420643050643054441400942430909070905"
theorem cover_1517677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517677 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1517677)
  decide +kernel
#print axioms cover_1517677

def state_1517738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 93) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 63)))
def hex_1517738 : String := "4042090942434409050A43054409410505"
theorem cover_1517738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1517738)
  decide +kernel
#print axioms cover_1517738

def state_1517756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 62)))
def hex_1517756 : String := "414009420A43090940090A"
theorem cover_1517756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517756 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1517756)
  decide +kernel
#print axioms cover_1517756

def state_1517769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 92) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
def hex_1517769 : String := "4243090809"
theorem cover_1517769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1517769)
  decide +kernel
#print axioms cover_1517769
end Mub6.Numerical.CircleFullD0.Forest
