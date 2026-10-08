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
def state_147667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 12)))
def hex_147667 : String := "41424008444305414208050543054142400844080805050505"
theorem cover_147667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_147667)
  decide +kernel
#print axioms cover_147667

def state_147695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
def hex_147695 : String := "4344414240070707084107420907444142080A0841424009410A420943060607420840064142060608"
theorem cover_147695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_147695)
  decide +kernel
#print axioms cover_147695

def state_147738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 26)))
def hex_147738 : String := "41424043074408414240074307070708434405410705444142080505414240430744084142400743060807084306440641420606420606074208050505"
theorem cover_147738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 61) (hex := hex_147738)
  decide +kernel
#print axioms cover_147738

def state_147802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 27)))
def hex_147802 : String := "4307414244070707420907"
theorem cover_147802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_147802)
  decide +kernel
#print axioms cover_147802

def state_147814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 52 else 27)))
def hex_147814 : String := "414244070707424440070A0907"
theorem cover_147814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_147814)
  decide +kernel
#print axioms cover_147814

def state_147828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 53 else 27)))
def hex_147828 : String := "424440430741424407050742090743410742440609074142444043070506050742444043098443068409444007430684400743078440094341070941050907"
theorem cover_147828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_147828)
  decide +kernel
#print axioms cover_147828
end Mub6.Numerical.CircleFullPrototype.Forest
