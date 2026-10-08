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
def state_959215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 39 else 27)))
def hex_959215 : String := "42440605444041434205080543420808084143420544060505064005410543420544050505"
theorem cover_959215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_959215)
  decide +kernel
#print axioms cover_959215

def state_959252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_959252 : String := "4143424407050A42054407054342440640410A4344060A0606440940410A4309420A090A420644064041050606"
theorem cover_959252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_959252)
  decide +kernel
#print axioms cover_959252

def state_959299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_959299 : String := "43400A0506"
theorem cover_959299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_959299)
  decide +kernel
#print axioms cover_959299

def state_959308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
def hex_959308 : String := "440A43424041090A41440509054041440A060A414443054205400A05434205054209400941080544050542400941090A400A41444342090A09090A"
theorem cover_959308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_959308)
  decide +kernel
#print axioms cover_959308

def state_959368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
def hex_959368 : String := "434041420A050505400A41420A440A43400A050A0A"
theorem cover_959368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_959368)
  decide +kernel
#print axioms cover_959368

def state_959391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
def hex_959391 : String := "4142444306420A06060642440A0606"
theorem cover_959391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_959391)
  decide +kernel
#print axioms cover_959391

def state_959406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
def hex_959406 : String := "414244430540424144050505050543064006424108054144050605440543054006410605424405430540414205050505440505"
theorem cover_959406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_959406)
  decide +kernel
#print axioms cover_959406
end Mub6.Numerical.CircleFullD0.Forest
