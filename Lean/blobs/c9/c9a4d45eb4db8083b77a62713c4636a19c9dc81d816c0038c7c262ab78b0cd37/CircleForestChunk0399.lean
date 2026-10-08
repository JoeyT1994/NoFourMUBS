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
def state_1033284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
def hex_1033284 : String := "414243064440094109420943060909430644404107074142430609074243060A07400641060642430644084006420606430644400841420807084006410606"
theorem cover_1033284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033284 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1033284)
  decide +kernel
#print axioms cover_1033284

def state_1033350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 102 else (if j.val < 4 then 74 else 63)))
def hex_1033350 : String := "44404142430509430644400605064205430544050641420505054006414207430544400605064205430584"
theorem cover_1033350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1033350)
  decide +kernel
#print axioms cover_1033350

def state_1033393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 102 else (if j.val < 4 then 75 else 63)))
def hex_1033393 : String := "44404109420943444041090A414205050584440A09414207434440410705054009070942074344058444078440094109420784"
theorem cover_1033393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1033393)
  decide +kernel
#print axioms cover_1033393

def state_1033445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 63)))
def hex_1033445 : String := "4440414243064440064106050606424306444006050606414243054405400605430A44404108050540060842054305440584400641420606420606"
theorem cover_1033445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1033445)
  decide +kernel
#print axioms cover_1033445
end Mub6.Numerical.CircleFullD0.Forest
