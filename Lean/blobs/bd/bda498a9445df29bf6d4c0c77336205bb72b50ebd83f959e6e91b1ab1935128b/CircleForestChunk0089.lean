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
def state_21339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 20)))
def hex_21339 : String := "444142404405A344430507A305054142A34043050A434405410705440A410A0A42404305440505434405094442070542090905"
theorem cover_21339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_21339)
  decide +kernel
#print axioms cover_21339

def state_21391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 40 else 20)))
def hex_21391 : String := "440641424043440608A34306A340430544050706424043054405424140090A05050606"
theorem cover_21391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_21391)
  decide +kernel
#print axioms cover_21391

def state_21427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 40)))
def hex_21427 : String := "41424044430607A34406A340440543054142400A09050506424044054305070606"
theorem cover_21427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_21427)
  decide +kernel
#print axioms cover_21427

def state_21462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
def hex_21462 : String := "A3"
theorem cover_21462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_21462)
  decide +kernel
#print axioms cover_21462

def state_21465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 82 else 41)))
def hex_21465 : String := "44414240414305050541430644060706050507"
theorem cover_21465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_21465)
  decide +kernel
#print axioms cover_21465

def state_21484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 83 else 41)))
def hex_21484 : String := "444142400A434144090744050A0A0A42400543050A054142400707074240434405070A434441070507440A0707"
theorem cover_21484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_21484)
  decide +kernel
#print axioms cover_21484

def state_21530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 82 else 41)))
def hex_21530 : String := "440607"
theorem cover_21530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_21530)
  decide +kernel
#print axioms cover_21530

def state_21534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 83 else 82)))
def hex_21534 : String := "4142404341090641090A430609400A06424043064406410A080606"
theorem cover_21534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_21534)
  decide +kernel
#print axioms cover_21534

def state_21561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 83 else 83)))
def hex_21561 : String := "4142400707074240434441074206050744410A0A07430744414243070A0742430608060707"
theorem cover_21561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_21561)
  decide +kernel
#print axioms cover_21561
end Mub6.Numerical.CircleFullPrototype.Forest
