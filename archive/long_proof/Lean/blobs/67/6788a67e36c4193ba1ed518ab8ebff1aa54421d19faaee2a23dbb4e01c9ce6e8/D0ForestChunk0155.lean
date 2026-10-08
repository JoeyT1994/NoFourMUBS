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
def state_974710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 28)))
def hex_974710 : String := "410A444309424041444309420A0A0A444309424041440843080809090943094240410A444307420509070A40410607090A404106440906090A"
theorem cover_974710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 57) (hex := hex_974710)
  decide +kernel
#print axioms cover_974710

def state_974767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 28)))
def hex_974767 : String := "40064106444305424006050506"
theorem cover_974767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_974767)
  decide +kernel
#print axioms cover_974767

def state_974780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 29)))
def hex_974780 : String := "4240060A06"
theorem cover_974780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_974780)
  decide +kernel
#print axioms cover_974780

def state_974789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
def hex_974789 : String := "4344424006410843440805080606440805"
theorem cover_974789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_974789)
  decide +kernel
#print axioms cover_974789

def state_974809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
def hex_974809 : String := "40414306440805434442080607440842050A4143440842050644080543444208084240050540064106430607440842054041054305054105430805"
theorem cover_974809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_974809)
  decide +kernel
#print axioms cover_974809

def state_974868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_974868 : String := "4041064306440806414306440806434442080606440842404106074108430808400606"
theorem cover_974868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_974868)
  decide +kernel
#print axioms cover_974868

def state_974903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 57)))
def hex_974903 : String := "4240410505410543050540064106430644424005050605"
theorem cover_974903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_974903)
  decide +kernel
#print axioms cover_974903

def state_974926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 28)))
def hex_974926 : String := "444240410809410843440805084041080A41084308084205400941054344420540064105090505"
theorem cover_974926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_974926)
  decide +kernel
#print axioms cover_974926
end Mub6.Numerical.CircleFullD0.Forest
