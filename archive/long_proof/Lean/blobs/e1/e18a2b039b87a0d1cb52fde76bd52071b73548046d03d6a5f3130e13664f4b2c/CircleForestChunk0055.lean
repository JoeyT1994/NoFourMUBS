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
def state_950604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
def hex_950604 : String := "444305064340424144054305070541440505054205054042064144064340420641070606060606"
theorem cover_950604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_950604)
  decide +kernel
#print axioms cover_950604

def state_950643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
def hex_950643 : String := "42064144060706"
theorem cover_950643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_950643)
  decide +kernel
#print axioms cover_950643

def state_950651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
def hex_950651 : String := "4042414443084042080A08084443054042410805414405080542050508410A4443054042414405080505050A424108080A"
theorem cover_950651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_950651)
  decide +kernel
#print axioms cover_950651

def state_950703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
def hex_950703 : String := "44434042410707410A4407080740420741070707430809"
theorem cover_950703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_950703)
  decide +kernel
#print axioms cover_950703

def state_950726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
def hex_950726 : String := "4443404241070741444340420707070708444305064308074207074042074107070643400808400907"
theorem cover_950726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_950726)
  decide +kernel
#print axioms cover_950726

def state_950768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
def hex_950768 : String := "44434042410A44430A4042070A07080A0A4042414407054407430A05410A444340424107070A0740420707070A42070A0A"
theorem cover_950768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_950768)
  decide +kernel
#print axioms cover_950768
end Mub6.Numerical.CircleFullD0.Forest
