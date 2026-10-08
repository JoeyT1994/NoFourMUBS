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
def state_1664331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 31)))
def hex_1664331 : String := "424406430640080606"
theorem cover_1664331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1664331)
  decide +kernel
#print axioms cover_1664331

def state_1664342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 62)))
def hex_1664342 : String := "404143060543080A41064306440642400A0606"
theorem cover_1664342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1664342)
  decide +kernel
#print axioms cover_1664342

def state_1664362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 63)))
def hex_1664362 : String := "41434244064005060605430842440A4005F708"
theorem cover_1664362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1664362)
  decide +kernel
#print axioms cover_1664362

def state_1664381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 63)))
def hex_1664381 : String := "4143064244064105F706434244064308F706424440414306050A4106430607F744404106080640414306420505084106430607"
theorem cover_1664381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1664381)
  decide +kernel
#print axioms cover_1664381

def state_1664432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 31)))
def hex_1664432 : String := "444006064041430605084106430642440640080606"
theorem cover_1664432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1664432)
  decide +kernel
#print axioms cover_1664432

def state_1664453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 15)))
def hex_1664453 : String := "44064041430605084106430642440640060606"
theorem cover_1664453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1664453)
  decide +kernel
#print axioms cover_1664453

def state_1664472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
def hex_1664472 : String := "4406404143060508410643064244060806"
theorem cover_1664472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1664472)
  decide +kernel
#print axioms cover_1664472

def state_1664490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 7)))
def hex_1664490 : String := "444005074005410543424440050740054105434244400507400541054342440AF744074041050707054407400507054407400541050705"
theorem cover_1664490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 55) (hex := hex_1664490)
  decide +kernel
#print axioms cover_1664490

def state_1664545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 7)))
def hex_1664545 : String := "444005074005410543424407090705"
theorem cover_1664545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1664545)
  decide +kernel
#print axioms cover_1664545
end Mub6.Numerical.CircleFullD0.Forest
