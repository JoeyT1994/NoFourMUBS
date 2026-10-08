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
def state_987631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 85)))
def hex_987631 : String := "4344410A05414240430A44070A0A0A4207054407414240434407410A07070740430A4407410A070A07"
theorem cover_987631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_987631)
  decide +kernel
#print axioms cover_987631

def state_987672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 85)))
def hex_987672 : String := "400543054405410A05"
theorem cover_987672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_987672)
  decide +kernel
#print axioms cover_987672

def state_987681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 85)))
def hex_987681 : String := "4240080705"
theorem cover_987681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_987681)
  decide +kernel
#print axioms cover_987681

def state_987686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 42)))
def hex_987686 : String := "420608"
theorem cover_987686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_987686)
  decide +kernel
#print axioms cover_987686

def state_987693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 43)))
def hex_987693 : String := "444142400643440606064043080643084441420608064142060706064142400643444105060505400743074441074206070742064006430806"
theorem cover_987693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_987693)
  decide +kernel
#print axioms cover_987693

def state_987750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 43)))
def hex_987750 : String := "444142064006434406060606414206400643444107060744060506"
theorem cover_987750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_987750)
  decide +kernel
#print axioms cover_987750

def state_987781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 86)))
def hex_987781 : String := "40434441420540430806430805064105420540060544414205400605064105054344410509054441050705"
theorem cover_987781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_987781)
  decide +kernel
#print axioms cover_987781

def state_987826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 204 else 86)))
def hex_987826 : String := "440841424043074408054308050808"
theorem cover_987826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_987826)
  decide +kernel
#print axioms cover_987826

def state_987842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 205 else 172)))
def hex_987842 : String := "4142404308064344410A06410508444142054006050605400843084408410A08420608"
theorem cover_987842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_987842)
  decide +kernel
#print axioms cover_987842
end Mub6.Numerical.CircleFullD0.Forest
