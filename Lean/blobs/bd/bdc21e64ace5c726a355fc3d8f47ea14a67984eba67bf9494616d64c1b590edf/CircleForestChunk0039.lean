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
def state_9225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 17)))
def hex_9225 : String := "40434142440805060608434142444043410906084341090809400543410542050805440940424306050642434107060A0742080641424408050908"
theorem cover_9225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_9225)
  decide +kernel
#print axioms cover_9225

def state_9284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 8)))
def hex_9284 : String := "440808"
theorem cover_9284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9284 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_9284)
  decide +kernel
#print axioms cover_9284

def state_9289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 16)))
def hex_9289 : String := "4043410942440740084107060641094208084341094205054109420709"
theorem cover_9289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_9289)
  decide +kernel
#print axioms cover_9289

def state_9323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 34)))
def hex_9323 : String := "40434109424408080941090843410942440740420708070A41094244070809"
theorem cover_9323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_9323)
  decide +kernel
#print axioms cover_9323

def state_9355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
def hex_9355 : String := "434142054409054244080544084008439A084105420508"
theorem cover_9355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_9355)
  decide +kernel
#print axioms cover_9355

def state_9380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 108) else (if j.val < 3 then 54 else (if j.val < 4 then 72 else 35)))
def hex_9380 : String := "424440410542050941064206094005064409404105439A050A"
theorem cover_9380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_9380)
  decide +kernel
#print axioms cover_9380

def state_9405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 109) else (if j.val < 3 then 54 else (if j.val < 4 then 72 else 35)))
def hex_9405 : String := "4244404208439A0842430707439A410A07404205439A0542439A05439A4408054440439A08439A0A40439A440808439A440A410A08"
theorem cover_9405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 53) (hex := hex_9405)
  decide +kernel
#print axioms cover_9405

def state_9458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 73 else 35)))
def hex_9458 : String := "4142050A424408050A"
theorem cover_9458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_9458)
  decide +kernel
#print axioms cover_9458

def state_9467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 36 else 17)))
def hex_9467 : String := "4409400A0A"
theorem cover_9467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_9467)
  decide +kernel
#print axioms cover_9467
end Mub6.Numerical.CircleFullPrototype.Forest
