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
def state_2325650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 125 else 176)))
def hex_2325650 : String := "41434044050505404442050542410509054405054306400906"
theorem cover_2325650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325650 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2325650)
  decide +kernel
#print axioms cover_2325650

def state_2325678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 230) else (if j.val < 3 then 174 else (if j.val < 4 then 250 else 177)))
def hex_2325678 : String := "404442060642060606"
theorem cover_2325678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2325678)
  decide +kernel
#print axioms cover_2325678

def state_2325687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 230) else (if j.val < 3 then 174 else (if j.val < 4 then 251 else 177)))
def hex_2325687 : String := "404442414340440A0A060A43060A414340440505054044420505424105090544050543064009064241430A0A0A4107430640080644420606420606"
theorem cover_2325687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2325687)
  decide +kernel
#print axioms cover_2325687

def state_2325746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 231) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 177)))
def hex_2325746 : String := "43064044060606"
theorem cover_2325746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2325746)
  decide +kernel
#print axioms cover_2325746

def state_2325753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 125 else 177)))
def hex_2325753 : String := "41430740444241070907070743064044060606"
theorem cover_2325753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2325753)
  decide +kernel
#print axioms cover_2325753

def state_2325774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 89)))
def hex_2325774 : String := "43404442414340080740080A4340080A40080A4107430740080742080744420A07074044424108084108080844420A41074340440A07070A420A07"
theorem cover_2325774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_2325774)
  decide +kernel
#print axioms cover_2325774

def state_2325833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 89)))
def hex_2325833 : String := "4340444241430640080A0641434008064008440606064208084406064044424108084108080844420A41430A0A06420A410806"
theorem cover_2325833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2325833)
  decide +kernel
#print axioms cover_2325833

def state_2325885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 89)))
def hex_2325885 : String := "43074044424107430708070707"
theorem cover_2325885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2325885)
  decide +kernel
#print axioms cover_2325885
end Mub6.Numerical.CircleFullD0.Forest
