import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_57589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
def hex_57589 : String := "424440410A080A0844404143420808420706084143420A440A060A43420A4407080708"
theorem cover_57589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_57589)
  decide +kernel
#print axioms cover_57589

def state_57624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_57624 : String := "43420544414305400805050542440505440708"
theorem cover_57624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_57624)
  decide +kernel
#print axioms cover_57624

def state_57643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_57643 : String := "4143420544404305414205440A05050505420A440A404106050505"
theorem cover_57643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_57643)
  decide +kernel
#print axioms cover_57643

def state_57670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_57670 : String := "440A4041420A43440740060609420707410A05"
theorem cover_57670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_57670)
  decide +kernel
#print axioms cover_57670

def state_57691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_57691 : String := "404142434443090743094007090743090707414243444043090A0A400909440A40070A43094440090A094243444007050907430944400741090707"
theorem cover_57691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_57691)
  decide +kernel
#print axioms cover_57691

def state_57752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_57752 : String := "42434443094041424443060606064244070807414244090606094340060640060644404106074106420707400606430906"
theorem cover_57752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_57752)
  decide +kernel
#print axioms cover_57752

def state_57801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_57801 : String := "42434441430940070909414309400809430508440708430907"
theorem cover_57801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57801 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_57801)
  decide +kernel
#print axioms cover_57801
end Mub6.Numerical.CircleFullPrototype.Forest
