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
def state_1646091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 119 else (if j.val < 4 then 105 else 84)))
def hex_1646091 : String := "4140434406064407420641054005064306440606404344A042060944420741074007074241064007064140094306074043090743440606074306440706"
theorem cover_1646091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1646091)
  decide +kernel
#print axioms cover_1646091

def state_1646152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 85)))
def hex_1646152 : String := "420641400906404308444206090806"
theorem cover_1646152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1646152)
  decide +kernel
#print axioms cover_1646152

def state_1646167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 43)))
def hex_1646167 : String := "42064109400943064442060806"
theorem cover_1646167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1646167)
  decide +kernel
#print axioms cover_1646167

def state_1646182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 53 else 42)))
def hex_1646182 : String := "4140434407420641054008060707404344074206414043440606070640430A07070707"
theorem cover_1646182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1646182)
  decide +kernel
#print axioms cover_1646182

def state_1646218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
def hex_1646218 : String := "40434405424105400543440506050505434407420641054043440506050707"
theorem cover_1646218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1646218)
  decide +kernel
#print axioms cover_1646218

def state_1646250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
def hex_1646250 : String := "43444241054008074105400543440542070505424140430905434407090740430A0A43440742060907414005430905400A4344420A090944050A4405420705"
theorem cover_1646250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1646250)
  decide +kernel
#print axioms cover_1646250
end Mub6.Numerical.CircleFullD0.Forest
