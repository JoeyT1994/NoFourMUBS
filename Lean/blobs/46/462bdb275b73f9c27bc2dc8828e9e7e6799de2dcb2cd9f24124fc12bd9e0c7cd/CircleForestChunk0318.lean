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
def state_151714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
def hex_151714 : String := "424344404142434440410807070807084207430807414243444007070807084207430807084407064308444042410606080906"
theorem cover_151714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_151714)
  decide +kernel
#print axioms cover_151714

def state_151765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 93) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
def hex_151765 : String := "424344074041420606070A07434440054108050807"
theorem cover_151765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_151765)
  decide +kernel
#print axioms cover_151765

def state_151786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 27 else 27)))
def hex_151786 : String := "434440424143050505054241430809050508444042410A0505424109050940424108050508"
theorem cover_151786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_151786)
  decide +kernel
#print axioms cover_151786

def state_151823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 47) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
def hex_151823 : String := "42434440414243050505054142430A07050540414209050541420A050A440740414207050507430505"
theorem cover_151823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_151823)
  decide +kernel
#print axioms cover_151823

def state_151867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 27)))
def hex_151867 : String := "44404142430644064041090A0943060942430607430644064041420605054106064142430609064206064041420A08420A08410A0A"
theorem cover_151867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_151867)
  decide +kernel
#print axioms cover_151867

def state_151921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 54)))
def hex_151921 : String := "404142090907410907"
theorem cover_151921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_151921)
  decide +kernel
#print axioms cover_151921
end Mub6.Numerical.CircleFullPrototype.Forest
