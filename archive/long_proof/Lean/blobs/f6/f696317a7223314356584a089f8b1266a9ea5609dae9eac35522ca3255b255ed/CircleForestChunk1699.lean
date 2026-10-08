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
def state_2280933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 123)))
def hex_2280933 : String := "424340074144420709070740094144420609064442060906430909"
theorem cover_2280933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2280933)
  decide +kernel
#print axioms cover_2280933

def state_2280961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 112) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2280961 : String := "44424305050542430808430505"
theorem cover_2280961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_2280961)
  decide +kernel
#print axioms cover_2280961

def state_2280975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 122)))
def hex_2280975 : String := "42434041050A41050A404144054243050605440A4206430A064105440A42060A430540410544054243054005050505"
theorem cover_2280975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2280975)
  decide +kernel
#print axioms cover_2280975

def state_2281024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 188 else (if j.val < 4 then 176 else 123)))
def hex_2281024 : String := "40414442080508444207430740070A0741440508440A420843400505400808"
theorem cover_2281024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2281024)
  decide +kernel
#print axioms cover_2281024

def state_2281055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 188 else (if j.val < 4 then 177 else 123)))
def hex_2281055 : String := "404144420643050606444206434006060606414442060506444206434006050606"
theorem cover_2281055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2281055)
  decide +kernel
#print axioms cover_2281055

def state_2281089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 189 else (if j.val < 4 then 176 else 123)))
def hex_2281089 : String := "4041054442430505054243070905410544054243050505"
theorem cover_2281089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_2281089)
  decide +kernel
#print axioms cover_2281089

def state_2281112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 189 else (if j.val < 4 then 177 else 123)))
def hex_2281112 : String := "404144054243050605444243400905090942430906094105444243054005050542434041050605064305400505"
theorem cover_2281112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2281112)
  decide +kernel
#print axioms cover_2281112
end Mub6.Numerical.CircleFullD0.Forest
