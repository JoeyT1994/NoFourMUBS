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
def state_1482562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 207 else 104)))
def hex_1482562 : String := "44074241404344074241400A09400A43090707074344074209070740434407424140430A0543070505070743440742410905070707"
theorem cover_1482562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1482562)
  decide +kernel
#print axioms cover_1482562

def state_1482615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 67) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 104)))
def hex_1482615 : String := "4043064406420506434406424140430644054205060805074407420507"
theorem cover_1482615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1482615)
  decide +kernel
#print axioms cover_1482615

def state_1482645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 105)))
def hex_1482645 : String := "4140434442070A08084309444209414043090606404309080908404344420541400A430A050508084344420541090509440508"
theorem cover_1482645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1482645)
  decide +kernel
#print axioms cover_1482645

def state_1482698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 105)))
def hex_1482698 : String := "430A0A"
theorem cover_1482698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1482698)
  decide +kernel
#print axioms cover_1482698

def state_1482702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 206 else 105)))
def hex_1482702 : String := "44424109400A090A0A"
theorem cover_1482702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1482702)
  decide +kernel
#print axioms cover_1482702

def state_1482711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 207 else 105)))
def hex_1482711 : String := "44424140430A44424106400806070843090640434442410A400A09070A44424140084309060507084344090944424106050742060607424106400A090A"
theorem cover_1482711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482711 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1482711)
  decide +kernel
#print axioms cover_1482711

def state_1482773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 67) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 105)))
def hex_1482773 : String := "430A4442414008430A08050A0A"
theorem cover_1482773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1482773)
  decide +kernel
#print axioms cover_1482773
end Mub6.Numerical.CircleFullD0.Forest
