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
def state_2591341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 20)))
def hex_2591341 : String := "4340440505054044414205430540440505054205430540440505054142064306070605"
theorem cover_2591341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2591341)
  decide +kernel
#print axioms cover_2591341

def state_2591376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 20)))
def hex_2591376 : String := "430940444142430940440907090909414243400609074309074243060709440909"
theorem cover_2591376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591376 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2591376)
  decide +kernel
#print axioms cover_2591376

def state_2591409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 21)))
def hex_2591409 : String := "4142434006440506074340064409064007074243064006074340060940074441070707"
theorem cover_2591409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591409 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2591409)
  decide +kernel
#print axioms cover_2591409

def state_2591444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 10)))
def hex_2591444 : String := "44414205430540440505050941424305440505430944404142050909054007094243050509"
theorem cover_2591444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2591444)
  decide +kernel
#print axioms cover_2591444

def state_2591485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 20)))
def hex_2591485 : String := "434044410A420A43400A0A0A074408410807400A08"
theorem cover_2591485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2591485)
  decide +kernel
#print axioms cover_2591485

def state_2591506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 20)))
def hex_2591506 : String := "43404441420A43400A0606424340440A074406070A434044410642060607440607400706074406414208434007060642434007070743400706064044060706"
theorem cover_2591506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591506 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2591506)
  decide +kernel
#print axioms cover_2591506
end Mub6.Numerical.CircleFullD0.Forest
