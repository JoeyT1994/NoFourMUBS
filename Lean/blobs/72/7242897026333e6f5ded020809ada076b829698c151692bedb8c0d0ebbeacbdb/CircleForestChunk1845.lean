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
def state_2315959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
def hex_2315959 : String := "4240440543054205050505"
theorem cover_2315959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2315959)
  decide +kernel
#print axioms cover_2315959

def state_2315973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 88)))
def hex_2315973 : String := "434105420905414205054240090A400905"
theorem cover_2315973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2315973)
  decide +kernel
#print axioms cover_2315973

def state_2315991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 116 else 89)))
def hex_2315991 : String := "41424044054305420A0505054240090A400944054305410506"
theorem cover_2315991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2315991)
  decide +kernel
#print axioms cover_2315991

def state_2316016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 117 else 89)))
def hex_2316016 : String := "4142404443420505420A0543420808080A40440543410508080542404409080A4044090844430541050943410509410808"
theorem cover_2316016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 49) (hex := hex_2316016)
  decide +kernel
#print axioms cover_2316016

def state_2316065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 44)))
def hex_2316065 : String := "44054341050A41050A"
theorem cover_2316065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2316065)
  decide +kernel
#print axioms cover_2316065

def state_2316074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 58 else 44)))
def hex_2316074 : String := "4044430541054240090505434105424009050541424044050505054240440908440543054105084044050705440543054105420505"
theorem cover_2316074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2316074)
  decide +kernel
#print axioms cover_2316074

def state_2316128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
def hex_2316128 : String := "4240444243050605424341054006050643410540060506440542050540440543050605"
theorem cover_2316128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2316128)
  decide +kernel
#print axioms cover_2316128

def state_2316166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 88)))
def hex_2316166 : String := "41424340440542074305060540060A434044050505400644050542430707434044090944054105094007440741420743050607"
theorem cover_2316166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2316166)
  decide +kernel
#print axioms cover_2316166
end Mub6.Numerical.CircleFullD0.Forest
