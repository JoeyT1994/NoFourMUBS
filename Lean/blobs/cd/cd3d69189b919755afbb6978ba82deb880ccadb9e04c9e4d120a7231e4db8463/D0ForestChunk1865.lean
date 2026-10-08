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
def state_2320595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
def hex_2320595 : String := "414342064044050605420A404441430542050543064206064143420605420A4044050705430642060644050A4306420606"
theorem cover_2320595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_2320595)
  decide +kernel
#print axioms cover_2320595

def state_2320644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 45)))
def hex_2320644 : String := "4143420606420A40444143420606420A07064107060A06"
theorem cover_2320644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320644 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2320644)
  decide +kernel
#print axioms cover_2320644

def state_2320667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
def hex_2320667 : String := "4306404441430609064143064205060606"
theorem cover_2320667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2320667)
  decide +kernel
#print axioms cover_2320667

def state_2320686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 28 else 22)))
def hex_2320686 : String := "40444241430540090506094241070607440606"
theorem cover_2320686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320686 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2320686)
  decide +kernel
#print axioms cover_2320686

def state_2320709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 29 else 44)))
def hex_2320709 : String := "43404409094442050542410506074044420909424143090809410A09444241430540090509410509424143074044420905070743094009440909410709"
theorem cover_2320709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2320709)
  decide +kernel
#print axioms cover_2320709

def state_2320770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 29 else 44)))
def hex_2320770 : String := "43094009440909"
theorem cover_2320770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2320770)
  decide +kernel
#print axioms cover_2320770

def state_2320777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 29 else 44)))
def hex_2320777 : String := "414307400A444205050709"
theorem cover_2320777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2320777)
  decide +kernel
#print axioms cover_2320777

def state_2320788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 29 else 45)))
def hex_2320788 : String := "424143404442410708070707404442080808444241074307080707434009064008444206090841074307400807"
theorem cover_2320788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2320788)
  decide +kernel
#print axioms cover_2320788
end Mub6.Numerical.CircleFullD0.Forest
