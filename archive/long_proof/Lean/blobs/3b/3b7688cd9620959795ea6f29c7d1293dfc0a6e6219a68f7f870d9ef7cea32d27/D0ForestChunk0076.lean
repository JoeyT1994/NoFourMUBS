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
def state_955704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 108)))
def hex_955704 : String := "40414208084208084142440843094008080909"
theorem cover_955704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955704 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_955704)
  decide +kernel
#print axioms cover_955704

def state_955724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
def hex_955724 : String := "4142430644070506420707"
theorem cover_955724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_955724)
  decide +kernel
#print axioms cover_955724

def state_955736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
def hex_955736 : String := "42434440410607090644404142434407050507424307080741424344080505094243094408050940410507414205054243440705050743064440070906"
theorem cover_955736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_955736)
  decide +kernel
#print axioms cover_955736

def state_955797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
def hex_955797 : String := "42434409074440414208070709400741424307440505074207074307440907"
theorem cover_955797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_955797)
  decide +kernel
#print axioms cover_955797

def state_955829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 108)))
def hex_955829 : String := "4041080841420808420808"
theorem cover_955829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_955829)
  decide +kernel
#print axioms cover_955829

def state_955841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
def hex_955841 : String := "4142054307054243440805054307440705"
theorem cover_955841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_955841)
  decide +kernel
#print axioms cover_955841

def state_955859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
def hex_955859 : String := "424344400541054205430805050543444041420507084142430905090940054105420507440505"
theorem cover_955859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_955859)
  decide +kernel
#print axioms cover_955859

def state_955898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
def hex_955898 : String := "42434440410808414208080840410507410542054307054440050605434440080940074107074440080840054105420505"
theorem cover_955898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_955898)
  decide +kernel
#print axioms cover_955898
end Mub6.Numerical.CircleFullD0.Forest
