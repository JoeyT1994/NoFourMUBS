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
def state_1605022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 119 else 201)))
def hex_1605022 : String := "4042419F054143440A07074307074205410A05"
theorem cover_1605022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1605022)
  decide +kernel
#print axioms cover_1605022

def state_1605041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
def hex_1605041 : String := "4344060544404208414344400806400705440807080909"
theorem cover_1605041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1605041)
  decide +kernel
#print axioms cover_1605041

def state_1605064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
def hex_1605064 : String := "404241050541434407070743050742054143054440420507050505"
theorem cover_1605064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605064 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1605064)
  decide +kernel
#print axioms cover_1605064

def state_1605092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 58 else 50)))
def hex_1605092 : String := "4440410A42430A4440070A070A410A0A40414243070707420707410A0A"
theorem cover_1605092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1605092)
  decide +kernel
#print axioms cover_1605092

def state_1605123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 100)))
def hex_1605123 : String := "4142434440070A07444007420707070A42434440074107070744070707"
theorem cover_1605123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1605123)
  decide +kernel
#print axioms cover_1605123

def state_1605152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 100)))
def hex_1605152 : String := "4142430A444042410A0A0A0A4042410707070A0A42434440410A0A0A40410A070A44404142430A07074243070707410A42090A40410707410A4205070A"
theorem cover_1605152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1605152)
  decide +kernel
#print axioms cover_1605152

def state_1605213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 101)))
def hex_1605213 : String := "4041420707074142430A4440070A40070A0A42434440070505444007410505050A"
theorem cover_1605213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1605213)
  decide +kernel
#print axioms cover_1605213

def state_1605247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 50)))
def hex_1605247 : String := "43444041050505054440080905"
theorem cover_1605247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1605247)
  decide +kernel
#print axioms cover_1605247
end Mub6.Numerical.CircleFullD0.Forest
