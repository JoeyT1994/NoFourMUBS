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
def state_2262012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
def hex_2262012 : String := "42434144400742070507074144400843090840074342070942070907430909"
theorem cover_2262012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2262012)
  decide +kernel
#print axioms cover_2262012

def state_2262045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2262045 : String := "414440424305410507050540420743050942430541054407070544400742070907"
theorem cover_2262045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2262045)
  decide +kernel
#print axioms cover_2262045

def state_2262081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
def hex_2262081 : String := "434241440540064305090909424144064009430942410908080808"
theorem cover_2262081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2262081)
  decide +kernel
#print axioms cover_2262081

def state_2262109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 54)))
def hex_2262109 : String := "42414405054440080540094305424105090505"
theorem cover_2262109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2262109)
  decide +kernel
#print axioms cover_2262109

def state_2262128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 54)))
def hex_2262128 : String := "4241444006430542BE05404342BE0542BE094342BE0542BE410509440840430908434241BE09084241BE08084144050508"
theorem cover_2262128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2262128)
  decide +kernel
#print axioms cover_2262128

def state_2262179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
def hex_2262179 : String := "42414440074307420709070709"
theorem cover_2262179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2262179)
  decide +kernel
#print axioms cover_2262179

def state_2262192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
def hex_2262192 : String := "424144404307094342414409070709424144094007430909090940074342070942414440074307420609060709440707410909"
theorem cover_2262192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2262192)
  decide +kernel
#print axioms cover_2262192
end Mub6.Numerical.CircleFullD0.Forest
