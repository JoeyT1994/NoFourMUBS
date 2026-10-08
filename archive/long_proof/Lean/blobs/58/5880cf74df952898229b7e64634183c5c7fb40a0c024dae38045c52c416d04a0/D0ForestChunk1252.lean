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
def state_1600958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 100)))
def hex_1600958 : String := "43444240414344420A400A070A0A0A414307440705059F42404143050A05059F4442400A410A0A9F42400A059F"
theorem cover_1600958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1600958)
  decide +kernel
#print axioms cover_1600958

def state_1601004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 60 else 101)))
def hex_1601004 : String := "40410A0A05"
theorem cover_1601004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1601004)
  decide +kernel
#print axioms cover_1601004

def state_1601009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 101)))
def hex_1601009 : String := "404143444240060A0606064344420A40069F420506064143444240414305080505084205084442400605400608420506434442059F054442059F05"
theorem cover_1601009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1601009)
  decide +kernel
#print axioms cover_1601009

def state_1601069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 100)))
def hex_1601069 : String := "42400A0A40410606414344420A400641064344420A060606420A06064344420A400A4143440A0A060A420A400641060A440A06"
theorem cover_1601069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601069 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1601069)
  decide +kernel
#print axioms cover_1601069

def state_1601120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 101)))
def hex_1601120 : String := "420A400641064344420A060606"
theorem cover_1601120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1601120)
  decide +kernel
#print axioms cover_1601120

def state_1601135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 100)))
def hex_1601135 : String := "42400841050540414344420840089F4208400A9F44080A0841434442400A059F42059F44420A9F42059F434442059F0509"
theorem cover_1601135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1601135)
  decide +kernel
#print axioms cover_1601135

def state_1601184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 101)))
def hex_1601184 : String := "4205404143444205400A05050A430508410505"
theorem cover_1601184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601184 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1601184)
  decide +kernel
#print axioms cover_1601184
end Mub6.Numerical.CircleFullD0.Forest
