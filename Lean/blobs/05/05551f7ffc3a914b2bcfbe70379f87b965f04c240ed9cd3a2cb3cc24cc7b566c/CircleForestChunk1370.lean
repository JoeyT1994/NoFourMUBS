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
def state_1629587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 17)))
def hex_1629587 : String := "444341050541420540444305414205400A050505054205054305410505"
theorem cover_1629587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_1629587)
  decide +kernel
#print axioms cover_1629587

def state_1629618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 34)))
def hex_1629618 : String := "4341424044430706094443074142404406050507420505430541050540060742400608064142400644434142400644060506060643410A0A0A0606"
theorem cover_1629618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1629618)
  decide +kernel
#print axioms cover_1629618

def state_1629677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 35)))
def hex_1629677 : String := "434142090942050841420A4009440A09420A06"
theorem cover_1629677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1629677)
  decide +kernel
#print axioms cover_1629677

def state_1629698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 34)))
def hex_1629698 : String := "41420540070505"
theorem cover_1629698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1629698)
  decide +kernel
#print axioms cover_1629698

def state_1629706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 104) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
def hex_1629706 : String := "42404443414205050541424044060A05400644060542050643054142050505054044434107060643414205050541424006050606444305414205050505"
theorem cover_1629706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1629706)
  decide +kernel
#print axioms cover_1629706

def state_1629767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 105) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
def hex_1629767 : String := "4240444305060505400605"
theorem cover_1629767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1629767)
  decide +kernel
#print axioms cover_1629767

def state_1629778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 35)))
def hex_1629778 : String := "43054142054044430541420505050505420505"
theorem cover_1629778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1629778)
  decide +kernel
#print axioms cover_1629778

def state_1629797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
def hex_1629797 : String := "424044430842080643050A44430542050505404406430806444305414205060605"
theorem cover_1629797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1629797)
  decide +kernel
#print axioms cover_1629797
end Mub6.Numerical.CircleFullD0.Forest
