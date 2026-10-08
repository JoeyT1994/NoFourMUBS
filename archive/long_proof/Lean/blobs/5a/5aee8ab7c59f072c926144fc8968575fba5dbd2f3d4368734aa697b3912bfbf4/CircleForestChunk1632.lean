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
def state_2264908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 107) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2264908 : String := "404408434241060609420608444342414008080808084342410606414009440506084206410606"
theorem cover_2264908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2264908)
  decide +kernel
#print axioms cover_2264908

def state_2264947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 27)))
def hex_2264947 : String := "4305414044054243054105440509050540440842430909094408424341054009054140440509074008440809430509"
theorem cover_2264947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2264947)
  decide +kernel
#print axioms cover_2264947

def state_2264996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2264996 : String := "410540440542430541054044050A050505"
theorem cover_2264996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2264996)
  decide +kernel
#print axioms cover_2264996

def state_2265014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
def hex_2265014 : String := "40440543050707"
theorem cover_2265014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2265014)
  decide +kernel
#print axioms cover_2265014

def state_2265023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
def hex_2265023 : String := "434241054044050A050542410740440843420A4105084206070707"
theorem cover_2265023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2265023)
  decide +kernel
#print axioms cover_2265023

def state_2265052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2265052 : String := "41404443054241054006050543420805420641050644054305074044430A420A0A430A064443054206054342060A06"
theorem cover_2265052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2265052)
  decide +kernel
#print axioms cover_2265052

def state_2265099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 55)))
def hex_2265099 : String := "410540440543054241050A05440543054241050605"
theorem cover_2265099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2265099)
  decide +kernel
#print axioms cover_2265099
end Mub6.Numerical.CircleFullD0.Forest
