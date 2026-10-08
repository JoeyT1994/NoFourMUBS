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
def state_1008699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_1008699 : String := "444142430840064408414205430840060506080841424344400641050507444006410506400605430744400741070807420608"
theorem cover_1008699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1008699)
  decide +kernel
#print axioms cover_1008699

def state_1008753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 22)))
def hex_1008753 : String := "40064344060606"
theorem cover_1008753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1008753)
  decide +kernel
#print axioms cover_1008753

def state_1008761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
def hex_1008761 : String := "4344060806"
theorem cover_1008761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1008761)
  decide +kernel
#print axioms cover_1008761

def state_1008767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 22)))
def hex_1008767 : String := "440841424043080643084408414205400705060808"
theorem cover_1008767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1008767)
  decide +kernel
#print axioms cover_1008767

def state_1008789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
def hex_1008789 : String := "414206400843084408414206080606"
theorem cover_1008789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1008789)
  decide +kernel
#print axioms cover_1008789

def state_1008806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 45)))
def hex_1008806 : String := "40064406434142054006050606"
theorem cover_1008806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1008806)
  decide +kernel
#print axioms cover_1008806

def state_1008820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
def hex_1008820 : String := "4443080643080A"
theorem cover_1008820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008820 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1008820)
  decide +kernel
#print axioms cover_1008820

def state_1008828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 90)))
def hex_1008828 : String := "43084142400644064309064008440843084142090708420608"
theorem cover_1008828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1008828)
  decide +kernel
#print axioms cover_1008828

def state_1008853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 91)))
def hex_1008853 : String := "43414240074443074105080707084142400644434105060A430505400744430741070A0742064006440808"
theorem cover_1008853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1008853)
  decide +kernel
#print axioms cover_1008853

def state_1008896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
def hex_1008896 : String := "420640064406430806"
theorem cover_1008896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1008896)
  decide +kernel
#print axioms cover_1008896

def state_1008905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_1008905 : String := "06"
theorem cover_1008905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1008905)
  decide +kernel
#print axioms cover_1008905

def state_1008908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
def hex_1008908 : String := "4440064341050606400643410505410505"
theorem cover_1008908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1008908)
  decide +kernel
#print axioms cover_1008908

def state_1008927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
def hex_1008927 : String := "434107060A"
theorem cover_1008927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008927 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1008927)
  decide +kernel
#print axioms cover_1008927

def state_1008933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 46)))
def hex_1008933 : String := "414244400743410505410505070742440640060608"
theorem cover_1008933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1008933)
  decide +kernel
#print axioms cover_1008933
end Mub6.Numerical.CircleFullD0.Forest
