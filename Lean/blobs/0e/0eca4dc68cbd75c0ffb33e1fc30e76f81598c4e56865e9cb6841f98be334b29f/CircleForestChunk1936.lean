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
def state_2337647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
def hex_2337647 : String := "404244414340420606068306414340440606064044834241070607440606064441434042060606404283440A074206060641070642440606440606"
theorem cover_2337647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2337647)
  decide +kernel
#print axioms cover_2337647

def state_2337706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
def hex_2337706 : String := "06"
theorem cover_2337706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2337706)
  decide +kernel
#print axioms cover_2337706

def state_2337707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 45)))
def hex_2337707 : String := "41430740444241070607070706"
theorem cover_2337707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2337707)
  decide +kernel
#print axioms cover_2337707

def state_2337720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 22)))
def hex_2337720 : String := "4441430740424441070607070706410706"
theorem cover_2337720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2337720)
  decide +kernel
#print axioms cover_2337720

def state_2337737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
def hex_2337737 : String := "42440606440606"
theorem cover_2337737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2337737)
  decide +kernel
#print axioms cover_2337737

def state_2337744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 23)))
def hex_2337744 : String := "41074306404442410706070706"
theorem cover_2337744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2337744)
  decide +kernel
#print axioms cover_2337744

def state_2337757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 11)))
def hex_2337757 : String := "444107430640424441070607070607"
theorem cover_2337757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2337757)
  decide +kernel
#print axioms cover_2337757

def state_2337772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
def hex_2337772 : String := "424441430507060707"
theorem cover_2337772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2337772)
  decide +kernel
#print axioms cover_2337772

def state_2337781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_2337781 : String := "430640424406060606"
theorem cover_2337781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2337781)
  decide +kernel
#print axioms cover_2337781

def state_2337790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2337790 : String := "424441430540420A08050A0A444143050806414305424405070506"
theorem cover_2337790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2337790)
  decide +kernel
#print axioms cover_2337790

def state_2337817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2337817 : String := "414243440541090A440541050A430544050542430A4440410507050A434405054408420A440505"
theorem cover_2337817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2337817)
  decide +kernel
#print axioms cover_2337817

def state_2337860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
def hex_2337860 : String := "444041430644420907060641090606"
theorem cover_2337860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2337860)
  decide +kernel
#print axioms cover_2337860
end Mub6.Numerical.CircleFullD0.Forest
