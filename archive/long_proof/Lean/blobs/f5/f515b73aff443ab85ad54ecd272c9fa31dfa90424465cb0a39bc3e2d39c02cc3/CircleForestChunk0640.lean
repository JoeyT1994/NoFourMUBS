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
def state_1342525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
def hex_1342525 : String := "43414244400643064106444208060606064208074142444005434106444206050605060542444005434441420807070805400543060544400543070506"
theorem cover_1342525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342525 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1342525)
  decide +kernel
#print axioms cover_1342525

def state_1342587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 12)))
def hex_1342587 : String := "4142444043410A0741440A0644424043070A0A074208064305410A44050A40060A444006090642444043054407070540070707"
theorem cover_1342587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1342587)
  decide +kernel
#print axioms cover_1342587

def state_1342642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 24)))
def hex_1342642 : String := "404144420A06064442434044410608060A40444106420806060A4340064409064005444106420A06064243060606410A44420A430909420A0A"
theorem cover_1342642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1342642)
  decide +kernel
#print axioms cover_1342642

def state_1342699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 24)))
def hex_1342699 : String := "40410644424340050A050506410A44420A430909420A430606"
theorem cover_1342699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1342699)
  decide +kernel
#print axioms cover_1342699

def state_1342724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 25)))
def hex_1342724 : String := "4340064106420A0606"
theorem cover_1342724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1342724)
  decide +kernel
#print axioms cover_1342724

def state_1342733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 12)))
def hex_1342733 : String := "444340060940054106424408060606"
theorem cover_1342733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1342733)
  decide +kernel
#print axioms cover_1342733
end Mub6.Numerical.CircleFullD0.Forest
