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
def state_16183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 4)))
def hex_16183 : String := "44404143090607410907404106434244070644400909060641430906434244074206094409440908420609"
theorem cover_16183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_16183)
  decide +kernel
#print axioms cover_16183

def state_16226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 4)))
def hex_16226 : String := "44400A41090940410843080A41430809434409080A"
theorem cover_16226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_16226)
  decide +kernel
#print axioms cover_16226

def state_16247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 4)))
def hex_16247 : String := "42444340060909060A"
theorem cover_16247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_16247)
  decide +kernel
#print axioms cover_16247

def state_16256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_16256 : String := "4006410643444206400641064308060606"
theorem cover_16256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_16256)
  decide +kernel
#print axioms cover_16256

def state_16277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_16277 : String := "4207414344074042414405060505420741080544074042064143440506060707430507"
theorem cover_16277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_16277)
  decide +kernel
#print axioms cover_16277

def state_16312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_16312 : String := "42074143440740420741080A0A44074007420741430A0707434407404207050A07"
theorem cover_16312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_16312)
  decide +kernel
#print axioms cover_16312

def state_16346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_16346 : String := "42064441434009420908060906"
theorem cover_16346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_16346)
  decide +kernel
#print axioms cover_16346

def state_16360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
def hex_16360 : String := "4441434206404407060A0643420740090A07410606"
theorem cover_16360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_16360)
  decide +kernel
#print axioms cover_16360

def state_16383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 10)))
def hex_16383 : String := "434042440A0608420A0840420644414308064340090A060642440A064441430841060A430A430A0741060A"
theorem cover_16383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_16383)
  decide +kernel
#print axioms cover_16383
end Mub6.Numerical.CircleFullPrototype.Forest
