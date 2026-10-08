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
def state_943952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 53)))
def hex_943952 : String := "4042444106430642400644410605060606064244410A4305404244050A440506050A0A"
theorem cover_943952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_943952)
  decide +kernel
#print axioms cover_943952

def state_943988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 53)))
def hex_943988 : String := "424441434209060943420940064441064305070609094441430640064209064306400642444143060743400607070944410643064006070606"
theorem cover_943988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_943988)
  decide +kernel
#print axioms cover_943988

def state_944045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 53)))
def hex_944045 : String := "424441430A074340420744070A07074109430A0944410A434042444107050A0A0A4042440707444107070A4207070A"
theorem cover_944045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_944045)
  decide +kernel
#print axioms cover_944045

def state_944094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 52)))
def hex_944094 : String := "4340060A40424441080841060644410606064244410A43094008070A0A"
theorem cover_944094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_944094)
  decide +kernel
#print axioms cover_944094

def state_944124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 52)))
def hex_944124 : String := "40424405060505"
theorem cover_944124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_944124)
  decide +kernel
#print axioms cover_944124

def state_944132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 52)))
def hex_944132 : String := "4244410808414306400642440806064340060540084244084106080844410805410606"
theorem cover_944132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_944132)
  decide +kernel
#print axioms cover_944132

def state_944167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 52)))
def hex_944167 : String := "42444143054008070541430A404244070A0A0A4305404244084107054405410A054207054409410A05"
theorem cover_944167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_944167)
  decide +kernel
#print axioms cover_944167
end Mub6.Numerical.CircleFullD0.Forest
