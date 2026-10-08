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
def state_2322516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 61 else 89)))
def hex_2322516 : String := "41434044424108084105080844420A05420A0740444206060844420A41050A420808434044424108084108080844420A410A0A0A404442080808440A08"
theorem cover_2322516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 61) (hex := hex_2322516)
  decide +kernel
#print axioms cover_2322516

def state_2322577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 89)))
def hex_2322577 : String := "414307404406060743404442410808410708084442410743404405070540080A070740444208080844424143400807084340080A084107434008070808"
theorem cover_2322577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2322577)
  decide +kernel
#print axioms cover_2322577

def state_2322638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
def hex_2322638 : String := "444241050A41054305404405420A050542410A0A410743074044420A07070A"
theorem cover_2322638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322638 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2322638)
  decide +kernel
#print axioms cover_2322638

def state_2322670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
def hex_2322670 : String := "4044424143064009440606064143094009440606064241430640444206094206080606414306404409420808440606064442060606"
theorem cover_2322670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2322670)
  decide +kernel
#print axioms cover_2322670

def state_2322726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 84 else (if j.val < 4 then 61 else 88)))
def hex_2322726 : String := "4143404407420709440A0A40070A07"
theorem cover_2322726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2322726)
  decide +kernel
#print axioms cover_2322726

def state_2322743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 122 else 88)))
def hex_2322743 : String := "40440909444209094241430940090A0641430940090906"
theorem cover_2322743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2322743)
  decide +kernel
#print axioms cover_2322743
end Mub6.Numerical.CircleFullD0.Forest
