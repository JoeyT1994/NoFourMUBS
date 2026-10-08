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
def state_1524488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 89)))
def hex_1524488 : String := "41434044834208084483420A07404442414305050541438308050844420A41094383400509420941094340050605434044420505050640054442050505"
theorem cover_1524488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524488 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1524488)
  decide +kernel
#print axioms cover_1524488

def state_1524552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 64 else 88)))
def hex_1524552 : String := "40428344410A0A4107430A400A42830742834441430640420807060607"
theorem cover_1524552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1524552)
  decide +kernel
#print axioms cover_1524552

def state_1524586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 232) else (if j.val < 3 then 178 else (if j.val < 4 then 130 else 176)))
def hex_1524586 : String := "83"
theorem cover_1524586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524586 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1524586)
  decide +kernel
#print axioms cover_1524586

def state_1524588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 384 else 232) else (if j.val < 3 then 178 else (if j.val < 4 then 131 else 176)))
def hex_1524588 : String := "424407414383060544414383060741438306438305"
theorem cover_1524588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524588 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_1524588)
  decide +kernel
#print axioms cover_1524588

def state_1524609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 385 else 232) else (if j.val < 3 then 178 else (if j.val < 4 then 131 else 176)))
def hex_1524609 : String := "4244414383070741438309438340054205054441438340424406064406060843834007084143834042060609438340420505424409054441090509"
theorem cover_1524609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1524609)
  decide +kernel
#print axioms cover_1524609

def state_1524668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 233) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 176)))
def hex_1524668 : String := "4383404205440505420744074143830505"
theorem cover_1524668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1524668)
  decide +kernel
#print axioms cover_1524668

def state_1524685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 177)))
def hex_1524685 : String := "41438340424441430505050544414383060508424441094383054109054441438309438340054205094109438305438340054205440505"
theorem cover_1524685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1524685)
  decide +kernel
#print axioms cover_1524685
end Mub6.Numerical.CircleFullD0.Forest
