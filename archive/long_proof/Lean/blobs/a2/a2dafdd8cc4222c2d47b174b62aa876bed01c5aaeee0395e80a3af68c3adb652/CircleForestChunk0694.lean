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
def state_1467416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
def hex_1467416 : String := "4008444207414306060708"
theorem cover_1467416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1467416)
  decide +kernel
#print axioms cover_1467416

def state_1467427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
def hex_1467427 : String := "434005444205414340050505050507"
theorem cover_1467427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1467427)
  decide +kernel
#print axioms cover_1467427

def state_1467446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
def hex_1467446 : String := "424407410607440A0A"
theorem cover_1467446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1467446)
  decide +kernel
#print axioms cover_1467446

def state_1467457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 20)))
def hex_1467457 : String := "4143404207410A0742414407430807074144084308400608440743080740074207414407060707"
theorem cover_1467457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1467457)
  decide +kernel
#print axioms cover_1467457

def state_1467499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
def hex_1467499 : String := "424441060706440A06"
theorem cover_1467499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1467499)
  decide +kernel
#print axioms cover_1467499

def state_1467510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 42)))
def hex_1467510 : String := "4143400642440606440505064340074207440741080707"
theorem cover_1467510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1467510)
  decide +kernel
#print axioms cover_1467510

def state_1467534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
def hex_1467534 : String := "43400642060606"
theorem cover_1467534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1467534)
  decide +kernel
#print axioms cover_1467534

def state_1467543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
def hex_1467543 : String := "424407410607440A0A"
theorem cover_1467543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1467543)
  decide +kernel
#print axioms cover_1467543

def state_1467553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 43)))
def hex_1467553 : String := "44414340064208080607414383064383400742074407410607"
theorem cover_1467553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1467553)
  decide +kernel
#print axioms cover_1467553

def state_1467578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 43)))
def hex_1467578 : String := "44414340064205050643400A0840074207084143400642830A0643400A42830A4042060642444106074106438306440A0A"
theorem cover_1467578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1467578)
  decide +kernel
#print axioms cover_1467578

def state_1467627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 43)))
def hex_1467627 : String := "400642440741060744410607410643400642060606"
theorem cover_1467627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1467627)
  decide +kernel
#print axioms cover_1467627
end Mub6.Numerical.CircleFullD0.Forest
