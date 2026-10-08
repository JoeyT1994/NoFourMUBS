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
def state_1514842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 106 else 61)))
def hex_1514842 : String := "4440410708074041424305440705054243054440070740050607410708"
theorem cover_1514842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514842 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1514842)
  decide +kernel
#print axioms cover_1514842

def state_1514872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 122)))
def hex_1514872 : String := "404142430744050707424344074007070A074107420A07"
theorem cover_1514872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1514872)
  decide +kernel
#print axioms cover_1514872

def state_1514895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 123)))
def hex_1514895 : String := "40414243444007060606430707424344404107090740410642060706444041060906064307074106420607"
theorem cover_1514895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514895 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1514895)
  decide +kernel
#print axioms cover_1514895

def state_1514938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 30)))
def hex_1514938 : String := "43440840050844404142430707074243060906410707404142430544070507424344400607054440090740094107070741424307070742430744070707"
theorem cover_1514938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1514938)
  decide +kernel
#print axioms cover_1514938

def state_1515002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
def hex_1515002 : String := "404143064209060608"
theorem cover_1515002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1515002)
  decide +kernel
#print axioms cover_1515002

def state_1515012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
def hex_1515012 : String := "41434244080505424440094143084209080840410505414305424440050A050543054209054406054308424409400941090808"
theorem cover_1515012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1515012)
  decide +kernel
#print axioms cover_1515012

def state_1515063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
def hex_1515063 : String := "41430842440840414305424408050808080808"
theorem cover_1515063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1515063)
  decide +kernel
#print axioms cover_1515063

def state_1515083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1515083 : String := "404142430909090941420A43080A0A"
theorem cover_1515083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1515083)
  decide +kernel
#print axioms cover_1515083
end Mub6.Numerical.CircleFullD0.Forest
