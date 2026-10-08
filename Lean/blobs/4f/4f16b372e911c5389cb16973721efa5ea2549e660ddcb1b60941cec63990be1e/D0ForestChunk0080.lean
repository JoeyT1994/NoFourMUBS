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
def state_956638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 27)))
def hex_956638 : String := "44404143420806084342070708414342440840084105084408064208084342440840070844080742080840074143420506054307420507"
theorem cover_956638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_956638)
  decide +kernel
#print axioms cover_956638

def state_956693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 39 else 27)))
def hex_956693 : String := "420544404108084143080543080805"
theorem cover_956693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_956693)
  decide +kernel
#print axioms cover_956693

def state_956712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
def hex_956712 : String := "4042444341070707434105404205440705070544434140080740080741070743410A404244430A070A444309080A0A410540420544070507420744070A"
theorem cover_956712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_956712)
  decide +kernel
#print axioms cover_956712

def state_956773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 26)))
def hex_956773 : String := "40420544070507"
theorem cover_956773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_956773)
  decide +kernel
#print axioms cover_956773

def state_956780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
def hex_956780 : String := "434042430A05430A050A05"
theorem cover_956780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_956780)
  decide +kernel
#print axioms cover_956780

def state_956793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 26)))
def hex_956793 : String := "40444309410842080843410A424044090A090941420A0A42404408430A41050844070A4044080A0944090A"
theorem cover_956793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_956793)
  decide +kernel
#print axioms cover_956793

def state_956836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 26)))
def hex_956836 : String := "40444308074341420508424008074008074105420507440707"
theorem cover_956836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_956836)
  decide +kernel
#print axioms cover_956836

def state_956861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 27)))
def hex_956861 : String := "4340430A410A420A0A0A4043410542054440430A050A0505430A05"
theorem cover_956861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_956861)
  decide +kernel
#print axioms cover_956861
end Mub6.Numerical.CircleFullD0.Forest
