import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2577492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 96 else 35)))
def hex_2577492 : String := "42404144070944074305090540410707410707"
theorem cover_2577492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2577492)
  decide +kernel
#print axioms cover_2577492

def state_2577511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 97 else 35)))
def hex_2577511 : String := "4240410909410A4443420505420840070543050840414407094407434209070941440643420A0606440743424007050742400908400706"
theorem cover_2577511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2577511)
  decide +kernel
#print axioms cover_2577511

def state_2577567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 34)))
def hex_2577567 : String := "43424007070742404107074144074307424007050744074307424007070707"
theorem cover_2577567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2577567)
  decide +kernel
#print axioms cover_2577567

def state_2577599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 96 else 35)))
def hex_2577599 : String := "42404144070606410544050540410707410707"
theorem cover_2577599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_2577599)
  decide +kernel
#print axioms cover_2577599

def state_2577619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 92 else (if j.val < 4 then 97 else 35)))
def hex_2577619 : String := "404144090944090641444342050742084007410507434205400905420840090844434205074240090540074107074342054006054208400908"
theorem cover_2577619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2577619)
  decide +kernel
#print axioms cover_2577619

def state_2577676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 97 else 35)))
def hex_2577676 : String := "4041440743420907090A41440743424007410505074240094108084007074407430A42400A0A0A"
theorem cover_2577676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2577676)
  decide +kernel
#print axioms cover_2577676

def state_2577716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
def hex_2577716 : String := "4144420905094442090509"
theorem cover_2577716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2577716)
  decide +kernel
#print axioms cover_2577716
end Mub6.Numerical.CircleFullD0.Forest
