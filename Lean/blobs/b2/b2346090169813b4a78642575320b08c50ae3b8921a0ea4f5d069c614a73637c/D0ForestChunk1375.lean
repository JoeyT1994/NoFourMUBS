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
def state_1630791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
def hex_1630791 : String := "404244060A064244414340054244050805050641434009424441080A0944410506094005424405080543400A42440A090A0A440606"
theorem cover_1630791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1630791)
  decide +kernel
#print axioms cover_1630791

def state_1630844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
def hex_1630844 : String := "440641430705430706"
theorem cover_1630844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1630844)
  decide +kernel
#print axioms cover_1630844

def state_1630853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
def hex_1630853 : String := "40054244054105434005424405410506050505"
theorem cover_1630853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1630853)
  decide +kernel
#print axioms cover_1630853

def state_1630872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_1630872 : String := "434006424406434140424406060642444341070606430941400642090606060641400642440643410A060606060606"
theorem cover_1630872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 47) (hex := hex_1630872)
  decide +kernel
#print axioms cover_1630872

def state_1630921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
def hex_1630921 : String := "44400942414307444009420909094309444009424143090A43090A09090907"
theorem cover_1630921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630921 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1630921)
  decide +kernel
#print axioms cover_1630921

def state_1630952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
def hex_1630952 : String := "44404241050A06424143440540084209090543444006420A060A0A064009424144430908070A09"
theorem cover_1630952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1630952)
  decide +kernel
#print axioms cover_1630952

def state_1630991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_1630991 : String := "43444009424341090941444006420A06090A060944400A42410A0A060A"
theorem cover_1630991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1630991)
  decide +kernel
#print axioms cover_1630991

def state_1631020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_1631020 : String := "44064144080A0A"
theorem cover_1631020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1631020)
  decide +kernel
#print axioms cover_1631020
end Mub6.Numerical.CircleFullD0.Forest
