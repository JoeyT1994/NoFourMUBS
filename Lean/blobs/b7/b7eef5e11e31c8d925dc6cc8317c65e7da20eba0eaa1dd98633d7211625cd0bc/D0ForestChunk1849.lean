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
def state_2316870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 30 else 44)))
def hex_2316870 : String := "4340444142060607414206064207084441420A43400505060A41420A43404406080A0A0A404406064441060741060A"
theorem cover_2316870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2316870)
  decide +kernel
#print axioms cover_2316870

def state_2316919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 44)))
def hex_2316919 : String := "444106424340064406410643080606434006440606064106420808"
theorem cover_2316919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2316919)
  decide +kernel
#print axioms cover_2316919

def state_2316947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 88)))
def hex_2316947 : String := "414243050605424340444105430507410543420A05420606054044060644050A43404405420505054006440505"
theorem cover_2316947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316947 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2316947)
  decide +kernel
#print axioms cover_2316947

def state_2316992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 89)))
def hex_2316992 : String := "4142434006050643070642434044414308060808440A0A40080A4340444241050841050808440507400644424105080608"
theorem cover_2316992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2316992)
  decide +kernel
#print axioms cover_2316992

def state_2317041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 61 else 44)))
def hex_2317041 : String := "400644410642060641064243080606"
theorem cover_2317041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317041 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2317041)
  decide +kernel
#print axioms cover_2317041

def state_2317056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 45)))
def hex_2317056 : String := "4142434044060644420906080643400607064243400844414208080A080843400844414208074208080808"
theorem cover_2317056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317056 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_2317056)
  decide +kernel
#print axioms cover_2317056

def state_2317101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
def hex_2317101 : String := "4243404405050509430509"
theorem cover_2317101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2317101)
  decide +kernel
#print axioms cover_2317101

def state_2317113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 30 else 44)))
def hex_2317113 : String := "430A0A"
theorem cover_2317113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2317113)
  decide +kernel
#print axioms cover_2317113
end Mub6.Numerical.CircleFullD0.Forest
