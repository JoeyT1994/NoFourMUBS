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
def state_2311879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 45)))
def hex_2311879 : String := "404442090942430608430608440606"
theorem cover_2311879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2311879)
  decide +kernel
#print axioms cover_2311879

def state_2311896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 45)))
def hex_2311896 : String := "44434241400844430508080841400807084241080808430808"
theorem cover_2311896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2311896)
  decide +kernel
#print axioms cover_2311896

def state_2311922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 90)))
def hex_2311922 : String := "434241404405430507054044430A08080A41054044430508084405074241404442080508440542080540080A41404405070540084443050808"
theorem cover_2311922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 57) (hex := hex_2311922)
  decide +kernel
#print axioms cover_2311922

def state_2311979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 91)))
def hex_2311979 : String := "434241070807420808"
theorem cover_2311979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2311979)
  decide +kernel
#print axioms cover_2311979

def state_2311988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 45)))
def hex_2311988 : String := "4044434208080808444342410A0641404409080606424140080A084140084443080808084342060808"
theorem cover_2311988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311988 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2311988)
  decide +kernel
#print axioms cover_2311988

def state_2312030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
def hex_2312030 : String := "444207434140064406060741060742430805430808"
theorem cover_2312030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312030 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2312030)
  decide +kernel
#print axioms cover_2312030

def state_2312053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 29 else 44)))
def hex_2312053 : String := "4341404407420743410607074442074341050707420A434140440A0A0A0A410A070741400744074207434106070607"
theorem cover_2312053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2312053)
  decide +kernel
#print axioms cover_2312053

def state_2312103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 44)))
def hex_2312103 : String := "444243410607064341064006440506064243410608064341060806"
theorem cover_2312103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2312103)
  decide +kernel
#print axioms cover_2312103
end Mub6.Numerical.CircleFullD0.Forest
