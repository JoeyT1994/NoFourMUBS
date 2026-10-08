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
def state_949920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
def hex_949920 : String := "42414443404205050506434042414407094405430507414405430540090705420741440507054042410707414407090A07440A4305400A06C7"
theorem cover_949920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_949920)
  decide +kernel
#print axioms cover_949920

def state_949977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 108)))
def hex_949977 : String := "40420AC742414406434042060A060606C7"
theorem cover_949977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_949977)
  decide +kernel
#print axioms cover_949977

def state_949996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 109)))
def hex_949996 : String := "4241444340094209410909090944434042090A4241090A41440A090A40090909C7"
theorem cover_949996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_949996)
  decide +kernel
#print axioms cover_949996

def state_950031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 109)))
def hex_950031 : String := "44434042094144434006080908444305400909094241084407074108440508400942074109440707430809"
theorem cover_950031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_950031)
  decide +kernel
#print axioms cover_950031

def state_950074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 109)))
def hex_950074 : String := "444340424144050905414405430509054241440505050540420941090A42410706414407094405430506434042094108080809"
theorem cover_950074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_950074)
  decide +kernel
#print axioms cover_950074

def state_950125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 87) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 109)))
def hex_950125 : String := "C7"
theorem cover_950125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950125 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_950125)
  decide +kernel
#print axioms cover_950125

def state_950126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 109)))
def hex_950126 : String := "404209C742410943444009060909C7"
theorem cover_950126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_950126)
  decide +kernel
#print axioms cover_950126
end Mub6.Numerical.CircleFullD0.Forest
