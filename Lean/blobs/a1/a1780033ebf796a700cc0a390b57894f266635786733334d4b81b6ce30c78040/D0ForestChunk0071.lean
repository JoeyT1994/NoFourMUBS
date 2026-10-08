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
def state_954477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 52)))
def hex_954477 : String := "4340080808"
theorem cover_954477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_954477)
  decide +kernel
#print axioms cover_954477

def state_954484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 53)))
def hex_954484 : String := "424105440805414408054408430805"
theorem cover_954484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_954484)
  decide +kernel
#print axioms cover_954484

def state_954499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 53)))
def hex_954499 : String := "42414408054408434042050842074105080541440843400542054105080544084340420808424108084108084005420508"
theorem cover_954499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954499 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_954499)
  decide +kernel
#print axioms cover_954499

def state_954548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 53)))
def hex_954548 : String := "4005420505"
theorem cover_954548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_954548)
  decide +kernel
#print axioms cover_954548

def state_954553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 26)))
def hex_954553 : String := "444308084340414244084306050842080841424408434008424105080805440843400609084244084340084108080844084309084041080841420508420808"
theorem cover_954553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954553 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_954553)
  decide +kernel
#print axioms cover_954553

def state_954617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 26)))
def hex_954617 : String := "440A434041420A080A414244064340420808420641080606440843400841080808420A4408430808400A06"
theorem cover_954617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954617 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_954617)
  decide +kernel
#print axioms cover_954617

def state_954660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 26)))
def hex_954660 : String := "4408434041420808084142440843400808084408430808420808400A4142080808"
theorem cover_954660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_954660)
  decide +kernel
#print axioms cover_954660

def state_954693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 26)))
def hex_954693 : String := "404142050A0A41420544080542060A"
theorem cover_954693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_954693)
  decide +kernel
#print axioms cover_954693
end Mub6.Numerical.CircleFullD0.Forest
