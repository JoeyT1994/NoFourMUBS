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
def state_2267540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
def hex_2267540 : String := "40444243054405090542070944424305404405410509050542434007440507404441050707444105424305400744050705414243050505074305400905"
theorem cover_2267540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2267540)
  decide +kernel
#print axioms cover_2267540

def state_2267601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
def hex_2267601 : String := "4241430740440707080741434007440542070540444241050705094442410543054008050542080A4307400744424307400741444207050707430909420709"
theorem cover_2267601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2267601)
  decide +kernel
#print axioms cover_2267601

def state_2267671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
def hex_2267671 : String := "42430741440707074309410907"
theorem cover_2267671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2267671)
  decide +kernel
#print axioms cover_2267671

def state_2267686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2267686 : String := "41444007424307410807430541050740074207430741080707"
theorem cover_2267686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2267686)
  decide +kernel
#print axioms cover_2267686

def state_2267714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
def hex_2267714 : String := "43420741090742414440074307420641060606074144090909"
theorem cover_2267714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2267714)
  decide +kernel
#print axioms cover_2267714

def state_2267740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 56)))
def hex_2267740 : String := "424144404307080808074144400905400908440909"
theorem cover_2267740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2267740)
  decide +kernel
#print axioms cover_2267740

def state_2267762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 56)))
def hex_2267762 : String := "4144404342064108074206410606430806064440060606"
theorem cover_2267762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2267762)
  decide +kernel
#print axioms cover_2267762
end Mub6.Numerical.CircleFullD0.Forest
