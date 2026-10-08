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
def state_981138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
def hex_981138 : String := "4442410743074007444241094340064409074006094107430709070707"
theorem cover_981138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981138 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 29) (hex := hex_981138)
  decide +kernel
#print axioms cover_981138

def state_981167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_981167 : String := "444241400743090840430706434442410906410940060942410740060907440642050741074007434442090707444209070707"
theorem cover_981167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_981167)
  decide +kernel
#print axioms cover_981167

def state_981222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
def hex_981222 : String := "40410706414442430840064144080706084243070707440808"
theorem cover_981222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_981222)
  decide +kernel
#print axioms cover_981222

def state_981248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
def hex_981248 : String := "4144060706"
theorem cover_981248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_981248)
  decide +kernel
#print axioms cover_981248

def state_981253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
def hex_981253 : String := "414442434006414406060606434005414405070540064144420605420607064243400641070640064144060606430740074107444206070744064206430806"
theorem cover_981253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_981253)
  decide +kernel
#print axioms cover_981253

def state_981316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
def hex_981316 : String := "4308404107054144050705"
theorem cover_981316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_981316)
  decide +kernel
#print axioms cover_981316

def state_981327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_981327 : String := "4243074440074107420643074406070707"
theorem cover_981327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_981327)
  decide +kernel
#print axioms cover_981327

def state_981346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_981346 : String := "4006414344064206400641430706060606"
theorem cover_981346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_981346)
  decide +kernel
#print axioms cover_981346

def state_981364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_981364 : String := "414344420605074406074344050506"
theorem cover_981364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_981364)
  decide +kernel
#print axioms cover_981364
end Mub6.Numerical.CircleFullD0.Forest
