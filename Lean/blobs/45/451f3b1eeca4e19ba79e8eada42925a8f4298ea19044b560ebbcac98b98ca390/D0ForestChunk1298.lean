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
def state_1612087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
def hex_1612087 : String := "43440A4041050A084405400508"
theorem cover_1612087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1612087)
  decide +kernel
#print axioms cover_1612087

def state_1612104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 48)))
def hex_1612104 : String := "4142434406404206410706064440080740420841050809434405404105050A4405400541054207054209434440410508064041420905090944094041050809"
theorem cover_1612104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 63) (hex := hex_1612104)
  decide +kernel
#print axioms cover_1612104

def state_1612167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 48)))
def hex_1612167 : String := "4142060A09"
theorem cover_1612167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1612167)
  decide +kernel
#print axioms cover_1612167

def state_1612176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 49)))
def hex_1612176 : String := "4440420941430644400506404209410505090906404209414344404206410A0606404209410A09064440420941430A090909090909"
theorem cover_1612176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1612176)
  decide +kernel
#print axioms cover_1612176

def state_1612229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 49)))
def hex_1612229 : String := "44404208414344400507404208050909080909"
theorem cover_1612229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1612229)
  decide +kernel
#print axioms cover_1612229

def state_1612250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 98)))
def hex_1612250 : String := "404142430A05054243440A40410A0A064440050940410509090A410A0A"
theorem cover_1612250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1612250)
  decide +kernel
#print axioms cover_1612250

def state_1612279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 99)))
def hex_1612279 : String := "404142430A44404241050A050A4042410A090A0A0A42434440410A090940410A09094440414209050909090A410A42090A"
theorem cover_1612279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612279 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1612279)
  decide +kernel
#print axioms cover_1612279

def state_1612329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 61 else 98)))
def hex_1612329 : String := "404105424344050909054142430A4405090542090A"
theorem cover_1612329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612329 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1612329)
  decide +kernel
#print axioms cover_1612329
end Mub6.Numerical.CircleFullD0.Forest
