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
def state_1655175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1655175 : String := "434442410A0A410A08084442410A094140430A050940434409080909424140430807070808"
theorem cover_1655175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655175 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1655175)
  decide +kernel
#print axioms cover_1655175

def state_1655212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 20)))
def hex_1655212 : String := "44420741050942414005074043440707070741400507404344054241054005070505434407420741070707"
theorem cover_1655212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655212 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1655212)
  decide +kernel
#print axioms cover_1655212

def state_1655255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
def hex_1655255 : String := "43444209410A094241064043060706410A4043084409080A440707"
theorem cover_1655255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1655255)
  decide +kernel
#print axioms cover_1655255

def state_1655283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
def hex_1655283 : String := "4043440542410540054344050805410540054344050505054344420A410540050A420A410A40430805084405420705"
theorem cover_1655283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1655283)
  decide +kernel
#print axioms cover_1655283

def state_1655335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 40)))
def hex_1655335 : String := "4005434405420A410540050A05"
theorem cover_1655335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655335 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1655335)
  decide +kernel
#print axioms cover_1655335

def state_1655349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 40)))
def hex_1655349 : String := "434442410506054241400543440505054006434406424140050A0606060605"
theorem cover_1655349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655349 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1655349)
  decide +kernel
#print axioms cover_1655349
end Mub6.Numerical.CircleFullD0.Forest
