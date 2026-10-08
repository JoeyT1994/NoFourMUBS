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
def state_2304676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 90)))
def hex_2304676 : String := "40410542430544054041054243050905050505"
theorem cover_2304676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2304676)
  decide +kernel
#print axioms cover_2304676

def state_2304697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2304697 : String := "424305440540C405430507"
theorem cover_2304697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2304697)
  decide +kernel
#print axioms cover_2304697

def state_2304709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 54 else 91)))
def hex_2304709 : String := "43440606444041C44243060A4306444009054041C406064105064041C442064306444041C406060641420643050706"
theorem cover_2304709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2304709)
  decide +kernel
#print axioms cover_2304709

def state_2304757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 108 else 91)))
def hex_2304757 : String := "44054041050605"
theorem cover_2304757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2304757)
  decide +kernel
#print axioms cover_2304757

def state_2304764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 109 else 91)))
def hex_2304764 : String := "4440410542430544054041C4094105064305440540410542090805054041C4424306444041C40841C4064008064307444041070807074105420607"
theorem cover_2304764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2304764)
  decide +kernel
#print axioms cover_2304764

def state_2304823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2304823 : String := "4105420605"
theorem cover_2304823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2304823)
  decide +kernel
#print axioms cover_2304823

def state_2304831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
def hex_2304831 : String := "430542440540060506"
theorem cover_2304831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2304831)
  decide +kernel
#print axioms cover_2304831

def state_2304841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 110 else 90)))
def hex_2304841 : String := "4244404105430507054041C44342074405400905420744074007410507410543050A4405404105424305440540084105084305440540080505"
theorem cover_2304841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2304841)
  decide +kernel
#print axioms cover_2304841

def state_2304899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 111 else 90)))
def hex_2304899 : String := "44404106074105430507404143424406060606074143054244050A06430A4207440708"
theorem cover_2304899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2304899)
  decide +kernel
#print axioms cover_2304899
end Mub6.Numerical.CircleFullD0.Forest
