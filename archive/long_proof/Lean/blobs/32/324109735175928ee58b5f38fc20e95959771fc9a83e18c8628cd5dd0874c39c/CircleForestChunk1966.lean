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
def state_2552351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 46)))
def hex_2552351 : String := "40064243414405400605070606"
theorem cover_2552351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2552351)
  decide +kernel
#print axioms cover_2552351

def state_2552365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
def hex_2552365 : String := "4243070606"
theorem cover_2552365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2552365)
  decide +kernel
#print axioms cover_2552365

def state_2552371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 47)))
def hex_2552371 : String := "434144400642090640420906420943440941400605094406410609444007094007420943090741440640064209064407400708"
theorem cover_2552371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2552371)
  decide +kernel
#print axioms cover_2552371

def state_2552422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 47)))
def hex_2552422 : String := "43414406400642434406060606444006424307060640064243E241060743E20606"
theorem cover_2552422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2552422)
  decide +kernel
#print axioms cover_2552422

def state_2552457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
def hex_2552457 : String := "4406400643424441054006050A0606"
theorem cover_2552457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2552457)
  decide +kernel
#print axioms cover_2552457

def state_2552473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_2552473 : String := "4006434241440540060544400605400643084205050606"
theorem cover_2552473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2552473)
  decide +kernel
#print axioms cover_2552473

def state_2552497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_2552497 : String := "43420A0606"
theorem cover_2552497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2552497)
  decide +kernel
#print axioms cover_2552497

def state_2552503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
def hex_2552503 : String := "42414440064308064008084440430806430842410844400605084106440608400A430842080841440609444006430806400908"
theorem cover_2552503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2552503)
  decide +kernel
#print axioms cover_2552503

def state_2552554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
def hex_2552554 : String := "42414406400643420A06064440064342410606060640064342E2410644060942E20606"
theorem cover_2552554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2552554)
  decide +kernel
#print axioms cover_2552554

def state_2552589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_2552589 : String := "06"
theorem cover_2552589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2552589)
  decide +kernel
#print axioms cover_2552589

def state_2552590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 11)))
def hex_2552590 : String := "410644064006424341064406060606"
theorem cover_2552590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2552590)
  decide +kernel
#print axioms cover_2552590
end Mub6.Numerical.CircleFullD0.Forest
