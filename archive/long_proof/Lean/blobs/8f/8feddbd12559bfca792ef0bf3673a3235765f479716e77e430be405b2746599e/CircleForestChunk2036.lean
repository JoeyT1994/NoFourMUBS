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
def state_2569100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 47)))
def hex_2569100 : String := "424341440540420A0A050A08434144054043090805440A0A08"
theorem cover_2569100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2569100)
  decide +kernel
#print axioms cover_2569100

def state_2569125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_2569125 : String := "44404207434144070807070A4042434408414008080808434408414008080808420A0A"
theorem cover_2569125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2569125)
  decide +kernel
#print axioms cover_2569125

def state_2569160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_2569160 : String := "44424307074340070A07424344400706064408400706434440414342070707070A40414306420744074140050605060644400708400808"
theorem cover_2569160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_2569160)
  decide +kernel
#print axioms cover_2569160

def state_2569215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_2569215 : String := "41444205054243404144050606060A43404144054305050A0A40410A0A0A440A420643060A"
theorem cover_2569215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2569215)
  decide +kernel
#print axioms cover_2569215

def state_2569252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 11)))
def hex_2569252 : String := "4041444208084208084407084144050808"
theorem cover_2569252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2569252)
  decide +kernel
#print axioms cover_2569252

def state_2569273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 22)))
def hex_2569273 : String := "434241054044054342410544050A41054405404342050506054241440506074105440506054105404405434241054405400605050605424105404405060506"
theorem cover_2569273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_2569273)
  decide +kernel
#print axioms cover_2569273
end Mub6.Numerical.CircleFullD0.Forest
