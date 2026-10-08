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
def state_1461846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
def hex_1461846 : String := "4241400644064306050506"
theorem cover_1461846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1461846)
  decide +kernel
#print axioms cover_1461846

def state_1461860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1461860 : String := "43064405420541400643060805"
theorem cover_1461860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1461860)
  decide +kernel
#print axioms cover_1461860

def state_1461874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1461874 : String := "444205064207414006430644060706"
theorem cover_1461874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1461874)
  decide +kernel
#print axioms cover_1461874

def state_1461889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
def hex_1461889 : String := "44420541400644054305050542054140434406074405084344420506420741400743070740064306054405420541800505"
theorem cover_1461889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1461889)
  decide +kernel
#print axioms cover_1461889

def state_1461938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 17) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1461938 : String := "05"
theorem cover_1461938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461938)
  decide +kernel
#print axioms cover_1461938

def state_1461941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1461941 : String := "06"
theorem cover_1461941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461941 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461941)
  decide +kernel
#print axioms cover_1461941

def state_1461943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 25)))
def hex_1461943 : String := "4406420606"
theorem cover_1461943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1461943)
  decide +kernel
#print axioms cover_1461943

def state_1461949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 50)))
def hex_1461949 : String := "420606"
theorem cover_1461949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461949 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1461949)
  decide +kernel
#print axioms cover_1461949

def state_1461954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1461954 : String := "40430644064206064344064241400643068006064442414006440680060642418040064344064241060506444205064205418005410706"
theorem cover_1461954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1461954)
  decide +kernel
#print axioms cover_1461954

def state_1462009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1462009 : String := "400643064406420506"
theorem cover_1462009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1462009)
  decide +kernel
#print axioms cover_1462009

def state_1462018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 51)))
def hex_1462018 : String := "07"
theorem cover_1462018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462018 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462018)
  decide +kernel
#print axioms cover_1462018

def state_1462019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1462019 : String := "06"
theorem cover_1462019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462019 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462019)
  decide +kernel
#print axioms cover_1462019

def state_1462020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_1462020 : String := "42054006430644054142050605"
theorem cover_1462020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1462020)
  decide +kernel
#print axioms cover_1462020

def state_1462035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_1462035 : String := "40074344070707"
theorem cover_1462035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1462035)
  decide +kernel
#print axioms cover_1462035

def state_1462043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
def hex_1462043 : String := "430A4442080A08"
theorem cover_1462043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1462043)
  decide +kernel
#print axioms cover_1462043

def state_1462051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_1462051 : String := "444241400A43094407074006434406094442060642070A410A4006430644060A0A"
theorem cover_1462051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462051 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1462051)
  decide +kernel
#print axioms cover_1462051
end Mub6.Numerical.CircleFullD0.Forest
