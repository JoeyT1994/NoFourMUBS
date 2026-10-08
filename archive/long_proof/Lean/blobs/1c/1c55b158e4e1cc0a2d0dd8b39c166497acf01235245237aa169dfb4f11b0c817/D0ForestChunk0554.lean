import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1321770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 43)))
def hex_1321770 : String := "404344060606430844084206414006430844050A06"
theorem cover_1321770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1321770)
  decide +kernel
#print axioms cover_1321770

def state_1321792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 43)))
def hex_1321792 : String := "4344414240060807420640050841424406050505440741424306060706"
theorem cover_1321792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 29) (hex := hex_1321792)
  decide +kernel
#print axioms cover_1321792

def state_1321822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 86 else 43)))
def hex_1321822 : String := "4408414240090809420809"
theorem cover_1321822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1321822)
  decide +kernel
#print axioms cover_1321822

def state_1321834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 87 else 86)))
def hex_1321834 : String := "4142400708074208400708"
theorem cover_1321834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1321834)
  decide +kernel
#print axioms cover_1321834

def state_1321845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 87 else 87)))
def hex_1321845 : String := "414240434441070641090644074107064344084109084441050841420A40070942400608E140430907430944074107E1424006430844084206E1E1"
theorem cover_1321845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321845 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1321845)
  decide +kernel
#print axioms cover_1321845

def state_1321905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_1321905 : String := "420A4440430A0A43090A0A"
theorem cover_1321905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1321905)
  decide +kernel
#print axioms cover_1321905

def state_1321917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
def hex_1321917 : String := "4440430A06430A0A0A"
theorem cover_1321917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1321917)
  decide +kernel
#print axioms cover_1321917

def state_1321928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 22)))
def hex_1321928 : String := "4341420A050541420A4443050705420605"
theorem cover_1321928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1321928)
  decide +kernel
#print axioms cover_1321928

def state_1321946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 22)))
def hex_1321946 : String := "41420A0942444005070505"
theorem cover_1321946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321946 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1321946)
  decide +kernel
#print axioms cover_1321946

def state_1321958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 22)))
def hex_1321958 : String := "420A444043090A43090A0A"
theorem cover_1321958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1321958)
  decide +kernel
#print axioms cover_1321958

def state_1321970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 22)))
def hex_1321970 : String := "4440430606430A0A0A"
theorem cover_1321970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1321970)
  decide +kernel
#print axioms cover_1321970

def state_1321981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 44)))
def hex_1321981 : String := "430541420A4443050705420605"
theorem cover_1321981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1321981)
  decide +kernel
#print axioms cover_1321981

def state_1321995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 42 else 44)))
def hex_1321995 : String := "41420A0942444005070505"
theorem cover_1321995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1321995)
  decide +kernel
#print axioms cover_1321995

def state_1322007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 62) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 44)))
def hex_1322007 : String := "4244400A0A0A444043094108420A0843094109420A090A"
theorem cover_1322007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1322007)
  decide +kernel
#print axioms cover_1322007
end Mub6.Numerical.CircleFullD0.Forest
