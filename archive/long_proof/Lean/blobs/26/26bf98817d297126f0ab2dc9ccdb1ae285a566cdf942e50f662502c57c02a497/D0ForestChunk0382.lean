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
def state_1029128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 29)))
def hex_1029128 : String := "4344410A0A4109400942074344050909440A09"
theorem cover_1029128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029128 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1029128)
  decide +kernel
#print axioms cover_1029128

def state_1029149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 58)))
def hex_1029149 : String := "4140420A0A42440A4341400A05050A4443050A434140420A0705400A0541400A4208080A400A420A0A"
theorem cover_1029149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1029149)
  decide +kernel
#print axioms cover_1029149

def state_1029191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 96) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 59)))
def hex_1029191 : String := "40420907424344410840090508094344410840070808444108400A0808"
theorem cover_1029191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029191 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1029191)
  decide +kernel
#print axioms cover_1029191

def state_1029220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 97) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 59)))
def hex_1029220 : String := "40420A0742434441400A0505414009084042050A05440A09434441400705054140070840074205054441400A420A0A0A414007084007420A07"
theorem cover_1029220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1029220)
  decide +kernel
#print axioms cover_1029220

def state_1029277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 29)))
def hex_1029277 : String := "440A41400909400A420943440A41090A0A"
theorem cover_1029277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1029277)
  decide +kernel
#print axioms cover_1029277

def state_1029294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
def hex_1029294 : String := "4243440A400A410A0A0A43440A40410A0A4142434405400A050A434405400705440A400A410A0A420A0A0A"
theorem cover_1029294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1029294)
  decide +kernel
#print axioms cover_1029294

def state_1029339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 29)))
def hex_1029339 : String := "07"
theorem cover_1029339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029339 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1029339)
  decide +kernel
#print axioms cover_1029339

def state_1029341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 29)))
def hex_1029341 : String := "44404142074405430506420544050506404142080842430544070843440505444041080505084108420508"
theorem cover_1029341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1029341)
  decide +kernel
#print axioms cover_1029341
end Mub6.Numerical.CircleFullD0.Forest
