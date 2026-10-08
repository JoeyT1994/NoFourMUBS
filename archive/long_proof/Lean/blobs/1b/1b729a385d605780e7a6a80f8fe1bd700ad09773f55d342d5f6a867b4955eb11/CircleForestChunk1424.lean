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
def state_1642518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 41)))
def hex_1642518 : String := "4244414306404206080643054042060A05064441434009064042090942064408094340090540420A09424441060505444143400805080A41090509"
theorem cover_1642518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1642518)
  decide +kernel
#print axioms cover_1642518

def state_1642577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 41)))
def hex_1642577 : String := "434005054042440A05440A09420544414305400A050505"
theorem cover_1642577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1642577)
  decide +kernel
#print axioms cover_1642577

def state_1642603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 40)))
def hex_1642603 : String := "404407074442414307400744070743074007440707074241070707"
theorem cover_1642603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1642603)
  decide +kernel
#print axioms cover_1642603

def state_1642631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
def hex_1642631 : String := "44084241080A09"
theorem cover_1642631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1642631)
  decide +kernel
#print axioms cover_1642631

def state_1642639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 80)))
def hex_1642639 : String := "42410843400844080808410843400644060706"
theorem cover_1642639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1642639)
  decide +kernel
#print axioms cover_1642639

def state_1642659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 81)))
def hex_1642659 : String := "41434042080742440841080744070740080843404244070707424441084307084107054407074042080842440841080A440841080A"
theorem cover_1642659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1642659)
  decide +kernel
#print axioms cover_1642659

def state_1642712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 103 else 81)))
def hex_1642712 : String := "414307400508430740064406420A06"
theorem cover_1642712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1642712)
  decide +kernel
#print axioms cover_1642712

def state_1642728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 40)))
def hex_1642728 : String := "4044070744424143074007074305400705074241070507"
theorem cover_1642728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642728 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1642728)
  decide +kernel
#print axioms cover_1642728

def state_1642752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
def hex_1642752 : String := "44060A"
theorem cover_1642752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1642752)
  decide +kernel
#print axioms cover_1642752
end Mub6.Numerical.CircleFullD0.Forest
