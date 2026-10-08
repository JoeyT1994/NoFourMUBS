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
def state_1653272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
def hex_1653272 : String := "4307444241404307054307440505400743074406420A0641400543070507424140074307440A07400743074407074140070707"
theorem cover_1653272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1653272)
  decide +kernel
#print axioms cover_1653272

def state_1653323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
def hex_1653323 : String := "4344420A07084442410A0A414043070A0A4043074406070A42410A4043070A08414043070A0808"
theorem cover_1653323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1653323)
  decide +kernel
#print axioms cover_1653323

def state_1653363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 40)))
def hex_1653363 : String := "404307440509434407074442410A404307050A410540050A42410A4043074405050841400508400708"
theorem cover_1653363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1653363)
  decide +kernel
#print axioms cover_1653363

def state_1653404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 40)))
def hex_1653404 : String := "404307440607430744424140070A400743074406074140060707424140070808410707"
theorem cover_1653404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1653404)
  decide +kernel
#print axioms cover_1653404

def state_1653439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 41)))
def hex_1653439 : String := "424140090808410908"
theorem cover_1653439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653439 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1653439)
  decide +kernel
#print axioms cover_1653439

def state_1653448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
def hex_1653448 : String := "43084442410A40430A0A0A4140430A440A080A40430844420A410A4043070A0A080808"
theorem cover_1653448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653448 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1653448)
  decide +kernel
#print axioms cover_1653448

def state_1653483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 21)))
def hex_1653483 : String := "08"
theorem cover_1653483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653483 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1653483)
  decide +kernel
#print axioms cover_1653483

def state_1653485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 10)))
def hex_1653485 : String := "05"
theorem cover_1653485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1653485)
  decide +kernel
#print axioms cover_1653485

def state_1653491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 50 else 20)))
def hex_1653491 : String := "440505"
theorem cover_1653491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1653491)
  decide +kernel
#print axioms cover_1653491
end Mub6.Numerical.CircleFullD0.Forest
