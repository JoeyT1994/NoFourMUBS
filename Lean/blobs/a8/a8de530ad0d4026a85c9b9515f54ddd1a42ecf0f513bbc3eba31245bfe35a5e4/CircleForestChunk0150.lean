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
def state_973481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
def hex_973481 : String := "42434409404142430944070A090909440740414207440743080542440605440843400809080743094408404144084243080743080844084243090809410709"
theorem cover_973481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_973481)
  decide +kernel
#print axioms cover_973481

def state_973544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 13)))
def hex_973544 : String := "440742404107434205440605050740414308074342440840080808084107434207440740080707"
theorem cover_973544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_973544)
  decide +kernel
#print axioms cover_973544

def state_973584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 13)))
def hex_973584 : String := "41434408064408420806434442400808054240064106430644084240064106070606440842400A41080A400A41080A"
theorem cover_973584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_973584)
  decide +kernel
#print axioms cover_973584

def state_973632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 13)))
def hex_973632 : String := "434408424041064306084107430A070608"
theorem cover_973632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_973632)
  decide +kernel
#print axioms cover_973632

def state_973651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 26)))
def hex_973651 : String := "4240080505"
theorem cover_973651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_973651)
  decide +kernel
#print axioms cover_973651

def state_973658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 27)))
def hex_973658 : String := "4143440806440842400608064344054240060905440842404108440843060841440843060844084309084006410605"
theorem cover_973658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_973658)
  decide +kernel
#print axioms cover_973658

def state_973705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 27)))
def hex_973705 : String := "414309440742400807084305440542404109090905"
theorem cover_973705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_973705)
  decide +kernel
#print axioms cover_973705

def state_973726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 27)))
def hex_973726 : String := "4041060505"
theorem cover_973726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_973726)
  decide +kernel
#print axioms cover_973726
end Mub6.Numerical.CircleFullD0.Forest
