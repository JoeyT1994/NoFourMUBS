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
def state_1594155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 100)))
def hex_1594155 : String := "42404109430909410943440942400943050909440942400941090A09400909"
theorem cover_1594155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1594155)
  decide +kernel
#print axioms cover_1594155

def state_1594188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 39) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 101)))
def hex_1594188 : String := "414344094240090909440906434442400943090A09424043070705400743090944420A09420A06"
theorem cover_1594188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_1594188)
  decide +kernel
#print axioms cover_1594188

def state_1594227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 39) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 101)))
def hex_1594227 : String := "414344424009080842050844424009090942400A0508434442054009430508054442400A054009410943050942054041090505"
theorem cover_1594227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1594227)
  decide +kernel
#print axioms cover_1594227

def state_1594278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 101)))
def hex_1594278 : String := "40410943090641084344090844094240090808"
theorem cover_1594278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1594278)
  decide +kernel
#print axioms cover_1594278

def state_1594297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
def hex_1594297 : String := "44424041094309064109434409420A0944090A4005094240410606414344420A09420A06064344420A400941090A420A40064106050A400641064344090606"
theorem cover_1594297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1594297)
  decide +kernel
#print axioms cover_1594297

def state_1594361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
def hex_1594361 : String := "430844424009080808"
theorem cover_1594361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1594361)
  decide +kernel
#print axioms cover_1594361

def state_1594371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
def hex_1594371 : String := "44424041430809430644420609424005054009084108064041084308080842404108050508"
theorem cover_1594371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1594371)
  decide +kernel
#print axioms cover_1594371
end Mub6.Numerical.CircleFullD0.Forest
