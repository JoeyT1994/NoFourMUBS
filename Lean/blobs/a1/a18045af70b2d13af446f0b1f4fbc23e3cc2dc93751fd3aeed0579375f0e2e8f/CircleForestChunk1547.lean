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
def state_2244850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 23)))
def hex_2244850 : String := "4441404243054405410507050540420709420A0541404244430808084443050643410505410642400608064208054042074443070707420A44430541050A0A"
theorem cover_2244850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2244850)
  decide +kernel
#print axioms cover_2244850

def state_2244914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 46)))
def hex_2244914 : String := "4140424344060606064243440508444105054106404206060805400942434407070743440541050909"
theorem cover_2244914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2244914)
  decide +kernel
#print axioms cover_2244914

def state_2244956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
def hex_2244956 : String := "40424344410607084406410607064208434405410840080844410640064206054106400608"
theorem cover_2244956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2244956)
  decide +kernel
#print axioms cover_2244956

def state_2244994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
def hex_2244994 : String := "420707"
theorem cover_2244994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2244994)
  decide +kernel
#print axioms cover_2244994

def state_2244998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 47)))
def hex_2244998 : String := "07"
theorem cover_2244998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2244998)
  decide +kernel
#print axioms cover_2244998

def state_2245000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 94 else 47)))
def hex_2245000 : String := "4441404207050540070A4140420744430541050743410507410607420844054305410540080540070A"
theorem cover_2245000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2245000)
  decide +kernel
#print axioms cover_2245000

def state_2245042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 95 else 94)))
def hex_2245042 : String := "414042070642434405410507444105074108074305440541054006054007420709"
theorem cover_2245042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2245042)
  decide +kernel
#print axioms cover_2245042
end Mub6.Numerical.CircleFullD0.Forest
