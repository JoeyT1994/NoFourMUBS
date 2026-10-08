import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_8254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 9)))
def hex_8254 : String := "4044430A420A400A4441430A0509090944430A420A404441430A420A400A444106090909094441430906090909"
theorem cover_8254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_8254)
  decide +kernel
#print axioms cover_8254

def state_8302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 18)))
def hex_8302 : String := "404406074441420A0606410707"
theorem cover_8302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_8302)
  decide +kernel
#print axioms cover_8302

def state_8315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
def hex_8315 : String := "40444142430705060607444142434044410706074441420A070A0A400544410542050705074243094041440605064144420806090806414243070507420907"
theorem cover_8315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_8315)
  decide +kernel
#print axioms cover_8315

def state_8378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 19)))
def hex_8378 : String := "430707"
theorem cover_8378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_8378)
  decide +kernel
#print axioms cover_8378

def state_8383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 18)))
def hex_8383 : String := "404441420A430740074208060941420907094441420A05094142080809"
theorem cover_8383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_8383)
  decide +kernel
#print axioms cover_8383

def state_8417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 36)))
def hex_8417 : String := "404441420A4307070A41420907094441420A430840410707080941420943070709"
theorem cover_8417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_8417)
  decide +kernel
#print axioms cover_8417

def state_8451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 36)))
def hex_8451 : String := "444142054307054243090543074007449A074105420507"
theorem cover_8451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_8451)
  decide +kernel
#print axioms cover_8451

def state_8476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 108) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 72)))
def hex_8476 : String := "42434041050A41060A40050643404107449A0741440807449A420907404105449A0541449A05449A430705"
theorem cover_8476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_8476)
  decide +kernel
#print axioms cover_8476
end Mub6.Numerical.CircleFullPrototype.Forest
