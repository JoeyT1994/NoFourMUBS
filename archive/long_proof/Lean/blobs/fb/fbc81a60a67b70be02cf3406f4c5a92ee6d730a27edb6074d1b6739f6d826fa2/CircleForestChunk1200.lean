import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1588411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 81 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 102)))
def hex_1588411 : String := "434142440940430808050842444109400905054409410840090541420A09420A4409430909"
theorem cover_1588411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_1588411)
  decide +kernel
#print axioms cover_1588411

def state_1588448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 103)))
def hex_1588448 : String := "404341424440064341080506060642444007050544070741060643414244050508420544050541420A06420544434108050605"
theorem cover_1588448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1588448)
  decide +kernel
#print axioms cover_1588448

def state_1588499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
def hex_1588499 : String := "4342054441080505424443050505444341084042050805410840420508054305410805"
theorem cover_1588499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1588499)
  decide +kernel
#print axioms cover_1588499

def state_1588536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
def hex_1588536 : String := "4244414043050505050544414043420544060542444140070505054409074305420544050540430542050705414043054205070505"
theorem cover_1588536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1588536)
  decide +kernel
#print axioms cover_1588536

def state_1588590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 98 else (if j.val < 4 then 55 else 51)))
def hex_1588590 : String := "4441400A05400A0505"
theorem cover_1588590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1588590)
  decide +kernel
#print axioms cover_1588590

def state_1588601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 74) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 102)))
def hex_1588601 : String := "40434244414007094007054140070505440907420A44090743420544410940090505420A4441094309094143050A430505"
theorem cover_1588601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 49) (hex := hex_1588601)
  decide +kernel
#print axioms cover_1588601
end Mub6.Numerical.CircleFullD0.Forest
