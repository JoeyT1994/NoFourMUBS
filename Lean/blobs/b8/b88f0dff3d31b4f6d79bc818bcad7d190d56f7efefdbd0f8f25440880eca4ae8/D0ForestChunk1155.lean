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
def state_1577660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 50)))
def hex_1577660 : String := "404142440943090909424409434041060606404109424406080941090609414244064306070942064406430609"
theorem cover_1577660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1577660)
  decide +kernel
#print axioms cover_1577660

def state_1577705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 50)))
def hex_1577705 : String := "40414244094309090942440943404109094109420A090A094142440707094244094340410706060A4409430909"
theorem cover_1577705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1577705)
  decide +kernel
#print axioms cover_1577705

def state_1577757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 102)))
def hex_1577757 : String := "41424409D0094244430909434041D0424406080941D0064041D0424408080941D04244060A094409430909"
theorem cover_1577757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577757 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1577757)
  decide +kernel
#print axioms cover_1577757

def state_1577800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 102)))
def hex_1577800 : String := "41424409D00942440643064041D006064409430909"
theorem cover_1577800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577800 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1577800)
  decide +kernel
#print axioms cover_1577800

def state_1577821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 102)))
def hex_1577821 : String := "4041420A0942440A0A4409430909414244070709424443090743400A070A4409430909"
theorem cover_1577821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1577821)
  decide +kernel
#print axioms cover_1577821

def state_1577859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 64) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
def hex_1577859 : String := "D0"
theorem cover_1577859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1577859)
  decide +kernel
#print axioms cover_1577859

def state_1577864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 152 else 65) else (if j.val < 3 then 192 else (if j.val < 4 then 208 else 206)))
def hex_1577864 : String := "41D0424408084443400741090640074109084307400741D007"
theorem cover_1577864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577864 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1577864)
  decide +kernel
#print axioms cover_1577864
end Mub6.Numerical.CircleFullD0.Forest
