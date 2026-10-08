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
def state_19883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 119) else (if j.val < 3 then 60 else (if j.val < 4 then 82 else 41)))
def hex_19883 : String := "4442404142430844090508A341420909A3404108A34108A3424008444105A30507"
theorem cover_19883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_19883)
  decide +kernel
#print axioms cover_19883

def state_19916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 119) else (if j.val < 3 then 60 else (if j.val < 4 then 83 else 41)))
def hex_19916 : String := "4442404341420509A34105A3434105A305404341440908A341090A434109A3094240060540430706430705"
theorem cover_19916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_19916)
  decide +kernel
#print axioms cover_19916

def state_19959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
def hex_19959 : String := "414344090505434442404109A309094205074442050905"
theorem cover_19959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_19959)
  decide +kernel
#print axioms cover_19959

def state_19982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 41)))
def hex_19982 : String := "40414307444209070743084442400A430909070741430744090743074442090707"
theorem cover_19982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19982 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_19982)
  decide +kernel
#print axioms cover_19982

def state_20015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 20)))
def hex_20015 : String := "40414307440A074308440507414307440907430844424044060A090907"
theorem cover_20015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_20015)
  decide +kernel
#print axioms cover_20015

def state_20045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 28) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
def hex_20045 : String := "420907"
theorem cover_20045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_20045)
  decide +kernel
#print axioms cover_20045

def state_20049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
def hex_20049 : String := "404143440907440942050743440642404307410844060743064105060744094240410543440905050540410743074409074107430609410943064406420509"
theorem cover_20049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_20049)
  decide +kernel
#print axioms cover_20049

def state_20112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 29) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 20)))
def hex_20112 : String := "40414307094306440607410706"
theorem cover_20112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_20112)
  decide +kernel
#print axioms cover_20112
end Mub6.Numerical.CircleFullPrototype.Forest
