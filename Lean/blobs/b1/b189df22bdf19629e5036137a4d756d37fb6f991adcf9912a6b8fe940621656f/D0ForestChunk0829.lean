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
def state_1499665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
def hex_1499665 : String := "434441424006430605060641424008434441080808080A42400643440642080608064441420509054108420509"
theorem cover_1499665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1499665)
  decide +kernel
#print axioms cover_1499665

def state_1499712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 56)))
def hex_1499712 : String := "41424043440541420505050505404306440541420506054344074107074405410705420506"
theorem cover_1499712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1499712)
  decide +kernel
#print axioms cover_1499712

def state_1499752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 40) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 57)))
def hex_1499752 : String := "43444142080A4205400605410A420840080A4441080508"
theorem cover_1499752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499752 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1499752)
  decide +kernel
#print axioms cover_1499752

def state_1499775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 40) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 57)))
def hex_1499775 : String := "4344414205404344410A050A44050A430944050905414209400A094205404344410A050A44050A4344410505094405094405414205400806420505"
theorem cover_1499775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1499775)
  decide +kernel
#print axioms cover_1499775

def state_1499835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 40) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 57)))
def hex_1499835 : String := "430A44410A42400605060A"
theorem cover_1499835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499835 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1499835)
  decide +kernel
#print axioms cover_1499835

def state_1499846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 40) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 57)))
def hex_1499846 : String := "43444142400A070742404306070707410A42400A43070A07444142404307070707420507410A4240430A4405084344070744050707"
theorem cover_1499846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1499846)
  decide +kernel
#print axioms cover_1499846
end Mub6.Numerical.CircleFullD0.Forest
