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
def state_1521590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 43)))
def hex_1521590 : String := "4244080944084109430809"
theorem cover_1521590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521590 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1521590)
  decide +kernel
#print axioms cover_1521590

def state_1521602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 42)))
def hex_1521602 : String := "414305404205050508"
theorem cover_1521602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521602 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1521602)
  decide +kernel
#print axioms cover_1521602

def state_1521612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 43)))
def hex_1521612 : String := "43054042060505"
theorem cover_1521612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1521612)
  decide +kernel
#print axioms cover_1521612

def state_1521620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 32 else 43)))
def hex_1521620 : String := "404244410508410543400A05404244080A0A42080544050A4244050505"
theorem cover_1521620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521620 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1521620)
  decide +kernel
#print axioms cover_1521620

def state_1521652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 86)))
def hex_1521652 : String := "41434006050643084042060808"
theorem cover_1521652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1521652)
  decide +kernel
#print axioms cover_1521652

def state_1521665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 87)))
def hex_1521665 : String := "4143400605064340424441064308064106430A060A42440841054308404206060844054105084042060642440841064340060806440841064340060806"
theorem cover_1521665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1521665)
  decide +kernel
#print axioms cover_1521665

def state_1521726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 91 else (if j.val < 4 then 33 else 43)))
def hex_1521726 : String := "4441054308400A0841430506430A400A4244080A0A"
theorem cover_1521726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521726 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1521726)
  decide +kernel
#print axioms cover_1521726

def state_1521747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 43)))
def hex_1521747 : String := "4244084105430840420808084408410543054042080505"
theorem cover_1521747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1521747)
  decide +kernel
#print axioms cover_1521747

def state_1521770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
def hex_1521770 : String := "4244084105430840420808084408410508"
theorem cover_1521770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1521770)
  decide +kernel
#print axioms cover_1521770

def state_1521789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 21)))
def hex_1521789 : String := "444143400609064340070807410943404244070944410607410643060642090909"
theorem cover_1521789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1521789)
  decide +kernel
#print axioms cover_1521789
end Mub6.Numerical.CircleFullD0.Forest
