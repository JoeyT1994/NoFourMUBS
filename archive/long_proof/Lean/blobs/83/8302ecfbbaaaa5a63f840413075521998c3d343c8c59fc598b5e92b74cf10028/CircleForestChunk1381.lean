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
def state_1632204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 99 else 36)))
def hex_1632204 : String := "40444243410842080808434108400808084243410605410842080843414008084044080A05410840080844420943410805084206434105054108440805"
theorem cover_1632204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_1632204)
  decide +kernel
#print axioms cover_1632204

def state_1632265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 103) else (if j.val < 3 then 54 else (if j.val < 4 then 99 else 36)))
def hex_1632265 : String := "404442434142050505410909434140444208080A440905400A0541400808400A094243050A43410505410A0A44420543050905"
theorem cover_1632265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1632265)
  decide +kernel
#print axioms cover_1632265

def state_1632317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 98 else 36)))
def hex_1632317 : String := "41404244070707424443054107050507404244070507420505"
theorem cover_1632317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1632317)
  decide +kernel
#print axioms cover_1632317

def state_1632344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 80 else 102) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 36)))
def hex_1632344 : String := "424443410840070808434140080840440707444208074205054108400808444307064307410806"
theorem cover_1632344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1632344)
  decide +kernel
#print axioms cover_1632344

def state_1632383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 81 else 102) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 36)))
def hex_1632383 : String := "42444341084042080705084341440840080505410844084008054443070843074108420807"
theorem cover_1632383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_1632383)
  decide +kernel
#print axioms cover_1632383
end Mub6.Numerical.CircleFullD0.Forest
