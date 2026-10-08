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
def state_1018269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 44)))
def hex_1018269 : String := "4042444107080707424441430640070643054042050505410643054007064441060506"
theorem cover_1018269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1018269)
  decide +kernel
#print axioms cover_1018269

def state_1018305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
def hex_1018305 : String := "07"
theorem cover_1018305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1018305)
  decide +kernel
#print axioms cover_1018305

def state_1018308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 88)))
def hex_1018308 : String := "414309094340424441434007424405070582054107430582440807424441434042440505054205058205414306824305824441090541060582"
theorem cover_1018308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1018308)
  decide +kernel
#print axioms cover_1018308

def state_1018365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 89)))
def hex_1018365 : String := "41074340074442410643068206064007448207"
theorem cover_1018365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1018365)
  decide +kernel
#print axioms cover_1018365

def state_1018384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 63 else 44)))
def hex_1018384 : String := "4441074340074244050605400742820707"
theorem cover_1018384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1018384)
  decide +kernel
#print axioms cover_1018384

def state_1018401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 45)))
def hex_1018401 : String := "07"
theorem cover_1018401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1018401)
  decide +kernel
#print axioms cover_1018401

def state_1018402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 22)))
def hex_1018402 : String := "07"
theorem cover_1018402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1018402)
  decide +kernel
#print axioms cover_1018402

def state_1018404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 22)))
def hex_1018404 : String := "4042050505"
theorem cover_1018404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1018404)
  decide +kernel
#print axioms cover_1018404

def state_1018410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
def hex_1018410 : String := "4244080707"
theorem cover_1018410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1018410)
  decide +kernel
#print axioms cover_1018410

def state_1018416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 22)))
def hex_1018416 : String := "44414305404244080A08424441430582054143400A440509400A44820909440841070505414340074405064007444209070709"
theorem cover_1018416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1018416)
  decide +kernel
#print axioms cover_1018416

def state_1018467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 22)))
def hex_1018467 : String := "444143054007424405070505410705"
theorem cover_1018467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1018467)
  decide +kernel
#print axioms cover_1018467

def state_1018482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 23)))
def hex_1018482 : String := "410743400544050607"
theorem cover_1018482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018482 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1018482)
  decide +kernel
#print axioms cover_1018482

def state_1018491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 11)))
def hex_1018491 : String := "44410743050707"
theorem cover_1018491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1018491)
  decide +kernel
#print axioms cover_1018491

def state_1018498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_1018498 : String := "4305404244050508424405414305050505"
theorem cover_1018498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1018498)
  decide +kernel
#print axioms cover_1018498
end Mub6.Numerical.CircleFullD0.Forest
