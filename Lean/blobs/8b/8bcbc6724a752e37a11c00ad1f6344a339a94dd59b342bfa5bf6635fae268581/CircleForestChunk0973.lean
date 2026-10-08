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
def state_1534008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 36)))
def hex_1534008 : String := "4140420743440741050707424344074140060807074344414042074305074208430541050707410540070844074140064243410507064305070707"
theorem cover_1534008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1534008)
  decide +kernel
#print axioms cover_1534008

def state_1534067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 37)))
def hex_1534067 : String := "414042064305064243444105400708054441060706430544410540074207430507054007420743440741050707"
theorem cover_1534067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1534067)
  decide +kernel
#print axioms cover_1534067

def state_1534113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 18)))
def hex_1534113 : String := "43084408414042084308090808"
theorem cover_1534113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1534113)
  decide +kernel
#print axioms cover_1534113

def state_1534127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 18)))
def hex_1534127 : String := "4408410508"
theorem cover_1534127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1534127)
  decide +kernel
#print axioms cover_1534127

def state_1534133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 36)))
def hex_1534133 : String := "414042430844084109074344084105084441404207430807080841404243050943050A42084305094008080808"
theorem cover_1534133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1534133)
  decide +kernel
#print axioms cover_1534133

def state_1534178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 37)))
def hex_1534178 : String := "414042434408054441090841054006054305444105404243050743054407050805420843054408054042084308440841404207440705080708"
theorem cover_1534178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1534178)
  decide +kernel
#print axioms cover_1534178
end Mub6.Numerical.CircleFullD0.Forest
