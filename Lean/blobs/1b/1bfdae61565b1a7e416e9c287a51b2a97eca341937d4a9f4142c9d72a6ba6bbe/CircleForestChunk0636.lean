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
def state_1341526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 38 else 47)))
def hex_1341526 : String := "4005444142434044064105060607430905420643400906054142434044410508080A4005074340050905424308400544060843404441050808440941090905"
theorem cover_1341526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1341526)
  decide +kernel
#print axioms cover_1341526

def state_1341589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 39 else 47)))
def hex_1341589 : String := "05"
theorem cover_1341589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1341589)
  decide +kernel
#print axioms cover_1341589

def state_1341590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 45 else (if j.val < 4 then 19 else 47)))
def hex_1341590 : String := "43400544094105424309050505"
theorem cover_1341590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1341590)
  decide +kernel
#print axioms cover_1341590

def state_1341603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 47)))
def hex_1341603 : String := "424340444142060506084406414206430840050606400544414206050641424306050542064306054340054442410906094241430705070705"
theorem cover_1341603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1341603)
  decide +kernel
#print axioms cover_1341603

def state_1341660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 23)))
def hex_1341660 : String := "444142430607094206094142434044410906414207094206094406410706404407410742074309050743090942430640440641420643060606064309400909"
theorem cover_1341660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1341660)
  decide +kernel
#print axioms cover_1341660

def state_1341723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 11)))
def hex_1341723 : String := "44430909434042444109074143070907090940424441050941054307050509"
theorem cover_1341723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1341723)
  decide +kernel
#print axioms cover_1341723

def state_1341755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
def hex_1341755 : String := "440640430844414206400806060806"
theorem cover_1341755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1341755)
  decide +kernel
#print axioms cover_1341755

def state_1341771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
def hex_1341771 : String := "400A06"
theorem cover_1341771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1341771)
  decide +kernel
#print axioms cover_1341771
end Mub6.Numerical.CircleFullD0.Forest
