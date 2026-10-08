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
def state_2289083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
def hex_2289083 : String := "420743440941404207CF4206CF07440941404205440905424443060505444341400942060606414009424409050909434140420544090506060507"
theorem cover_2289083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 59) (hex := hex_2289083)
  decide +kernel
#print axioms cover_2289083

def state_2289142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
def hex_2289142 : String := "4206434441404206060606064441404243064406060906064140420644430641404206060606060606"
theorem cover_2289142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_2289142)
  decide +kernel
#print axioms cover_2289142

def state_2289183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
def hex_2289183 : String := "400706"
theorem cover_2289183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2289183)
  decide +kernel
#print axioms cover_2289183

def state_2289187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
def hex_2289187 : String := "4140094243440941400709064409414007090743090909"
theorem cover_2289187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2289187)
  decide +kernel
#print axioms cover_2289187

def state_2289212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
def hex_2289212 : String := "420744434140070907410A0543414005420544430505050505"
theorem cover_2289212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289212 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_2289212)
  decide +kernel
#print axioms cover_2289212

def state_2289238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 49 else 47)))
def hex_2289238 : String := "44434140420644070606064140054205444306050505430605"
theorem cover_2289238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289238 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2289238)
  decide +kernel
#print axioms cover_2289238

def state_2289265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 98 else 94)))
def hex_2289265 : String := "4140424409434140090606414005420506054409430909420644094306414206070609"
theorem cover_2289265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289265 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2289265)
  decide +kernel
#print axioms cover_2289265

def state_2289300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 99 else 94)))
def hex_2289300 : String := "4140424409050A42444309410A0943414005060505440943410A090A09"
theorem cover_2289300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2289300)
  decide +kernel
#print axioms cover_2289300
end Mub6.Numerical.CircleFullD0.Forest
