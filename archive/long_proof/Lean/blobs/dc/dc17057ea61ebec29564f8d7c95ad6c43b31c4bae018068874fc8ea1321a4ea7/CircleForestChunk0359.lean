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
def state_161579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_161579 : String := "4243444142404344410807080743444109070844074108070842074043050543440505074108420A0844414207090741424006430606084207054308440906"
theorem cover_161579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_161579)
  decide +kernel
#print axioms cover_161579

def state_161642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_161642 : String := "424344070A074344404105054105050505"
theorem cover_161642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_161642)
  decide +kernel
#print axioms cover_161642

def state_161663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_161663 : String := "4307440908"
theorem cover_161663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_161663)
  decide +kernel
#print axioms cover_161663

def state_161669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 6)))
def hex_161669 : String := "4406424043064107440642400706070607"
theorem cover_161669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_161669)
  decide +kernel
#print axioms cover_161669

def state_161687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 12)))
def hex_161687 : String := "4240440641094306090609"
theorem cover_161687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_161687)
  decide +kernel
#print axioms cover_161687

def state_161701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
def hex_161701 : String := "43440708440908"
theorem cover_161701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_161701)
  decide +kernel
#print axioms cover_161701

def state_161709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 13)))
def hex_161709 : String := "44424043064406420607060742404308424105444043064205070605080807"
theorem cover_161709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_161709)
  decide +kernel
#print axioms cover_161709

def state_161740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 13)))
def hex_161740 : String := "444240440942410543404406420509060509090942404205410543080542050808"
theorem cover_161740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_161740)
  decide +kernel
#print axioms cover_161740

def state_161773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
def hex_161773 : String := "410843440608440908"
theorem cover_161773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_161773)
  decide +kernel
#print axioms cover_161773

def state_161782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 13)))
def hex_161782 : String := "40410743070909"
theorem cover_161782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_161782)
  decide +kernel
#print axioms cover_161782

def state_161789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_161789 : String := "4109430609"
theorem cover_161789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_161789)
  decide +kernel
#print axioms cover_161789

def state_161794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_161794 : String := "08"
theorem cover_161794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_161794)
  decide +kernel
#print axioms cover_161794

def state_161796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_161796 : String := "4041094442430909094243404144090544424340440905090509420543400A0805410944094205084005090909"
theorem cover_161796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_161796)
  decide +kernel
#print axioms cover_161796
end Mub6.Numerical.CircleFullPrototype.Forest
