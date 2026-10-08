import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_47813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_47813 : String := "4142430A400A44430A054341424006050A0A414240440543060805400A4405430A420508420508430A400A440A0A0A"
theorem cover_47813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_47813)
  decide +kernel
#print axioms cover_47813

def state_47863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_47863 : String := "440A09"
theorem cover_47863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_47863)
  decide +kernel
#print axioms cover_47863

def state_47868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_47868 : String := "430A4142060706"
theorem cover_47868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_47868)
  decide +kernel
#print axioms cover_47868

def state_47876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_47876 : String := "4142060A06"
theorem cover_47876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_47876)
  decide +kernel
#print axioms cover_47876

def state_47883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 10)))
def hex_47883 : String := "4440064340060540414205440506050540064306444006414205430644400605060506"
theorem cover_47883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_47883)
  decide +kernel
#print axioms cover_47883

def state_47918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 10)))
def hex_47918 : String := "44400A430A42400A414405430942400A0509050A4007430942444007090709"
theorem cover_47918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_47918)
  decide +kernel
#print axioms cover_47918

def state_47949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
def hex_47949 : String := "4206440A07"
theorem cover_47949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_47949)
  decide +kernel
#print axioms cover_47949

def state_47954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_47954 : String := "400743094441424006430607070707"
theorem cover_47954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_47954)
  decide +kernel
#print axioms cover_47954

def state_47969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_47969 : String := "430944400A42430941440A090A0909"
theorem cover_47969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_47969)
  decide +kernel
#print axioms cover_47969

def state_47984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_47984 : String := "42060A"
theorem cover_47984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_47984)
  decide +kernel
#print axioms cover_47984

def state_47990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_47990 : String := "4440410842054305070808"
theorem cover_47990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_47990)
  decide +kernel
#print axioms cover_47990

def state_48002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_48002 : String := "40434107420507414244054307050742054405430740050507"
theorem cover_48002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48002 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_48002)
  decide +kernel
#print axioms cover_48002

def state_48027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_48027 : String := "404308444108424308054340444107050808404441420543070A05410842054308440508440508410842080808"
theorem cover_48027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_48027)
  decide +kernel
#print axioms cover_48027
end Mub6.Numerical.CircleFullPrototype.Forest
