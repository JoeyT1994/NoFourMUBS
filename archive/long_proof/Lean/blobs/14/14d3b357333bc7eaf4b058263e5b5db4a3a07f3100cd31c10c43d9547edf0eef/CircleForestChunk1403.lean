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
def state_1637464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
def hex_1637464 : String := "434442400643070606424006430741440707060644064240064143440606060606"
theorem cover_1637464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1637464)
  decide +kernel
#print axioms cover_1637464

def state_1637500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
def hex_1637500 : String := "4340424409414340080608434042090909094409414340080A084340424408430708440707090942090909"
theorem cover_1637500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1637500)
  decide +kernel
#print axioms cover_1637500

def state_1637543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
def hex_1637543 : String := "4340424409434109050944094341404209070505090909"
theorem cover_1637543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1637543)
  decide +kernel
#print axioms cover_1637543

def state_1637570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 19)))
def hex_1637570 : String := "4441430640440606064340440605054044094206410605064106430505"
theorem cover_1637570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1637570)
  decide +kernel
#print axioms cover_1637570

def state_1637601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
def hex_1637601 : String := "4340424408064407074206440606404208084208440808"
theorem cover_1637601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_1637601)
  decide +kernel
#print axioms cover_1637601

def state_1637624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
def hex_1637624 : String := "434042444305410805054407070540424408410843050844084143400708084305400808420944094143050805"
theorem cover_1637624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1637624)
  decide +kernel
#print axioms cover_1637624

def state_1637669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 39)))
def hex_1637669 : String := "41434042064406060540424406064441084340070608410643054008060643054042444143054008050505444143054008084305050505"
theorem cover_1637669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1637669)
  decide +kernel
#print axioms cover_1637669
end Mub6.Numerical.CircleFullD0.Forest
