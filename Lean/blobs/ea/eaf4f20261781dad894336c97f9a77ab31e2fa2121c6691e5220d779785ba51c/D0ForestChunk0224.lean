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
def state_991234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 44)))
def hex_991234 : String := "4441424006430505404308440641420508064344080944094105090941420540434441050805444105060543050542064006430809"
theorem cover_991234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_991234)
  decide +kernel
#print axioms cover_991234

def state_991287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 44)))
def hex_991287 : String := "44414206400643440941050544060506414205404406050506"
theorem cover_991287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_991287)
  decide +kernel
#print axioms cover_991287

def state_991313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
def hex_991313 : String := "4344084107084441420608064107420608"
theorem cover_991313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_991313)
  decide +kernel
#print axioms cover_991313

def state_991331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 44)))
def hex_991331 : String := "4441424008430844080808084142404307074344080744410708070708"
theorem cover_991331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991331 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_991331)
  decide +kernel
#print axioms cover_991331

def state_991364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 88)))
def hex_991364 : String := "43440841424006430706070844064142064006444307060706"
theorem cover_991364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_991364)
  decide +kernel
#print axioms cover_991364

def state_991389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 88)))
def hex_991389 : String := "43444142090808414240434408050505400843084408050944C6414205404443410708414205070643074105054443090905420609"
theorem cover_991389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_991389)
  decide +kernel
#print axioms cover_991389

def state_991442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 88)))
def hex_991442 : String := "404308440808430844C641424044080744430841420907084307410709400744080708"
theorem cover_991442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_991442)
  decide +kernel
#print axioms cover_991442

def state_991477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 88)))
def hex_991477 : String := "4240060908"
theorem cover_991477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_991477)
  decide +kernel
#print axioms cover_991477
end Mub6.Numerical.CircleFullD0.Forest
