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
def state_1612841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 100)))
def hex_1612841 : String := "414344409F420508409F0544409F424107054108430809409F4205084344409F050509"
theorem cover_1612841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1612841)
  decide +kernel
#print axioms cover_1612841

def state_1612877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
def hex_1612877 : String := "43084440429F080808"
theorem cover_1612877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1612877)
  decide +kernel
#print axioms cover_1612877

def state_1612886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
def hex_1612886 : String := "434440429F0A424108060840429F084205084440429F414308440A08430A4440420906094042090609420941080940429F410843440A0809420908"
theorem cover_1612886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1612886)
  decide +kernel
#print axioms cover_1612886

def state_1612945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
def hex_1612945 : String := "4241430844404205070505054108430844404209080808"
theorem cover_1612945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612945 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1612945)
  decide +kernel
#print axioms cover_1612945

def state_1612968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 101)))
def hex_1612968 : String := "404241430544409F050505410843444042050805054440420941060909400505420508"
theorem cover_1612968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1612968)
  decide +kernel
#print axioms cover_1612968

def state_1613011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 82) else (if j.val < 3 then 208 else (if j.val < 4 then 122 else 200)))
def hex_1613011 : String := "414344404241090941439F06094207074042094106090944404209060940060909"
theorem cover_1613011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613011 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1613011)
  decide +kernel
#print axioms cover_1613011

def state_1613044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 82) else (if j.val < 3 then 209 else (if j.val < 4 then 122 else 200)))
def hex_1613044 : String := "41434440424106439F06064241074307070840060844400642410606060643444042094106090940420906094440060909"
theorem cover_1613044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1613044)
  decide +kernel
#print axioms cover_1613044

def state_1613093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 177 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 200)))
def hex_1613093 : String := "420941430844080809"
theorem cover_1613093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1613093)
  decide +kernel
#print axioms cover_1613093
end Mub6.Numerical.CircleFullD0.Forest
