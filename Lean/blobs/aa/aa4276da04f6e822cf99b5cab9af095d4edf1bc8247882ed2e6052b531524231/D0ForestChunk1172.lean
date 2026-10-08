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
def state_1581777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
def hex_1581777 : String := "41424407060607"
theorem cover_1581777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1581777)
  decide +kernel
#print axioms cover_1581777

def state_1581787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 68) else (if j.val < 3 then 194 else (if j.val < 4 then 106 else 206)))
def hex_1581787 : String := "434041424407070707414244434007090A434007050A4409430707424443070A43050544070740410607410A420A440A07"
theorem cover_1581787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1581787)
  decide +kernel
#print axioms cover_1581787

def state_1581836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 68) else (if j.val < 3 then 194 else (if j.val < 4 then 106 else 207)))
def hex_1581836 : String := "43400741424443050A05070740064106420A06"
theorem cover_1581836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1581836)
  decide +kernel
#print axioms cover_1581836

def state_1581855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 68) else (if j.val < 3 then 195 else (if j.val < 4 then 106 else 103)))
def hex_1581855 : String := "444340074109074006410907430706"
theorem cover_1581855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1581855)
  decide +kernel
#print axioms cover_1581855

def state_1581870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 69) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
def hex_1581870 : String := "42444340074142070707400741420A0707430707440707"
theorem cover_1581870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1581870)
  decide +kernel
#print axioms cover_1581870

def state_1581893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 103)))
def hex_1581893 : String := "400641420A0642440A0A4443070606"
theorem cover_1581893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1581893)
  decide +kernel
#print axioms cover_1581893

def state_1581908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
def hex_1581908 : String := "4244084308084443400741424408084443070707084008414208444307084307070843400741424407070707400741424408070707"
theorem cover_1581908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1581908)
  decide +kernel
#print axioms cover_1581908

def state_1581963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 51)))
def hex_1581963 : String := "44434041420A440643060A0606400A0A43404142054443050A050505400A05"
theorem cover_1581963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581963 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1581963)
  decide +kernel
#print axioms cover_1581963
end Mub6.Numerical.CircleFullD0.Forest
