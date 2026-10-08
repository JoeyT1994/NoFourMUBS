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
def state_1322503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
def hex_1322503 : String := "4208404308440841424043080505404309440541094240430905050943080542084043084408414240430844054105080840430844084109E1084208E10808"
theorem cover_1322503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 63) (hex := hex_1322503)
  decide +kernel
#print axioms cover_1322503

def state_1322566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_1322566 : String := "43084405410508"
theorem cover_1322566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1322566)
  decide +kernel
#print axioms cover_1322566

def state_1322574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_1322574 : String := "420A400A0A"
theorem cover_1322574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1322574)
  decide +kernel
#print axioms cover_1322574

def state_1322580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
def hex_1322580 : String := "400A07"
theorem cover_1322580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1322580)
  decide +kernel
#print axioms cover_1322580

def state_1322586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 22)))
def hex_1322586 : String := "4142070907"
theorem cover_1322586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1322586)
  decide +kernel
#print axioms cover_1322586

def state_1322592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 22)))
def hex_1322592 : String := "420A404443090A0A444306060A"
theorem cover_1322592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1322592)
  decide +kernel
#print axioms cover_1322592

def state_1322606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 22)))
def hex_1322606 : String := "404443070A0707"
theorem cover_1322606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1322606)
  decide +kernel
#print axioms cover_1322606

def state_1322616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 42 else 44)))
def hex_1322616 : String := "4142070907"
theorem cover_1322616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1322616)
  decide +kernel
#print axioms cover_1322616

def state_1322622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 62) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 44)))
def hex_1322622 : String := "420A404443094109420A090A4443094106420A060A"
theorem cover_1322622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1322622)
  decide +kernel
#print axioms cover_1322622

def state_1322644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 63) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 44)))
def hex_1322644 : String := "404443074207410A070707"
theorem cover_1322644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1322644)
  decide +kernel
#print axioms cover_1322644

def state_1322655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 44)))
def hex_1322655 : String := "4044434109074142404443090A0A4443070A074044090944090942404443074208E10707E14307410A0744430741420740440606060707"
theorem cover_1322655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1322655)
  decide +kernel
#print axioms cover_1322655

def state_1322710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 45)))
def hex_1322710 : String := "43070A"
theorem cover_1322710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322710 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1322710)
  decide +kernel
#print axioms cover_1322710

def state_1322713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 22)))
def hex_1322713 : String := "444307414207060707"
theorem cover_1322713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1322713)
  decide +kernel
#print axioms cover_1322713

def state_1322722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 23)))
def hex_1322722 : String := "43070A"
theorem cover_1322722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322722 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1322722)
  decide +kernel
#print axioms cover_1322722

def state_1322725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 11)))
def hex_1322725 : String := "444307410A0707"
theorem cover_1322725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1322725)
  decide +kernel
#print axioms cover_1322725
end Mub6.Numerical.CircleFullD0.Forest
