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
def state_941147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 16 else 25)))
def hex_941147 : String := "404441050841054342094009440709054407410707"
theorem cover_941147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_941147)
  decide +kernel
#print axioms cover_941147

def state_941168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 25)))
def hex_941168 : String := "4044084105434240440805440841050940084408410508054441074342070707414342074005070543424044070707404408410743420707070707"
theorem cover_941168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_941168)
  decide +kernel
#print axioms cover_941168

def state_941227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 17 else 25)))
def hex_941227 : String := "42054005440705"
theorem cover_941227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_941227)
  decide +kernel
#print axioms cover_941227

def state_941235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 24)))
def hex_941235 : String := "410808"
theorem cover_941235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_941235)
  decide +kernel
#print axioms cover_941235

def state_941239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
def hex_941239 : String := "434042440805084244080544080A400505"
theorem cover_941239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_941239)
  decide +kernel
#print axioms cover_941239

def state_941258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
def hex_941258 : String := "4244084143420806054342400608080844084106430608"
theorem cover_941258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941258 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_941258)
  decide +kernel
#print axioms cover_941258

def state_941281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
def hex_941281 : String := "4244410808414340420A080A054340424408410A434208080844084106084244070744080A40420808420707440841430A084340420806094008420808"
theorem cover_941281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_941281)
  decide +kernel
#print axioms cover_941281

def state_941342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 25)))
def hex_941342 : String := "40424408050842440741054305054408410508"
theorem cover_941342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_941342)
  decide +kernel
#print axioms cover_941342
end Mub6.Numerical.CircleFullD0.Forest
