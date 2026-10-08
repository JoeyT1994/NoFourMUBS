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
def state_1626677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_1626677 : String := "404244430741050743074140070740070707424443074108400742080743074140084206074042440707074244430708060707"
theorem cover_1626677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626677 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1626677)
  decide +kernel
#print axioms cover_1626677

def state_1626729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_1626729 : String := "424443074107064307414007074006424407070607"
theorem cover_1626729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1626729)
  decide +kernel
#print axioms cover_1626729

def state_1626752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 34)))
def hex_1626752 : String := "430741400742440707074007424407430741070707"
theorem cover_1626752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626752 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1626752)
  decide +kernel
#print axioms cover_1626752

def state_1626773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 35)))
def hex_1626773 : String := "434107074140424407430741070707424443074107074307414007074007050740424407430741070707424443054107050507"
theorem cover_1626773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1626773)
  decide +kernel
#print axioms cover_1626773

def state_1626824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 17)))
def hex_1626824 : String := "07"
theorem cover_1626824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1626824)
  decide +kernel
#print axioms cover_1626824

def state_1626826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_1626826 : String := "4042440843410540050805440508424408434108404208084208080844084341070708"
theorem cover_1626826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1626826)
  decide +kernel
#print axioms cover_1626826

def state_1626862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_1626862 : String := "424406434140420A06424443410806060A064006420A06414005080606"
theorem cover_1626862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1626862)
  decide +kernel
#print axioms cover_1626862

def state_1626893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 34)))
def hex_1626893 : String := "43414042080642080840064244094341404208060940060941080606410806"
theorem cover_1626893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1626893)
  decide +kernel
#print axioms cover_1626893
end Mub6.Numerical.CircleFullD0.Forest
