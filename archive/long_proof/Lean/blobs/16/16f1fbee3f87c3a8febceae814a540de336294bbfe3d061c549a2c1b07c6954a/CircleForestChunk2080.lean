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
def state_2579680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 77) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
def hex_2579680 : String := "4442434006414407DC0A40054144070944070A43400507054243064005DC434005DC05"
theorem cover_2579680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2579680)
  decide +kernel
#print axioms cover_2579680

def state_2579716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
def hex_2579716 : String := "44424340414407DC4407DC414406DC4407DC40414406DC4407DC41064406DC43404107074106074041064406DC06DC"
theorem cover_2579716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_2579716)
  decide +kernel
#print axioms cover_2579716

def state_2579763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
def hex_2579763 : String := "44424340414407DC0A414407DC44070A40414407DC4407DC41444243070707DC444243070707DC434041070741070740414407DC0A414406DC44070ADC"
theorem cover_2579763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2579763)
  decide +kernel
#print axioms cover_2579763

def state_2579825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
def hex_2579825 : String := "41440509440505"
theorem cover_2579825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2579825)
  decide +kernel
#print axioms cover_2579825

def state_2579833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
def hex_2579833 : String := "44424340410644060906060642434009410808400908434041050541064406420805400506"
theorem cover_2579833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2579833)
  decide +kernel
#print axioms cover_2579833

def state_2579873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 190 else (if j.val < 4 then 194 else 74)))
def hex_2579873 : String := "4041444209054209054442434005070505420905414406420806444243404107074106074041060A0643070642434041080A080843400A0A400506"
theorem cover_2579873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2579873)
  decide +kernel
#print axioms cover_2579873
end Mub6.Numerical.CircleFullD0.Forest
