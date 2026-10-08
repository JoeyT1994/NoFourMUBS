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
def state_1464958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
def hex_1464958 : String := "44084006410906"
theorem cover_1464958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1464958)
  decide +kernel
#print axioms cover_1464958

def state_1464966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_1464966 : String := "404142430844420808084308440808424306440806084142430844050808420808"
theorem cover_1464966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1464966)
  decide +kernel
#print axioms cover_1464966

def state_1464999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_1464999 : String := "4041420644430640064142070A0806064142440807440843090742440806440808"
theorem cover_1464999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1464999)
  decide +kernel
#print axioms cover_1464999

def state_1465033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
def hex_1465033 : String := "444041434208074244074007080743070741430842080A0840414306444206400641094306440706060641430909434408064442080A09"
theorem cover_1465033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465033 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1465033)
  decide +kernel
#print axioms cover_1465033

def state_1465089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_1465089 : String := "40414243440740414205050741050844054041050841050843074405404105070542080741420505420808"
theorem cover_1465089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1465089)
  decide +kernel
#print axioms cover_1465089

def state_1465137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
def hex_1465137 : String := "404144420643064206070606414442050542060944420643060806"
theorem cover_1465137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1465137)
  decide +kernel
#print axioms cover_1465137

def state_1465164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
def hex_1465164 : String := "40410A4442084341420607060942060A414405420A0A4408424306084340064144050606400A410A08"
theorem cover_1465164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1465164)
  decide +kernel
#print axioms cover_1465164
end Mub6.Numerical.CircleFullD0.Forest
