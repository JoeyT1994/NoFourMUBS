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
def state_1028874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 30)))
def hex_1028874 : String := "414243064441094006420606064306444106400606064243064440064142054305440505050643064440064142060642050606"
theorem cover_1028874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1028874)
  decide +kernel
#print axioms cover_1028874

def state_1028925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 30)))
def hex_1028925 : String := "414208084243054405404108050543440505444041420505050540410642050608"
theorem cover_1028925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1028925)
  decide +kernel
#print axioms cover_1028925

def state_1028958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 31)))
def hex_1028958 : String := "40064108424306444006080643064440060806"
theorem cover_1028958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1028958)
  decide +kernel
#print axioms cover_1028958

def state_1028978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 15)))
def hex_1028978 : String := "4344050644404205414305440506050540064205410505"
theorem cover_1028978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028978 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1028978)
  decide +kernel
#print axioms cover_1028978

def state_1029002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 15)))
def hex_1029002 : String := "4440060506"
theorem cover_1029002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1029002)
  decide +kernel
#print axioms cover_1029002

def state_1029008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 30)))
def hex_1029008 : String := "4041424306444006050643064440064142050505064208430608414205430544054041050505420505"
theorem cover_1029008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029008 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1029008)
  decide +kernel
#print axioms cover_1029008

def state_1029049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 31)))
def hex_1029049 : String := "400641424305444006050643064440064105050642430544050543054440060506"
theorem cover_1029049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1029049)
  decide +kernel
#print axioms cover_1029049

def state_1029084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
def hex_1029084 : String := "41420A43440A41400A420A43440A070A0A0A0A"
theorem cover_1029084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1029084)
  decide +kernel
#print axioms cover_1029084

def state_1029105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 14)))
def hex_1029105 : String := "434407404107070707"
theorem cover_1029105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029105 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1029105)
  decide +kernel
#print axioms cover_1029105

def state_1029116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
def hex_1029116 : String := "4041420A0A0A410606"
theorem cover_1029116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1029116)
  decide +kernel
#print axioms cover_1029116
end Mub6.Numerical.CircleFullD0.Forest
