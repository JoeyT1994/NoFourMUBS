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
def state_179226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 28)))
def hex_179226 : String := "4142440840050844064043060943060A424406404306080806"
theorem cover_179226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_179226)
  decide +kernel
#print axioms cover_179226

def state_179252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 48) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 29)))
def hex_179252 : String := "4205404344410506410542054306054409054344410706410542050744410542050905"
theorem cover_179252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_179252)
  decide +kernel
#print axioms cover_179252

def state_179288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 29)))
def hex_179288 : String := "4043444205060A4442054105440605054344420806420541050A44420541050805"
theorem cover_179288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_179288)
  decide +kernel
#print axioms cover_179288

def state_179322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
def hex_179322 : String := "43440641424306050606444142440605060641420509420A40430609430609"
theorem cover_179322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_179322)
  decide +kernel
#print axioms cover_179322

def state_179354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 58 else 29)))
def hex_179354 : String := "44064142404306054306054006064240060606"
theorem cover_179354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_179354)
  decide +kernel
#print axioms cover_179354

def state_179374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 58)))
def hex_179374 : String := "4142404406054406054006064240060606"
theorem cover_179374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_179374)
  decide +kernel
#print axioms cover_179374

def state_179392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 98) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 59)))
def hex_179392 : String := "4205404344060505434406410542050744410542050905"
theorem cover_179392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_179392)
  decide +kernel
#print axioms cover_179392

def state_179415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 99) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 59)))
def hex_179415 : String := "42404344060505434406420541050A444205410508054043064406414205090A43064406414205400943060542400A430605400606"
theorem cover_179415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_179415)
  decide +kernel
#print axioms cover_179415

def state_179469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 14)))
def hex_179469 : String := "4441070641074209400607"
theorem cover_179469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_179469)
  decide +kernel
#print axioms cover_179469
end Mub6.Numerical.CircleFullPrototype.Forest
