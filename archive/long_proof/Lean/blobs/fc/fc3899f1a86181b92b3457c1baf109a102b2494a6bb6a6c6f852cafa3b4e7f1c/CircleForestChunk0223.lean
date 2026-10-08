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
def state_990985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
def hex_990985 : String := "43444107420640074307070744414205074206400643440606064105420507"
theorem cover_990985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_990985)
  decide +kernel
#print axioms cover_990985

def state_991016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
def hex_991016 : String := "434441054205404344410508054441054205400608054344410505050505444105420540434441050605050505"
theorem cover_991016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_991016)
  decide +kernel
#print axioms cover_991016

def state_991062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
def hex_991062 : String := "43074441074240074307070707"
theorem cover_991062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_991062)
  decide +kernel
#print axioms cover_991062

def state_991076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 44)))
def hex_991076 : String := "4441074240430707434441070807444142050742400843084408050807400743060707"
theorem cover_991076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_991076)
  decide +kernel
#print axioms cover_991076

def state_991113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 88)))
def hex_991113 : String := "42400743070507"
theorem cover_991113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_991113)
  decide +kernel
#print axioms cover_991113

def state_991122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 88)))
def hex_991122 : String := "434441074240074308440805070744C607"
theorem cover_991122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_991122)
  decide +kernel
#print axioms cover_991122

def state_991139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 88)))
def hex_991139 : String := "43444142054007430605424043440805444105050543050540430844080743440808444142050808410509410542050744C641054205400705"
theorem cover_991139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_991139)
  decide +kernel
#print axioms cover_991139

def state_991196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 88)))
def hex_991196 : String := "40430707434442410608070744C607"
theorem cover_991196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_991196)
  decide +kernel
#print axioms cover_991196

def state_991211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 89)))
def hex_991211 : String := "41074240070507"
theorem cover_991211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_991211)
  decide +kernel
#print axioms cover_991211

def state_991220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
def hex_991220 : String := "43440641420640064307060606"
theorem cover_991220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_991220)
  decide +kernel
#print axioms cover_991220
end Mub6.Numerical.CircleFullD0.Forest
