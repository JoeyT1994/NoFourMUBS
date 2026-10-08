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
def state_22291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 21)))
def hex_22291 : String := "44404342410A0606424144404309084306084009430909094144404306420906064007074406094306424144060A08064043070943074241440A070907"
theorem cover_22291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_22291)
  decide +kernel
#print axioms cover_22291

def state_22352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 21)))
def hex_22352 : String := "444043054107050607"
theorem cover_22352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_22352)
  decide +kernel
#print axioms cover_22352

def state_22367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
def hex_22367 : String := "44414243400707070A08414243400644410A0806060A42080A"
theorem cover_22367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_22367)
  decide +kernel
#print axioms cover_22367

def state_22393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 40)))
def hex_22393 : String := "41424340080807434044080A44064109080808"
theorem cover_22393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_22393)
  decide +kernel
#print axioms cover_22393

def state_22414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 41)))
def hex_22414 : String := "4340444142080A0841420606420643A3064441420543A3080841420543A305420843A308400808"
theorem cover_22414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22414 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_22414)
  decide +kernel
#print axioms cover_22414

def state_22453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 41)))
def hex_22453 : String := "4340440A0A44414243400A090A0A42080A414243400A440A050A074243400A440A41070A0A0A400A440A0A"
theorem cover_22453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_22453)
  decide +kernel
#print axioms cover_22453

def state_22496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 41)))
def hex_22496 : String := "420843404408410A0844084142080A0808"
theorem cover_22496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_22496)
  decide +kernel
#print axioms cover_22496

def state_22513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 20)))
def hex_22513 : String := "4044080A44084142080A08"
theorem cover_22513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_22513)
  decide +kernel
#print axioms cover_22513

def state_22524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 20)))
def hex_22524 : String := "434044050A44410A05410A0A0A"
theorem cover_22524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22524 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_22524)
  decide +kernel
#print axioms cover_22524

def state_22537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
def hex_22537 : String := "424340080808430508"
theorem cover_22537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_22537)
  decide +kernel
#print axioms cover_22537
end Mub6.Numerical.CircleFullPrototype.Forest
