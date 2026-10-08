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
def state_1625954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 34)))
def hex_1625954 : String := "444341420507054142090942090943054142404443050505054044070505420505"
theorem cover_1625954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1625954)
  decide +kernel
#print axioms cover_1625954

def state_1625988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 35)))
def hex_1625988 : String := "4142064044070705420505"
theorem cover_1625988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625988 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1625988)
  decide +kernel
#print axioms cover_1625988

def state_1626001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 35)))
def hex_1626001 : String := "404443064106420640440806060606"
theorem cover_1626001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1626001)
  decide +kernel
#print axioms cover_1626001

def state_1626017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 102) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 35)))
def hex_1626017 : String := "444341420607424007050741420808424044080A44434106050843050840074407430708434106094142064008064240090540094443050A05"
theorem cover_1626017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626017 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1626017)
  decide +kernel
#print axioms cover_1626017

def state_1626074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 102) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 35)))
def hex_1626074 : String := "4443410605410642054044430508050506"
theorem cover_1626074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1626074)
  decide +kernel
#print axioms cover_1626074

def state_1626091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 35)))
def hex_1626091 : String := "4240444305414205400A0505050540444341420507054142400A05400A44070542400A05400A0543054142050A0544430541050505"
theorem cover_1626091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1626091)
  decide +kernel
#print axioms cover_1626091

def state_1626145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
def hex_1626145 : String := "424044084341064206080744084306074044084341084208080844084341084240080640080808"
theorem cover_1626145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1626145)
  decide +kernel
#print axioms cover_1626145

def state_1626186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 49 else 17)))
def hex_1626186 : String := "444341420740080842070A41070743410A0A07"
theorem cover_1626186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1626186)
  decide +kernel
#print axioms cover_1626186
end Mub6.Numerical.CircleFullD0.Forest
