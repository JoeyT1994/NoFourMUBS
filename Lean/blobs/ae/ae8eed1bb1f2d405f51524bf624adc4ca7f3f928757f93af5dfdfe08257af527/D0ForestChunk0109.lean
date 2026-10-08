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
def state_963686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_963686 : String := "42440A4341400A420A0A0A0A440A4341400743070A070A"
theorem cover_963686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963686 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_963686)
  decide +kernel
#print axioms cover_963686

def state_963712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 26)))
def hex_963712 : String := "43404142064406430906060606"
theorem cover_963712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_963712)
  decide +kernel
#print axioms cover_963712

def state_963734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 54)))
def hex_963734 : String := "430606"
theorem cover_963734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_963734)
  decide +kernel
#print axioms cover_963734

def state_963737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 54)))
def hex_963737 : String := "434406404142C7434409404142C70909094406404142C74309440640414205070606420609064243440640414206090606064309064142064309060606"
theorem cover_963737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 61) (hex := hex_963737)
  decide +kernel
#print axioms cover_963737

def state_963798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
def hex_963798 : String := "42064344054041420609060606"
theorem cover_963798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_963798)
  decide +kernel
#print axioms cover_963798

def state_963811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
def hex_963811 : String := "06"
theorem cover_963811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963811 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_963811)
  decide +kernel
#print axioms cover_963811

def state_963817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 72 else 110)))
def hex_963817 : String := "4041C742440643400906064443404142064406434041080806060606064340414208084208444308080841080840410542064406050641420644060806"
theorem cover_963817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_963817)
  decide +kernel
#print axioms cover_963817

def state_963878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 73 else 110)))
def hex_963878 : String := "4041C70606"
theorem cover_963878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_963878)
  decide +kernel
#print axioms cover_963878

def state_963883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 111)))
def hex_963883 : String := "434041084208084108084005410506"
theorem cover_963883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_963883)
  decide +kernel
#print axioms cover_963883

def state_963903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 110)))
def hex_963903 : String := "C7"
theorem cover_963903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_963903)
  decide +kernel
#print axioms cover_963903

def state_963906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 211 else (if j.val < 4 then 144 else 220)))
def hex_963906 : String := "404142C70742C70741420A0942C709"
theorem cover_963906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 15) (hex := hex_963906)
  decide +kernel
#print axioms cover_963906
end Mub6.Numerical.CircleFullD0.Forest
