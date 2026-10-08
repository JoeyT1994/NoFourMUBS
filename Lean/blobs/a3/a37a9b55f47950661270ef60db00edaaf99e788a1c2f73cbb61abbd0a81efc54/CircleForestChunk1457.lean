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
def state_1650445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 41)))
def hex_1650445 : String := "444241400543A00506064241400643A0440506400643A00606"
theorem cover_1650445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1650445)
  decide +kernel
#print axioms cover_1650445

def state_1650471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 41)))
def hex_1650471 : String := "A0"
theorem cover_1650471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1650471)
  decide +kernel
#print axioms cover_1650471

def state_1650473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 82)))
def hex_1650473 : String := "42414043A00543A0074043A00643A00741400643A006400643A006"
theorem cover_1650473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 27) (hex := hex_1650473)
  decide +kernel
#print axioms cover_1650473

def state_1650501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 120 else (if j.val < 4 then 105 else 83)))
def hex_1650501 : String := "414043A0444207064241400507400A0741400543A0050643A04407420741074007074043A04406420A0643A044074207414043A00607400607"
theorem cover_1650501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1650501)
  decide +kernel
#print axioms cover_1650501

def state_1650558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 121 else (if j.val < 4 then 105 else 83)))
def hex_1650558 : String := "414043A00643A044424107060642414043A00507400643A00606400643A0440606"
theorem cover_1650558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1650558)
  decide +kernel
#print axioms cover_1650558

def state_1650592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1650592 : String := "43444241434006A00606064241434007050A0A06440606"
theorem cover_1650592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1650592)
  decide +kernel
#print axioms cover_1650592

def state_1650615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1650615 : String := "43A04442414006094006090642414043A00643A0440942410705410A0640430506430544060541400643A00606"
theorem cover_1650615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650615 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1650615)
  decide +kernel
#print axioms cover_1650615

def state_1650662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1650662 : String := "4344060606"
theorem cover_1650662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1650662)
  decide +kernel
#print axioms cover_1650662
end Mub6.Numerical.CircleFullD0.Forest
