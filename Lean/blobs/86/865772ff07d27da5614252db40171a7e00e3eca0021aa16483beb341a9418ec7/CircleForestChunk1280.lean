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
def state_1607719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 13)))
def hex_1607719 : String := "44434042444305414205070505444307070742054443050805404244434106050605064244430541400505050544434108400705410606430506430505"
theorem cover_1607719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1607719)
  decide +kernel
#print axioms cover_1607719

def state_1607780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 13)))
def hex_1607780 : String := "44434007080607"
theorem cover_1607780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1607780)
  decide +kernel
#print axioms cover_1607780

def state_1607787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 13)))
def hex_1607787 : String := "4244430540414205070541050505444307400641070707"
theorem cover_1607787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1607787)
  decide +kernel
#print axioms cover_1607787

def state_1607810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 13)))
def hex_1607810 : String := "40064142444340064244410606050606060642444340064142050605060506"
theorem cover_1607810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1607810)
  decide +kernel
#print axioms cover_1607810

def state_1607842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
def hex_1607842 : String := "4443414208444008430608400805080805"
theorem cover_1607842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1607842)
  decide +kernel
#print axioms cover_1607842

def state_1607864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_1607864 : String := "42430808430944410508410707"
theorem cover_1607864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1607864)
  decide +kernel
#print axioms cover_1607864

def state_1607879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 24)))
def hex_1607879 : String := "444140420643060806064140420643064408414007060706400806"
theorem cover_1607879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1607879)
  decide +kernel
#print axioms cover_1607879

def state_1607906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 24)))
def hex_1607906 : String := "44414008420643060808414008420843444106064140420643060806400805440841400842084344064140070606080808"
theorem cover_1607906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 49) (hex := hex_1607906)
  decide +kernel
#print axioms cover_1607906
end Mub6.Numerical.CircleFullD0.Forest
