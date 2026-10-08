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
def state_1556204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
def hex_1556204 : String := "434140424407414309060744070942444143400742070707078944414309070789400742070941400742070705"
theorem cover_1556204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1556204)
  decide +kernel
#print axioms cover_1556204

def state_1556249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 87)))
def hex_1556249 : String := "4341404244410643090541064340060A0644414309060941064309068940424405430905098941400689400589"
theorem cover_1556249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1556249)
  decide +kernel
#print axioms cover_1556249

def state_1556295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
def hex_1556295 : String := "4341400942440909090941404207094244078944430907430941400744074207070707"
theorem cover_1556295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1556295)
  decide +kernel
#print axioms cover_1556295

def state_1556331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 87)))
def hex_1556331 : String := "4140094442890942890909"
theorem cover_1556331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1556331)
  decide +kernel
#print axioms cover_1556331

def state_1556342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
def hex_1556342 : String := "414044424308060808444289434140084409080941084007440708428943410809084044094243080509444289094289430941400844080809"
theorem cover_1556342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1556342)
  decide +kernel
#print axioms cover_1556342

def state_1556399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
def hex_1556399 : String := "4042050942440543414005420509050544094309414005440542050905"
theorem cover_1556399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1556399)
  decide +kernel
#print axioms cover_1556399

def state_1556428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 21)))
def hex_1556428 : String := "44094309414009440942430941400944094243080808090909"
theorem cover_1556428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 25) (hex := hex_1556428)
  decide +kernel
#print axioms cover_1556428
end Mub6.Numerical.CircleFullD0.Forest
