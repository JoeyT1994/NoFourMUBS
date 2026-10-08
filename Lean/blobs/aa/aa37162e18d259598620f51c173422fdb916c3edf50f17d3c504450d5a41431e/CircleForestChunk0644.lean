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
def state_1343452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 39 else 49)))
def hex_1343452 : String := "4442414309404409090943400709404409420807094109094241434044420A07070A40050A4307404407074442410907074208074143070907"
theorem cover_1343452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1343452)
  decide +kernel
#print axioms cover_1343452

def state_1343510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 25)))
def hex_1343510 : String := "4041420806074142440A08440706420807"
theorem cover_1343510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1343510)
  decide +kernel
#print axioms cover_1343510

def state_1343527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 25)))
def hex_1343527 : String := "4041064208440705414244430A0A0644430606064244430808084443074042080642444143070607410607440706430606"
theorem cover_1343527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1343527)
  decide +kernel
#print axioms cover_1343527

def state_1343576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 12)))
def hex_1343576 : String := "444340074244410907070740424441054307054105074441050505424441094307094143090643074007094409410607430740054241060706"
theorem cover_1343576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343576 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1343576)
  decide +kernel
#print axioms cover_1343576

def state_1343633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 13)))
def hex_1343633 : String := "4006434106420806410642444308060606"
theorem cover_1343633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1343633)
  decide +kernel
#print axioms cover_1343633

def state_1343651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 6)))
def hex_1343651 : String := "44400843080808"
theorem cover_1343651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1343651)
  decide +kernel
#print axioms cover_1343651

def state_1343660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
def hex_1343660 : String := "4307420807"
theorem cover_1343660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1343660)
  decide +kernel
#print axioms cover_1343660

def state_1343666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 12)))
def hex_1343666 : String := "07"
theorem cover_1343666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343666 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1343666)
  decide +kernel
#print axioms cover_1343666
end Mub6.Numerical.CircleFullD0.Forest
