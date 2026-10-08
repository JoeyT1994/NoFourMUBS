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
def state_1655380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 40)))
def hex_1655380 : String := "434442414005090941400509400609424140430A050A4043440A0844094209060A41404344050A050A404344060806430A440908440942410509410506"
theorem cover_1655380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1655380)
  decide +kernel
#print axioms cover_1655380

def state_1655441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 63 else (if j.val < 4 then 52 else 40)))
def hex_1655441 : String := "41400543440505054006434442414005430A0506064241400643440A080540064308060606"
theorem cover_1655441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1655441)
  decide +kernel
#print axioms cover_1655441

def state_1655480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 41)))
def hex_1655480 : String := "4043444241054005050508054344420A410A40430805080844054241050808"
theorem cover_1655480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655480 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1655480)
  decide +kernel
#print axioms cover_1655480

def state_1655512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 41)))
def hex_1655512 : String := "434442414043440507054308440505404344060606430844060841400543080540064308060844424105060542414005430805400643080606"
theorem cover_1655512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655512 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1655512)
  decide +kernel
#print axioms cover_1655512

def state_1655569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 41)))
def hex_1655569 : String := "43444241404308440A08080808084442414005430A054043444209060806430809414005430805400643080608"
theorem cover_1655569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655569 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1655569)
  decide +kernel
#print axioms cover_1655569
end Mub6.Numerical.CircleFullD0.Forest
