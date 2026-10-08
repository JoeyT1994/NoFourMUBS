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
def state_22074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 42)))
def hex_22074 : String := "4244404309094342414440090A09094107094241444009430905090841444009430942080909094009430909444043074107094307410742090707"
theorem cover_22074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_22074)
  decide +kernel
#print axioms cover_22074

def state_22133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 43)))
def hex_22133 : String := "404307094307410709"
theorem cover_22133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_22133)
  decide +kernel
#print axioms cover_22133

def state_22142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 21)))
def hex_22142 : String := "4440070707"
theorem cover_22142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_22142)
  decide +kernel
#print axioms cover_22142

def state_22147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
def hex_22147 : String := "4244404305094342090542090909440507"
theorem cover_22147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_22147)
  decide +kernel
#print axioms cover_22147

def state_22169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 40 else 42)))
def hex_22169 : String := "410742440A0707"
theorem cover_22169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_22169)
  decide +kernel
#print axioms cover_22169

def state_22177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 42)))
def hex_22177 : String := "424440434105420507050540070507"
theorem cover_22177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_22177)
  decide +kernel
#print axioms cover_22177

def state_22193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 61) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 42)))
def hex_22193 : String := "444043420A41074406074241050841444043424105080742050743070507440809430A420541054406430605404307420907430705"
theorem cover_22193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_22193)
  decide +kernel
#print axioms cover_22193

def state_22246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 61) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 42)))
def hex_22246 : String := "444043074107424440430608060707430641070607"
theorem cover_22246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_22246)
  decide +kernel
#print axioms cover_22246

def state_22267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 42)))
def hex_22267 : String := "43410706414205074244404306050505440607"
theorem cover_22267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_22267)
  decide +kernel
#print axioms cover_22267

def state_22286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 43)))
def hex_22286 : String := "400707"
theorem cover_22286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_22286)
  decide +kernel
#print axioms cover_22286

def state_22289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 21)))
def hex_22289 : String := "07"
theorem cover_22289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_22289)
  decide +kernel
#print axioms cover_22289
end Mub6.Numerical.CircleFullPrototype.Forest
