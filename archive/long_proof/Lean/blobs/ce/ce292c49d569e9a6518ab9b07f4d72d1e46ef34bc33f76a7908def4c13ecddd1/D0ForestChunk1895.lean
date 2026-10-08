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
def state_2327799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
def hex_2327799 : String := "43400942440909094042440709094244414309070741434009424409090940424407090942440741434009420909830944094143090909094409410A09"
theorem cover_2327799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327799 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 61) (hex := hex_2327799)
  decide +kernel
#print axioms cover_2327799

def state_2327860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 10)))
def hex_2327860 : String := "44410A09410A09"
theorem cover_2327860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2327860)
  decide +kernel
#print axioms cover_2327860

def state_2327867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
def hex_2327867 : String := "430940094244094143094009090909"
theorem cover_2327867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2327867)
  decide +kernel
#print axioms cover_2327867

def state_2327884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 11)))
def hex_2327884 : String := "4042444143090A09410A080A4244414307404244410709070707430640090641074306074441070907"
theorem cover_2327884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327884 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2327884)
  decide +kernel
#print axioms cover_2327884

def state_2327926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
def hex_2327926 : String := "4244410A0A080A"
theorem cover_2327926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2327926)
  decide +kernel
#print axioms cover_2327926

def state_2327937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 22)))
def hex_2327937 : String := "404244410A0A0A0A4244410743074042440907074244410543060707070707"
theorem cover_2327937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_2327937)
  decide +kernel
#print axioms cover_2327937

def state_2327969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
def hex_2327969 : String := "4244410A0A080A"
theorem cover_2327969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2327969)
  decide +kernel
#print axioms cover_2327969

def state_2327979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
def hex_2327979 : String := "4340424441050A07070740420606424441054307060707"
theorem cover_2327979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2327979)
  decide +kernel
#print axioms cover_2327979

def state_2328004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 44)))
def hex_2328004 : String := "4244410A0A41070A0A"
theorem cover_2328004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2328004)
  decide +kernel
#print axioms cover_2328004
end Mub6.Numerical.CircleFullD0.Forest
