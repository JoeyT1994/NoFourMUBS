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
def state_1621130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
def hex_1621130 : String := "414240094443094108420808094009444309410542050509424009444341090941420A0A0A09400944430941420A4005440509420A0609"
theorem cover_1621130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1621130)
  decide +kernel
#print axioms cover_1621130

def state_1621185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
def hex_1621185 : String := "41424008084005440508420A400A4443410A06060A"
theorem cover_1621185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621185 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1621185)
  decide +kernel
#print axioms cover_1621185

def state_1621210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
def hex_1621210 : String := "404443410842080808434108424044060606404408434106090844080608444341064206080843064106420608"
theorem cover_1621210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1621210)
  decide +kernel
#print axioms cover_1621210

def state_1621255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
def hex_1621255 : String := "404443410842080708434108424044070744074307080708444341080A08434108424044080606074108420808"
theorem cover_1621255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1621255)
  decide +kernel
#print axioms cover_1621255

def state_1621307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
def hex_1621307 : String := "44434108D3084341420808424044D3434106090844D3064044D3434107070844D343410607084108420808"
theorem cover_1621307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1621307)
  decide +kernel
#print axioms cover_1621307

def state_1621350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
def hex_1621350 : String := "44434108D30843410642064044D306064108420808"
theorem cover_1621350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621350 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1621350)
  decide +kernel
#print axioms cover_1621350
end Mub6.Numerical.CircleFullD0.Forest
