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
def state_977973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 124 else (if j.val < 4 then 87 else 114)))
def hex_977973 : String := "404143440805084344084205400A414344060505060641434406050606"
theorem cover_977973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_977973)
  decide +kernel
#print axioms cover_977973

def state_978004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 176) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 114)))
def hex_978004 : String := "4344084240410843440842050708410843440842054041050741050908404108434408070841084344084240410807094007090808"
theorem cover_978004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_978004)
  decide +kernel
#print axioms cover_978004

def state_978057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 177) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 114)))
def hex_978057 : String := "43440842400A414344084240070609440642050A0A400A4143090A090A"
theorem cover_978057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_978057)
  decide +kernel
#print axioms cover_978057

def state_978086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 114)))
def hex_978086 : String := "414344084240410843090841430805064041084309084109090843440842404143090606060906"
theorem cover_978086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_978086)
  decide +kernel
#print axioms cover_978086

def state_978126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 124 else (if j.val < 4 then 87 else 115)))
def hex_978126 : String := "05"
theorem cover_978126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_978126)
  decide +kernel
#print axioms cover_978126

def state_978128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 88) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 115)))
def hex_978128 : String := "4143444205404143060507414344420506050543074442054007410507050505434442400741050740070707444205400A4143440A05050A05"
theorem cover_978128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978128 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_978128)
  decide +kernel
#print axioms cover_978128

def state_978186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 176) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 115)))
def hex_978186 : String := "434442054041430A054344424041050909090544420540410543090541050905410A43094409050505"
theorem cover_978186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_978186)
  decide +kernel
#print axioms cover_978186
end Mub6.Numerical.CircleFullD0.Forest
