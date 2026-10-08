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
def state_1597358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 49)))
def hex_1597358 : String := "40434144420640080642084008060841440808084306414406420640410A060606"
theorem cover_1597358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1597358)
  decide +kernel
#print axioms cover_1597358

def state_1597394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 49)))
def hex_1597394 : String := "4442404309084306410606400509424043410908410908434106064144094240090609440642064008064043090943410909410944094240090909"
theorem cover_1597394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1597394)
  decide +kernel
#print axioms cover_1597394

def state_1597453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 49)))
def hex_1597453 : String := "44420840084306084208404308084306414442060942084008430641060608"
theorem cover_1597453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1597453)
  decide +kernel
#print axioms cover_1597453

def state_1597484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 49)))
def hex_1597484 : String := "41444240054109080542400841434409420A090A4308084005410943440942400843090909440542080544084208400843414408080808"
theorem cover_1597484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1597484)
  decide +kernel
#print axioms cover_1597484

def state_1597540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 49)))
def hex_1597540 : String := "41440642064043064109060606"
theorem cover_1597540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1597540)
  decide +kernel
#print axioms cover_1597540

def state_1597555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 98)))
def hex_1597555 : String := "42404143064405420609060640410543440542060544054240050605410906"
theorem cover_1597555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1597555)
  decide +kernel
#print axioms cover_1597555
end Mub6.Numerical.CircleFullD0.Forest
