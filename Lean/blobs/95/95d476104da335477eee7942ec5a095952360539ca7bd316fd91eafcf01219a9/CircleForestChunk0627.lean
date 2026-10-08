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
def state_1339425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 44)))
def hex_1339425 : String := "4043414244054005434107440542070505054244054005434144064206050605050509"
theorem cover_1339425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1339425)
  decide +kernel
#print axioms cover_1339425

def state_1339463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 45)))
def hex_1339463 : String := "44424005434144070A4442400507400509420A400509054005430905424006430A410644420A050606"
theorem cover_1339463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1339463)
  decide +kernel
#print axioms cover_1339463

def state_1339507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 34 else 90)))
def hex_1339507 : String := "05"
theorem cover_1339507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1339507)
  decide +kernel
#print axioms cover_1339507

def state_1339508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 34 else 90)))
def hex_1339508 : String := "43414442404341440542080544050805430607400509424043080543410A08410A440608400509444206400506420840430805094105440542400543080505"
theorem cover_1339508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1339508)
  decide +kernel
#print axioms cover_1339508

def state_1339571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 89 else (if j.val < 4 then 34 else 90)))
def hex_1339571 : String := "40054341440542400509054409424005090505"
theorem cover_1339571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1339571)
  decide +kernel
#print axioms cover_1339571

def state_1339591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 34 else 91)))
def hex_1339591 : String := "404308054341444240080A404341060805430A410A444208050A420840060A44420840084308080841444240050A054208054442080508"
theorem cover_1339591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1339591)
  decide +kernel
#print axioms cover_1339591

def state_1339646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 89 else (if j.val < 4 then 34 else 91)))
def hex_1339646 : String := "40054341444240050906060705"
theorem cover_1339646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1339646)
  decide +kernel
#print axioms cover_1339646

def state_1339659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 45)))
def hex_1339659 : String := "05"
theorem cover_1339659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1339659)
  decide +kernel
#print axioms cover_1339659

def state_1339662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 45)))
def hex_1339662 : String := "444240090709420A09"
theorem cover_1339662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1339662)
  decide +kernel
#print axioms cover_1339662
end Mub6.Numerical.CircleFullD0.Forest
