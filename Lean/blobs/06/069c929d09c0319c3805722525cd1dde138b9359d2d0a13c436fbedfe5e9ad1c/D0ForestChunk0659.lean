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
def state_1458861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_1458861 : String := "44414240060806420606410A42400A430A44410A060A0A"
theorem cover_1458861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1458861)
  decide +kernel
#print axioms cover_1458861

def state_1458885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_1458885 : String := "414240064344064106064405410706400643060642400643060506"
theorem cover_1458885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1458885)
  decide +kernel
#print axioms cover_1458885

def state_1458913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_1458913 : String := "42400A430A4441074207400609090A"
theorem cover_1458913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1458913)
  decide +kernel
#print axioms cover_1458913

def state_1458930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
def hex_1458930 : String := "4344060A4406410706"
theorem cover_1458930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1458930)
  decide +kernel
#print axioms cover_1458930

def state_1458939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
def hex_1458939 : String := "434441424006090606410A42404306410606094006430A4106064441420506420506414207400A094240074309054006434109064107440507"
theorem cover_1458939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1458939)
  decide +kernel
#print axioms cover_1458939

def state_1458996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 13)))
def hex_1458996 : String := "404306064344060A4406410A420606"
theorem cover_1458996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1458996)
  decide +kernel
#print axioms cover_1458996

def state_1459011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_1459011 : String := "400A430A410A4244400A430A410A4442070A0A0A0A"
theorem cover_1459011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459011 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1459011)
  decide +kernel
#print axioms cover_1459011

def state_1459032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_1459032 : String := "430A44400A42430A44060A0A0A"
theorem cover_1459032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1459032)
  decide +kernel
#print axioms cover_1459032

def state_1459049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
def hex_1459049 : String := "4144060A09"
theorem cover_1459049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1459049)
  decide +kernel
#print axioms cover_1459049

def state_1459055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
def hex_1459055 : String := "44424340064405070643060642430A400A410A444307060A0A"
theorem cover_1459055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1459055)
  decide +kernel
#print axioms cover_1459055
end Mub6.Numerical.CircleFullD0.Forest
