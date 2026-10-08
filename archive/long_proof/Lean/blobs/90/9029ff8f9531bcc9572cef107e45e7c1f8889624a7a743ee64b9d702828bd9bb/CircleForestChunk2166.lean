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
def state_2600517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 14)))
def hex_2600517 : String := "40060A"
theorem cover_2600517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2600517)
  decide +kernel
#print axioms cover_2600517

def state_2600521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 15)))
def hex_2600521 : String := "43074241060705"
theorem cover_2600521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2600521)
  decide +kernel
#print axioms cover_2600521

def state_2600528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 15)))
def hex_2600528 : String := "434241440A0807074241440640064308064440060A40430705430A4241440640064309064440060A40430705430A4241440640060644400606DA050606"
theorem cover_2600528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 61) (hex := hex_2600528)
  decide +kernel
#print axioms cover_2600528

def state_2600589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
def hex_2600589 : String := "410644064005424341064406050505"
theorem cover_2600589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2600589)
  decide +kernel
#print axioms cover_2600589

def state_2600607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_2600607 : String := "44424340050507430A400607420743404105050507"
theorem cover_2600607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2600607)
  decide +kernel
#print axioms cover_2600607

def state_2600629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
def hex_2600629 : String := "42430540440505050A"
theorem cover_2600629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2600629)
  decide +kernel
#print axioms cover_2600629

def state_2600639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
def hex_2600639 : String := "05"
theorem cover_2600639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2600639)
  decide +kernel
#print axioms cover_2600639

def state_2600640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
def hex_2600640 : String := "4305404144424305050A42054305074442050A4205430540414442050A42054305074442050A4205430540414442050A42054305074442050ADA0505410505"
theorem cover_2600640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 63) (hex := hex_2600640)
  decide +kernel
#print axioms cover_2600640

def state_2600703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_2600703 : String := "410744420740434406410608060742074043410744420708070707"
theorem cover_2600703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2600703)
  decide +kernel
#print axioms cover_2600703

def state_2600731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
def hex_2600731 : String := "41440A4309404241064406090609440A430A404241440A4309090A0A0A"
theorem cover_2600731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600731 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2600731)
  decide +kernel
#print axioms cover_2600731
end Mub6.Numerical.CircleFullD0.Forest
