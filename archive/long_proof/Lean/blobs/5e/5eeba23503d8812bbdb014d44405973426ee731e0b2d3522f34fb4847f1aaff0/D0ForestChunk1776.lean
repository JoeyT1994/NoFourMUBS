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
def state_2299393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2299393 : String := "42434440414309090741C4094041434209440908080841C443090844400841C4074005410805434440410A0941C40940410A0841C443090844400841C40808"
theorem cover_2299393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2299393)
  decide +kernel
#print axioms cover_2299393

def state_2299457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2299457 : String := "C4"
theorem cover_2299457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2299457)
  decide +kernel
#print axioms cover_2299457

def state_2299460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 108 else 91)))
def hex_2299460 : String := "444041C40941C4064041C443064209440940080641C406"
theorem cover_2299460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299460 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2299460)
  decide +kernel
#print axioms cover_2299460

def state_2299483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 109 else 91)))
def hex_2299483 : String := "444041C4420943090841C4424309094344090944094008094041C4424308050841C442430644400841080608434440090640080608"
theorem cover_2299483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299483 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2299483)
  decide +kernel
#print axioms cover_2299483

def state_2299537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 108 else 91)))
def hex_2299537 : String := "444041C4430909410543054244050644054009054041C44342064409400906424409400841C40644090841C44306420644404107060606"
theorem cover_2299537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2299537)
  decide +kernel
#print axioms cover_2299537

def state_2299593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 109 else 182)))
def hex_2299593 : String := "4041C44243090843090841C4424344094009094409400841C40843440940094105094440084105094008410808"
theorem cover_2299593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2299593)
  decide +kernel
#print axioms cover_2299593
end Mub6.Numerical.CircleFullD0.Forest
