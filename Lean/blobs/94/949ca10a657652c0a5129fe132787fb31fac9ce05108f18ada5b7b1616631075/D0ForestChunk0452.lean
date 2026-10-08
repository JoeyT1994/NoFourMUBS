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
def state_1046080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 51)))
def hex_1046080 : String := "4442410540430544050505410A40430A44090A094205410A40430A8105"
theorem cover_1046080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1046080)
  decide +kernel
#print axioms cover_1046080

def state_1046110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 102)))
def hex_1046110 : String := "42414044430505050540440743050707414044430909434205410A814241058141404443060608068144094305094044098109"
theorem cover_1046110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046110 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1046110)
  decide +kernel
#print axioms cover_1046110

def state_1046161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 103)))
def hex_1046161 : String := "4241054043050805414043444205410581050843050581"
theorem cover_1046161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1046161)
  decide +kernel
#print axioms cover_1046161

def state_1046184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
def hex_1046184 : String := "430A4409420541054043050505"
theorem cover_1046184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046184 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1046184)
  decide +kernel
#print axioms cover_1046184

def state_1046197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1046197 : String := "430A440942050A"
theorem cover_1046197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1046197)
  decide +kernel
#print axioms cover_1046197

def state_1046205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1046205 : String := "40430A44060606"
theorem cover_1046205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1046205)
  decide +kernel
#print axioms cover_1046205

def state_1046214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 25)))
def hex_1046214 : String := "44420A06420A06"
theorem cover_1046214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046214 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1046214)
  decide +kernel
#print axioms cover_1046214

def state_1046222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 50)))
def hex_1046222 : String := "4241404409430606064044084308090906"
theorem cover_1046222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1046222)
  decide +kernel
#print axioms cover_1046222

def state_1046241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1046241 : String := "404344060644060606"
theorem cover_1046241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1046241)
  decide +kernel
#print axioms cover_1046241

def state_1046252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 51)))
def hex_1046252 : String := "4442410A4008090842410A40430A810A41064043060606"
theorem cover_1046252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1046252)
  decide +kernel
#print axioms cover_1046252

def state_1046275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 51)))
def hex_1046275 : String := "44424140444306094342410681064241068106064044098109410640440606064241404344424106810642410581064442410681064208060681410681"
theorem cover_1046275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046275 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1046275)
  decide +kernel
#print axioms cover_1046275

def state_1046336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1046336 : String := "430A440606"
theorem cover_1046336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046336 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1046336)
  decide +kernel
#print axioms cover_1046336
end Mub6.Numerical.CircleFullD0.Forest
