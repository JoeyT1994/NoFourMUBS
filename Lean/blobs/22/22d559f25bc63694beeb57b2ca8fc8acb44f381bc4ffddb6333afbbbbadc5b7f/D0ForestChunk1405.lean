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
def state_1637980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
def hex_1637980 : String := "4209440905"
theorem cover_1637980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1637980)
  decide +kernel
#print axioms cover_1637980

def state_1637987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 18)))
def hex_1637987 : String := "434042444108094143400708084340070740080844084143070807424409410909440941430A084307094042080809"
theorem cover_1637987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637987 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1637987)
  decide +kernel
#print axioms cover_1637987

def state_1638034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 18)))
def hex_1638034 : String := "434042440943414007070541400609064406430706420944094305094042090609"
theorem cover_1638034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1638034)
  decide +kernel
#print axioms cover_1638034

def state_1638071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 38)))
def hex_1638071 : String := "424143400744070740440808440842080843400707404442080742414307084307400707074442094107074241430508054107074143074007074307400707"
theorem cover_1638071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638071 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1638071)
  decide +kernel
#print axioms cover_1638071

def state_1638136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 50 else 39)))
def hex_1638136 : String := "4340070740444241084307080742410707074442414306084305400808414307080742410605410707"
theorem cover_1638136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1638136)
  decide +kernel
#print axioms cover_1638136

def state_1638177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 50 else 39)))
def hex_1638177 : String := "4340070540444241070707424107050744420541070505"
theorem cover_1638177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1638177)
  decide +kernel
#print axioms cover_1638177

def state_1638200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 50 else 39)))
def hex_1638200 : String := "4143074007074307400707"
theorem cover_1638200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638200 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1638200)
  decide +kernel
#print axioms cover_1638200
end Mub6.Numerical.CircleFullD0.Forest
