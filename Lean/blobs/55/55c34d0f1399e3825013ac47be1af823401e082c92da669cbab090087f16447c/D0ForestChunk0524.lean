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
def state_1314514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 47)))
def hex_1314514 : String := "42440A404307080A44404341420A440A0A0A0A0A40434142074440430709070742074440070707410A0A0A"
theorem cover_1314514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1314514)
  decide +kernel
#print axioms cover_1314514

def state_1314558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
def hex_1314558 : String := "40434105060943410508410542440940090A05"
theorem cover_1314558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1314558)
  decide +kernel
#print axioms cover_1314558

def state_1314578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
def hex_1314578 : String := "43410542440606054142440940094305090509"
theorem cover_1314578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1314578)
  decide +kernel
#print axioms cover_1314578

def state_1314597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
def hex_1314597 : String := "43410542444043054105060540430541054207050505410542444043410509094341050A094043410542440940094307090909434105420A050A05"
theorem cover_1314597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1314597)
  decide +kernel
#print axioms cover_1314597

def state_1314658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 46)))
def hex_1314658 : String := "40430609434142440A074406060641420A44090A0A"
theorem cover_1314658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314658 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1314658)
  decide +kernel
#print axioms cover_1314658

def state_1314679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 47)))
def hex_1314679 : String := "404341420506054142054405050543414207444006070705414205444043410A05090A404341420544090705050A05"
theorem cover_1314679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1314679)
  decide +kernel
#print axioms cover_1314679
end Mub6.Numerical.CircleFullD0.Forest
