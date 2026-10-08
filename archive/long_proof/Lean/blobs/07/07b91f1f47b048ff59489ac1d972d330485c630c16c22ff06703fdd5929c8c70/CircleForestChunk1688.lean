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
def state_2278302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 62)))
def hex_2278302 : String := "44424043050505054240434105440507410544420A0542430740070A430505430541054405420A05400505"
theorem cover_2278302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2278302)
  decide +kernel
#print axioms cover_2278302

def state_2278345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 62)))
def hex_2278345 : String := "44420A40430508064240430741440A420743070A070A40430641440642430640060505440607430641440542400505050A"
theorem cover_2278345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2278345)
  decide +kernel
#print axioms cover_2278345

def state_2278395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 63)))
def hex_2278395 : String := "4007430741444208404307084308080807"
theorem cover_2278395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2278395)
  decide +kernel
#print axioms cover_2278395

def state_2278413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 63)))
def hex_2278413 : String := "430741444243074007414442074305050707430740074109090707"
theorem cover_2278413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_2278413)
  decide +kernel
#print axioms cover_2278413

def state_2278441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 86 else 63)))
def hex_2278441 : String := "414442400606060707"
theorem cover_2278441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2278441)
  decide +kernel
#print axioms cover_2278441

def state_2278452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 126)))
def hex_2278452 : String := "42404341440507074144420805084442074307400705074341054442070507410844424043050809400505E54043064105444243050505E5430541054405E5"
theorem cover_2278452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2278452)
  decide +kernel
#print axioms cover_2278452

def state_2278515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 127)))
def hex_2278515 : String := "E5"
theorem cover_2278515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2278515)
  decide +kernel
#print axioms cover_2278515
end Mub6.Numerical.CircleFullD0.Forest
