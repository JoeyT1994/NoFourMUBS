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
def state_1463707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_1463707 : String := "4244400643060640060744400543054142444006430606400507444005430541424406064440054305414206E1060542060505420605400543054142050505"
theorem cover_1463707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 63) (hex := hex_1463707)
  decide +kernel
#print axioms cover_1463707

def state_1463770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_1463770 : String := "420605"
theorem cover_1463770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1463770)
  decide +kernel
#print axioms cover_1463770

def state_1463776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 10)))
def hex_1463776 : String := "43400644060609"
theorem cover_1463776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1463776)
  decide +kernel
#print axioms cover_1463776

def state_1463785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 10)))
def hex_1463785 : String := "440706"
theorem cover_1463785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1463785)
  decide +kernel
#print axioms cover_1463785

def state_1463789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 20)))
def hex_1463789 : String := "41424308050742080A"
theorem cover_1463789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1463789)
  decide +kernel
#print axioms cover_1463789

def state_1463799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 16) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
def hex_1463799 : String := "424340064406060943404406064441424308050742060741424306064340064441070A414206E10640064407410706420643060640074407410909"
theorem cover_1463799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1463799)
  decide +kernel
#print axioms cover_1463799

def state_1463858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 17) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
def hex_1463858 : String := "4206434006440606400609"
theorem cover_1463858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1463858)
  decide +kernel
#print axioms cover_1463858

def state_1463869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 10)))
def hex_1463869 : String := "4007440709"
theorem cover_1463869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1463869)
  decide +kernel
#print axioms cover_1463869

def state_1463874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1463874 : String := "4206434006440806400609"
theorem cover_1463874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1463874)
  decide +kernel
#print axioms cover_1463874

def state_1463887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
def hex_1463887 : String := "06"
theorem cover_1463887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1463887)
  decide +kernel
#print axioms cover_1463887

def state_1463891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
def hex_1463891 : String := "06"
theorem cover_1463891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1463891)
  decide +kernel
#print axioms cover_1463891

def state_1463894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 16) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 22)))
def hex_1463894 : String := "430606"
theorem cover_1463894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1463894)
  decide +kernel
#print axioms cover_1463894

def state_1463898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 22)))
def hex_1463898 : String := "444006414243060643444006414206E106400541420644E1050644400641420643E10706400641080642064306064005414206444305080506"
theorem cover_1463898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1463898)
  decide +kernel
#print axioms cover_1463898

def state_1463955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 45 else 22)))
def hex_1463955 : String := "44400609400609"
theorem cover_1463955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1463955)
  decide +kernel
#print axioms cover_1463955

def state_1463962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 17) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
def hex_1463962 : String := "4206430606"
theorem cover_1463962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1463962)
  decide +kernel
#print axioms cover_1463962
end Mub6.Numerical.CircleFullD0.Forest
