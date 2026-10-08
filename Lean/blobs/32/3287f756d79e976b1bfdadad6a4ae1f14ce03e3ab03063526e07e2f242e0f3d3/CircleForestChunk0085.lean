import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_20366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
def hex_20366 : String := "40410642434440064105420543070606064307064105420543074440070505"
theorem cover_20366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_20366)
  decide +kernel
#print axioms cover_20366

def state_20402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 20)))
def hex_20402 : String := "4140074207430A0707"
theorem cover_20402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_20402)
  decide +kernel
#print axioms cover_20402

def state_20414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 20)))
def hex_20414 : String := "4344074140420A430A4407060A404207090A44074140074207434407060607"
theorem cover_20414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20414 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_20414)
  decide +kernel
#print axioms cover_20414

def state_20447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 40)))
def hex_20447 : String := "4140434405054405420705434406420A06440742074140430507430607054005430507"
theorem cover_20447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_20447)
  decide +kernel
#print axioms cover_20447

def state_20484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 112 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 41)))
def hex_20484 : String := "434244410A050944050842444140420743410805074207430A0707094441400543424108050542414407060505054140080809"
theorem cover_20484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_20484)
  decide +kernel
#print axioms cover_20484

def state_20535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 41)))
def hex_20535 : String := "43420A44410805084244410A0A410A0944414043420A08424144070844070AA3430A420AA3404305420705430A4207A3414044430842090808440A08400909"
theorem cover_20535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_20535)
  decide +kernel
#print axioms cover_20535

def state_20598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 61) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 41)))
def hex_20598 : String := "4043050943420A0542440709440509"
theorem cover_20598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_20598)
  decide +kernel
#print axioms cover_20598

def state_20614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 40)))
def hex_20614 : String := "07"
theorem cover_20614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_20614)
  decide +kernel
#print axioms cover_20614
end Mub6.Numerical.CircleFullPrototype.Forest
