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
def state_1563828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 123) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 179)))
def hex_1563828 : String := "4243414044420508084442430505060705414005440505054341404408070740440642050606414008444208080840054405420506"
theorem cover_1563828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1563828)
  decide +kernel
#print axioms cover_1563828

def state_1563881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 85 else 89)))
def hex_1563881 : String := "414044080844420A43410840080A084208084005440542054341080505"
theorem cover_1563881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1563881)
  decide +kernel
#print axioms cover_1563881

def state_1563912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 107 else (if j.val < 4 then 84 else 89)))
def hex_1563912 : String := "404442080808444243410740090641084008444243060806084307410540084406074243070807"
theorem cover_1563912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1563912)
  decide +kernel
#print axioms cover_1563912

def state_1563951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 107 else (if j.val < 4 then 84 else 89)))
def hex_1563951 : String := "404409424308080944424306414044090806060642434107064140084442080607404408080643064140080709"
theorem cover_1563951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1563951)
  decide +kernel
#print axioms cover_1563951

def state_1563997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 89)))
def hex_1563997 : String := "4008444342410840080A08420808430808"
theorem cover_1563997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1563997)
  decide +kernel
#print axioms cover_1563997

def state_1564014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 89)))
def hex_1564014 : String := "4044434208080808444342414008440A4308080541400844060840090642410A05410840050A434241084008444306050841084008440608420808"
theorem cover_1564014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1564014)
  decide +kernel
#print axioms cover_1564014
end Mub6.Numerical.CircleFullD0.Forest
