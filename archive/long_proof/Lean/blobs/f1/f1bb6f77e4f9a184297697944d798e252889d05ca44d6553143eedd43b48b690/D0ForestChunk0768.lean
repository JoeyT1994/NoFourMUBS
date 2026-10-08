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
def state_1485139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 105)))
def hex_1485139 : String := "4241064005054140434442060706060640434442414043050506050742060744070643444206070606"
theorem cover_1485139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485139 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1485139)
  decide +kernel
#print axioms cover_1485139

def state_1485180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 105 else 52)))
def hex_1485180 : String := "44420507420606"
theorem cover_1485180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485180 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1485180)
  decide +kernel
#print axioms cover_1485180

def state_1485187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 52)))
def hex_1485187 : String := "41074007430707"
theorem cover_1485187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1485187)
  decide +kernel
#print axioms cover_1485187

def state_1485194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 53)))
def hex_1485194 : String := "424106400843444206060606414005064043444241054008430A07050A44070843444241064043440706070605420605440706"
theorem cover_1485194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1485194)
  decide +kernel
#print axioms cover_1485194

def state_1485245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 26)))
def hex_1485245 : String := "4442410640084407060742064106400806"
theorem cover_1485245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485245 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1485245)
  decide +kernel
#print axioms cover_1485245

def state_1485262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
def hex_1485262 : String := "43444241064043440A0606064140434407060606404344070707430807420641064043444206060606064442060706"
theorem cover_1485262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485262 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1485262)
  decide +kernel
#print axioms cover_1485262

def state_1485313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
def hex_1485313 : String := "414043440542054140434405080543440542054107050505054344054205414043440542054107050543440542050705050505"
theorem cover_1485313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1485313)
  decide +kernel
#print axioms cover_1485313

def state_1485364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 52)))
def hex_1485364 : String := "414043440707074344070707400943440542050707"
theorem cover_1485364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1485364)
  decide +kernel
#print axioms cover_1485364
end Mub6.Numerical.CircleFullD0.Forest
