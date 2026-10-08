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
def state_278255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
def hex_278255 : String := "43074244414007050507440807"
theorem cover_278255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_278255)
  decide +kernel
#print axioms cover_278255

def state_278268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
def hex_278268 : String := "414306424440410605050A06430605"
theorem cover_278268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_278268)
  decide +kernel
#print axioms cover_278268

def state_278283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 19)))
def hex_278283 : String := "404143070907410A07"
theorem cover_278283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_278283)
  decide +kernel
#print axioms cover_278283

def state_278299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 58 else 36)))
def hex_278299 : String := "414342444041430909434205090A4143420509080509094244400A41080509094342440541400705054441400A0505094205440509"
theorem cover_278299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_278299)
  decide +kernel
#print axioms cover_278299

def state_278352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 58 else 36)))
def hex_278352 : String := "4143424405404108050544404106050509420544050905"
theorem cover_278352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_278352)
  decide +kernel
#print axioms cover_278352

def state_278375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 58 else 37)))
def hex_278375 : String := "4041094307094143090843440507440507"
theorem cover_278375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_278375)
  decide +kernel
#print axioms cover_278375

def state_278392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 59 else 18)))
def hex_278392 : String := "4440414208090A41080540094108440508"
theorem cover_278392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_278392)
  decide +kernel
#print axioms cover_278392

def state_278409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 37 else (if j.val < 4 then 29 else 18)))
def hex_278409 : String := "43444041094243090909414243060906424305050609444009410942050909"
theorem cover_278409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_278409)
  decide +kernel
#print axioms cover_278409

def state_278440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 18)))
def hex_278440 : String := "424344054140070505440541404405070505434441400A0505410907440A410905"
theorem cover_278440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_278440)
  decide +kernel
#print axioms cover_278440

def state_278473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 18)))
def hex_278473 : String := "4142434405404108050544050843444041060505400906444041420506050540090505"
theorem cover_278473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_278473)
  decide +kernel
#print axioms cover_278473
end Mub6.Numerical.CircleFullPrototype.Forest
