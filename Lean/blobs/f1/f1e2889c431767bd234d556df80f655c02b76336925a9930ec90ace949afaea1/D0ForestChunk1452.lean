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
def state_1649221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 40)))
def hex_1649221 : String := "4241054005434408424140054344050A05A04105A0054105400543440542410540054344054241054005434405070505050505"
theorem cover_1649221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 51) (hex := hex_1649221)
  decide +kernel
#print axioms cover_1649221

def state_1649274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1649274 : String := "4043440505054344424105400543060505424140050640430905064105400943090505"
theorem cover_1649274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1649274)
  decide +kernel
#print axioms cover_1649274

def state_1649310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1649310 : String := "434442410543404244050905A0054105434005A00542410943094009A0094405424105400543A00505"
theorem cover_1649310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649310 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1649310)
  decide +kernel
#print axioms cover_1649310

def state_1649353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 82)))
def hex_1649353 : String := "424140434244054105A044054105A005434206440A064244054105A044054105A0A0414043440505054344424105A00542410AA04105A005A0"
theorem cover_1649353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649353 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1649353)
  decide +kernel
#print axioms cover_1649353

def state_1649410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 83)))
def hex_1649410 : String := "424140430944424105A00509430644420641400506A006A0414009430944424105A04105A009A0"
theorem cover_1649410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1649410)
  decide +kernel
#print axioms cover_1649410
end Mub6.Numerical.CircleFullD0.Forest
