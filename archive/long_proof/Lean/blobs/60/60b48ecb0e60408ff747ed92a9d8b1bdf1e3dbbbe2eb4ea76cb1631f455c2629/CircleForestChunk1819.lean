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
def state_2309745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 56 else 90)))
def hex_2309745 : String := "404106434244064006410607060641430506434244404105050540414305060A0A440540410543420A050605424440060540060A440606"
theorem cover_2309745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2309745)
  decide +kernel
#print axioms cover_2309745

def state_2309801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 56 else 91)))
def hex_2309801 : String := "41064342080808"
theorem cover_2309801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309801 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2309801)
  decide +kernel
#print axioms cover_2309801

def state_2309808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 56 else 91)))
def hex_2309808 : String := "414342444006054009094405094206064342444041430A06080A40080A44404143420605060841050A400841430708430808424440080A0844400641060808"
theorem cover_2309808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2309808)
  decide +kernel
#print axioms cover_2309808

def state_2309871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 45)))
def hex_2309871 : String := "44400641054305064041064342060606414307064342444041060841050540080707420806"
theorem cover_2309871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2309871)
  decide +kernel
#print axioms cover_2309871

def state_2309908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 45)))
def hex_2309908 : String := "424406400641060806"
theorem cover_2309908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2309908)
  decide +kernel
#print axioms cover_2309908

def state_2309919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 56 else 45)))
def hex_2309919 : String := "44404143420744070807074143420A444041430507070A4041430A08080A42074440070A40080A43070740410805414342440A084440080A08084342070808"
theorem cover_2309919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2309919)
  decide +kernel
#print axioms cover_2309919
end Mub6.Numerical.CircleFullD0.Forest
