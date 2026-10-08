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
def state_2600760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
def hex_2600760 : String := "414406400606444006064042434144064006074440060A4042434144064006064440060640424341064406DA050542070A050542070A0606424341070A070A"
theorem cover_2600760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 63) (hex := hex_2600760)
  decide +kernel
#print axioms cover_2600760

def state_2600823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_2600823 : String := "44064006420706"
theorem cover_2600823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2600823)
  decide +kernel
#print axioms cover_2600823

def state_2600830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_2600830 : String := "4344064006430A06440606"
theorem cover_2600830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2600830)
  decide +kernel
#print axioms cover_2600830

def state_2600842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2600842 : String := "424344414243440606074309444041070607074243064406060A4107420709444107420644080607434441090A094441070A07"
theorem cover_2600842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2600842)
  decide +kernel
#print axioms cover_2600842

def state_2600893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2600893 : String := "42434442080A424340414442070A07440842050A41070807430A404107440842070A410708440807430A440A400607"
theorem cover_2600893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2600893)
  decide +kernel
#print axioms cover_2600893

def state_2600947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2600947 : String := "4243054405430544050543094442054305054243054405054309440509"
theorem cover_2600947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2600947)
  decide +kernel
#print axioms cover_2600947
end Mub6.Numerical.CircleFullD0.Forest
