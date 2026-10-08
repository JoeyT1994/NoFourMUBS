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
def state_1326633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
def hex_1326633 : String := "4341424405400508054244054005434142440540050705424405400543C80505050505"
theorem cover_1326633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1326633)
  decide +kernel
#print axioms cover_1326633

def state_1326668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
def hex_1326668 : String := "434108424407404341084244074043C807070841070708084107420705"
theorem cover_1326668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 29) (hex := hex_1326668)
  decide +kernel
#print axioms cover_1326668

def state_1326697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 10)))
def hex_1326697 : String := "4405400508"
theorem cover_1326697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1326697)
  decide +kernel
#print axioms cover_1326697

def state_1326702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
def hex_1326702 : String := "4142070505"
theorem cover_1326702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1326702)
  decide +kernel
#print axioms cover_1326702

def state_1326707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
def hex_1326707 : String := "434108420908410707"
theorem cover_1326707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1326707)
  decide +kernel
#print axioms cover_1326707

def state_1326719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
def hex_1326719 : String := "424440064306060606"
theorem cover_1326719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1326719)
  decide +kernel
#print axioms cover_1326719

def state_1326733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1326733 : String := "06"
theorem cover_1326733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1326733)
  decide +kernel
#print axioms cover_1326733

def state_1326734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 47) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1326734 : String := "424440054341064244400543C8414244050605424405400543C80505400643410644C80641064442400543C805060644400543410642C80505064106050606"
theorem cover_1326734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 63) (hex := hex_1326734)
  decide +kernel
#print axioms cover_1326734

def state_1326797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
def hex_1326797 : String := "05"
theorem cover_1326797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1326797)
  decide +kernel
#print axioms cover_1326797

def state_1326800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1326800 : String := "424440430807080606"
theorem cover_1326800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326800 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1326800)
  decide +kernel
#print axioms cover_1326800

def state_1326813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 47) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
def hex_1326813 : String := "414244080A0842444043C8410742440740070744084043C80508094043410A44C80A410A444240430A0A0A400609420A060A4440434108080808400609"
theorem cover_1326813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1326813)
  decide +kernel
#print axioms cover_1326813
end Mub6.Numerical.CircleFullD0.Forest
