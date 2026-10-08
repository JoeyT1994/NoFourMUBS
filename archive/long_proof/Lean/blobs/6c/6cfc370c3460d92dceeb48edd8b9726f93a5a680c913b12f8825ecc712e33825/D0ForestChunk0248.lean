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
def state_996962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
def hex_996962 : String := "400644434142060505064341424006440643410A0606400544054305420A05420605414206400644060A06"
theorem cover_996962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_996962)
  decide +kernel
#print axioms cover_996962

def state_997007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
def hex_997007 : String := "44430542410905054342410705054241070A07"
theorem cover_997007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_997007)
  decide +kernel
#print axioms cover_997007

def state_997027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 86)))
def hex_997027 : String := "434241050505424140094409090505"
theorem cover_997027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997027 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_997027)
  decide +kernel
#print axioms cover_997027

def state_997042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 87)))
def hex_997042 : String := "434241400744090640054405430505054241400909404443050543420A050A44430542410905054342410905054241080A410905410905"
theorem cover_997042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997042 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_997042)
  decide +kernel
#print axioms cover_997042

def state_997097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
def hex_997097 : String := "4005440543054241050505"
theorem cover_997097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_997097)
  decide +kernel
#print axioms cover_997097

def state_997108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 21)))
def hex_997108 : String := "4005430505"
theorem cover_997108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_997108)
  decide +kernel
#print axioms cover_997108

def state_997114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 20)))
def hex_997114 : String := "42400642064143440540050506064042060542414305440540064206050505"
theorem cover_997114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_997114)
  decide +kernel
#print axioms cover_997114

def state_997147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
def hex_997147 : String := "440642064143400644060A0606"
theorem cover_997147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_997147)
  decide +kernel
#print axioms cover_997147
end Mub6.Numerical.CircleFullD0.Forest
