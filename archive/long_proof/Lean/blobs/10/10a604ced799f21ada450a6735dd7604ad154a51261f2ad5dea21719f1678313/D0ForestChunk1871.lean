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
def state_2322039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 88)))
def hex_2322039 : String := "4241430540440505054340440542090505404442410509410509424143050A094105094405420A0541054305404405424105090505"
theorem cover_2322039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2322039)
  decide +kernel
#print axioms cover_2322039

def state_2322094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 112) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 89)))
def hex_2322094 : String := "4307404442410543054008050507440507"
theorem cover_2322094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2322094)
  decide +kernel
#print axioms cover_2322094

def state_2322111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 89)))
def hex_2322111 : String := "43404442414305400905064105064241070607440606404442414340080A0A0A4143400805400844050743090842080844420A410506420A07"
theorem cover_2322111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2322111)
  decide +kernel
#print axioms cover_2322111

def state_2322168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 60 else 89)))
def hex_2322168 : String := "410743074044424107430708070707"
theorem cover_2322168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2322168)
  decide +kernel
#print axioms cover_2322168

def state_2322183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
def hex_2322183 : String := "4442050542410543060A07"
theorem cover_2322183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2322183)
  decide +kernel
#print axioms cover_2322183

def state_2322198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 112) else (if j.val < 3 then 84 else (if j.val < 4 then 61 else 88)))
def hex_2322198 : String := "43404442050542410543050A410543054005050540444206064206064405420A05"
theorem cover_2322198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2322198)
  decide +kernel
#print axioms cover_2322198

def state_2322232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 84 else (if j.val < 4 then 122 else 88)))
def hex_2322232 : String := "404442410A074143054044054205050543090742410A0A4143404405080540444208050844050843400944090940080A44420A41050A420A41050A"
theorem cover_2322232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322232 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2322232)
  decide +kernel
#print axioms cover_2322232
end Mub6.Numerical.CircleFullD0.Forest
