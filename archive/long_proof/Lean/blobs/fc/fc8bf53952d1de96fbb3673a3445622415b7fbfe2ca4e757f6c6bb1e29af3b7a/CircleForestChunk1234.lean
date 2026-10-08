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
def state_1596626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_1596626 : String := "404241064344424006054006410605060606424143444042050805400605440505434405050541084344404241060506054006054440060506"
theorem cover_1596626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1596626)
  decide +kernel
#print axioms cover_1596626

def state_1596683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1596683 : String := "434440430A440941080A430808404307060A4440440906440808400608"
theorem cover_1596683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1596683)
  decide +kernel
#print axioms cover_1596683

def state_1596719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 6)))
def hex_1596719 : String := "440605"
theorem cover_1596719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1596719)
  decide +kernel
#print axioms cover_1596719

def state_1596724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 12)))
def hex_1596724 : String := "44064041430542054406050505"
theorem cover_1596724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1596724)
  decide +kernel
#print axioms cover_1596724

def state_1596738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 24)))
def hex_1596738 : String := "4041430644420640090642064041430609430608060606"
theorem cover_1596738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1596738)
  decide +kernel
#print axioms cover_1596738

def state_1596763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
def hex_1596763 : String := "434206440607424440414306420844080706064041430507050544404143070707414306444206410606420641070706400741430542050705"
theorem cover_1596763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1596763)
  decide +kernel
#print axioms cover_1596763

def state_1596820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
def hex_1596820 : String := "4305420544414007050505"
theorem cover_1596820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1596820)
  decide +kernel
#print axioms cover_1596820

def state_1596831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
def hex_1596831 : String := "414305420544060505"
theorem cover_1596831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1596831)
  decide +kernel
#print axioms cover_1596831

def state_1596840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
def hex_1596840 : String := "42054041434405054442054440070505050505"
theorem cover_1596840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1596840)
  decide +kernel
#print axioms cover_1596840

def state_1596860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 6)))
def hex_1596860 : String := "440A07"
theorem cover_1596860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1596860)
  decide +kernel
#print axioms cover_1596860
end Mub6.Numerical.CircleFullD0.Forest
