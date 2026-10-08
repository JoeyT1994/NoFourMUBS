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
def state_1313285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 47)))
def hex_1313285 : String := "4041420809084142444340080508080542084409430808"
theorem cover_1313285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1313285)
  decide +kernel
#print axioms cover_1313285

def state_1313308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
def hex_1313308 : String := "44434009050943400A054009410509"
theorem cover_1313308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1313308)
  decide +kernel
#print axioms cover_1313308

def state_1313323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
def hex_1313323 : String := "4344054005054409400905"
theorem cover_1313323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1313323)
  decide +kernel
#print axioms cover_1313323

def state_1313334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_1313334 : String := "440942444009410909400941434244400906400906090643424409400843414206090808090909"
theorem cover_1313334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 39) (hex := hex_1313334)
  decide +kernel
#print axioms cover_1313334

def state_1313374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_1313374 : String := "43054405420605"
theorem cover_1313374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1313374)
  decide +kernel
#print axioms cover_1313374

def state_1313383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_1313383 : String := "05"
theorem cover_1313383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1313383)
  decide +kernel
#print axioms cover_1313383

def state_1313387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_1313387 : String := "05"
theorem cover_1313387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1313387)
  decide +kernel
#print axioms cover_1313387

def state_1313389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_1313389 : String := "410542404344054105424305440540410542440543050905050544410509410542440940090A054305440541050A05"
theorem cover_1313389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 47) (hex := hex_1313389)
  decide +kernel
#print axioms cover_1313389

def state_1313437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_1313437 : String := "05"
theorem cover_1313437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1313437)
  decide +kernel
#print axioms cover_1313437

def state_1313442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
def hex_1313442 : String := "41054244430540410542444340060540090543074041050707050543400705404105420705410542070505"
theorem cover_1313442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_1313442)
  decide +kernel
#print axioms cover_1313442

def state_1313486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 54) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 46)))
def hex_1313486 : String := "05"
theorem cover_1313486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1313486)
  decide +kernel
#print axioms cover_1313486

def state_1313487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 55) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 46)))
def hex_1313487 : String := "42444043414244050A050909430A0A40434142444305064305060542444340090A094340070708440943400905094106094341050A06444009054043050905"
theorem cover_1313487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1313487)
  decide +kernel
#print axioms cover_1313487
end Mub6.Numerical.CircleFullD0.Forest
