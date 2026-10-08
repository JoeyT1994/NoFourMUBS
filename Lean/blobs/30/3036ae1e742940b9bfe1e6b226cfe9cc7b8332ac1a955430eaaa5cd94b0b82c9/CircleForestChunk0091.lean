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
def state_21843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
def hex_21843 : String := "4240A3434406410506444105060540434406074441060641074240430644060743064406070743064406410706"
theorem cover_21843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_21843)
  decide +kernel
#print axioms cover_21843

def state_21888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
def hex_21888 : String := "4240434406420606440842084140430608430608084306440642080640430644064142404306440641070606060606"
theorem cover_21888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_21888)
  decide +kernel
#print axioms cover_21888

def state_21935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
def hex_21935 : String := "43064406414240430605050606"
theorem cover_21935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_21935)
  decide +kernel
#print axioms cover_21935

def state_21948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 20)))
def hex_21948 : String := "40430644064142400706060606"
theorem cover_21948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_21948)
  decide +kernel
#print axioms cover_21948

def state_21961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
def hex_21961 : String := "424043064406424140080606060606"
theorem cover_21961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_21961)
  decide +kernel
#print axioms cover_21961

def state_21981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 42)))
def hex_21981 : String := "4341424440070707074209054142444006434142060709060607420909"
theorem cover_21981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_21981)
  decide +kernel
#print axioms cover_21981

def state_22011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 40 else 42)))
def hex_22011 : String := "414244400707070742444043070943064209070707"
theorem cover_22011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_22011)
  decide +kernel
#print axioms cover_22011

def state_22033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 42)))
def hex_22033 : String := "42444043410742090741420606420644A3064341074244A30707414205074244A30544A30740070707"
theorem cover_22033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_22033)
  decide +kernel
#print axioms cover_22033
end Mub6.Numerical.CircleFullPrototype.Forest
