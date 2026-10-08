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
def state_1340597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 23)))
def hex_1340597 : String := "40054344414240054344414208400543440607050841420840054307050805400543440A070542080741424005430805400543070542080705"
theorem cover_1340597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340597 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 57) (hex := hex_1340597)
  decide +kernel
#print axioms cover_1340597

def state_1340654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 11)))
def hex_1340654 : String := "440A40054342440A070705"
theorem cover_1340654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1340654)
  decide +kernel
#print axioms cover_1340654

def state_1340669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
def hex_1340669 : String := "404309410942440640430909060909"
theorem cover_1340669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1340669)
  decide +kernel
#print axioms cover_1340669

def state_1340686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 23)))
def hex_1340686 : String := "4144050505"
theorem cover_1340686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1340686)
  decide +kernel
#print axioms cover_1340686

def state_1340692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 23)))
def hex_1340692 : String := "444240430A410A44420A090A0909420A400609"
theorem cover_1340692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1340692)
  decide +kernel
#print axioms cover_1340692

def state_1340712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 46)))
def hex_1340712 : String := "42404341440505054144424043094109090909420A094442060942400805404307090943050909"
theorem cover_1340712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1340712)
  decide +kernel
#print axioms cover_1340712

def state_1340751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 47)))
def hex_1340751 : String := "4240430544410A4208400707410A0805404307444109070709"
theorem cover_1340751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1340751)
  decide +kernel
#print axioms cover_1340751

def state_1340776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
def hex_1340776 : String := "4305410905"
theorem cover_1340776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1340776)
  decide +kernel
#print axioms cover_1340776

def state_1340781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 11)))
def hex_1340781 : String := "09"
theorem cover_1340781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1340781)
  decide +kernel
#print axioms cover_1340781

def state_1340782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
def hex_1340782 : String := "4244404306414206090606404305444142404305440641420607060540070942060741424007050707054409400709"
theorem cover_1340782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_1340782)
  decide +kernel
#print axioms cover_1340782
end Mub6.Numerical.CircleFullD0.Forest
