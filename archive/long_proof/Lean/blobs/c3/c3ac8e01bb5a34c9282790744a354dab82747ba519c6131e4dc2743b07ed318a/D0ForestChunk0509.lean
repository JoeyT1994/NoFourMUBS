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
def state_1310879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_1310879 : String := "42404307444105080843444107080744414240094307090742400843444142400809070808440941090608410742400843084408080808"
theorem cover_1310879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 55) (hex := hex_1310879)
  decide +kernel
#print axioms cover_1310879

def state_1310934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1310934 : String := "424007430741070807"
theorem cover_1310934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1310934)
  decide +kernel
#print axioms cover_1310934

def state_1310943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1310943 : String := "444240084308080808"
theorem cover_1310943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1310943)
  decide +kernel
#print axioms cover_1310943

def state_1310952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1310952 : String := "40074307410708"
theorem cover_1310952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1310952)
  decide +kernel
#print axioms cover_1310952

def state_1310959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_1310959 : String := "4107420907"
theorem cover_1310959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1310959)
  decide +kernel
#print axioms cover_1310959

def state_1310964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1310964 : String := "430744410744080707"
theorem cover_1310964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1310964)
  decide +kernel
#print axioms cover_1310964

def state_1310975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_1310975 : String := "4344404207430707424305074344410605054407410605404205430507054440424441074307080707420844410707064007420806"
theorem cover_1310975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310975 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1310975)
  decide +kernel
#print axioms cover_1310975

def state_1311028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1311028 : String := "4344404344074106070743444142400606400643060607414206064240070540074344060506440706400A4341060A06444007444106070606"
theorem cover_1311028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1311028)
  decide +kernel
#print axioms cover_1311028

def state_1311087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_1311087 : String := "44404107050505"
theorem cover_1311087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1311087)
  decide +kernel
#print axioms cover_1311087

def state_1311100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1311100 : String := "42444041050505054440070507"
theorem cover_1311100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311100 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1311100)
  decide +kernel
#print axioms cover_1311100

def state_1311114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1311114 : String := "44084041070A08"
theorem cover_1311114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1311114)
  decide +kernel
#print axioms cover_1311114
end Mub6.Numerical.CircleFullD0.Forest
