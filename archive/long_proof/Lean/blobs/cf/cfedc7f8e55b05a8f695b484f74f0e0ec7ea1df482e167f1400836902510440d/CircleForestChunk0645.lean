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
def state_1343669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 24)))
def hex_1343669 : String := "41434007444205070740444208070844424143064008060641430740444241430606060707440642060707420841430740074407070707"
theorem cover_1343669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_1343669)
  decide +kernel
#print axioms cover_1343669

def state_1343724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 25)))
def hex_1343724 : String := "414307400842080707"
theorem cover_1343724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1343724)
  decide +kernel
#print axioms cover_1343724

def state_1343733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 12)))
def hex_1343733 : String := "444143074007070707"
theorem cover_1343733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1343733)
  decide +kernel
#print axioms cover_1343733

def state_1343742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 13)))
def hex_1343742 : String := "40084307420807"
theorem cover_1343742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1343742)
  decide +kernel
#print axioms cover_1343742

def state_1343749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_1343749 : String := "4142080608"
theorem cover_1343749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1343749)
  decide +kernel
#print axioms cover_1343749

def state_1343760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 12)))
def hex_1343760 : String := "4144420705054442080508"
theorem cover_1343760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1343760)
  decide +kernel
#print axioms cover_1343760

def state_1343771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 12)))
def hex_1343771 : String := "4144074207430A054442074340444107420843080541420705084441074207434044070807074107420743080707420843400841440A080840054105440705"
theorem cover_1343771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1343771)
  decide +kernel
#print axioms cover_1343771

def state_1343834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
def hex_1343834 : String := "4005414206064208430805"
theorem cover_1343834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1343834)
  decide +kernel
#print axioms cover_1343834

def state_1343845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
def hex_1343845 : String := "4440050705"
theorem cover_1343845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1343845)
  decide +kernel
#print axioms cover_1343845

def state_1343853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
def hex_1343853 : String := "05"
theorem cover_1343853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1343853)
  decide +kernel
#print axioms cover_1343853

def state_1343855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
def hex_1343855 : String := "05"
theorem cover_1343855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1343855)
  decide +kernel
#print axioms cover_1343855

def state_1343860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 24)))
def hex_1343860 : String := "05"
theorem cover_1343860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1343860)
  decide +kernel
#print axioms cover_1343860

def state_1343863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 48)))
def hex_1343863 : String := "420705"
theorem cover_1343863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1343863)
  decide +kernel
#print axioms cover_1343863

def state_1343866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 48)))
def hex_1343866 : String := "42434044410542430605054105420805444107064142074340050705424306064340440642064105060640050740050743400544094241094309050905"
theorem cover_1343866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1343866)
  decide +kernel
#print axioms cover_1343866

def state_1343928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 49)))
def hex_1343928 : String := "424340050A0505"
theorem cover_1343928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1343928)
  decide +kernel
#print axioms cover_1343928
end Mub6.Numerical.CircleFullD0.Forest
