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
def state_1506351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1506351 : String := "4106434206444041064342060806060606"
theorem cover_1506351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1506351)
  decide +kernel
#print axioms cover_1506351

def state_1506368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
def hex_1506368 : String := "40410643060606"
theorem cover_1506368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1506368)
  decide +kernel
#print axioms cover_1506368

def state_1506375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 15)))
def hex_1506375 : String := "444041064206434440080506060606"
theorem cover_1506375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1506375)
  decide +kernel
#print axioms cover_1506375

def state_1506394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1506394 : String := "424344400A430A410A4244070607054440410A424344400A4106070A44400806060A41064206430706400A0643050A"
theorem cover_1506394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1506394)
  decide +kernel
#print axioms cover_1506394

def state_1506446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
def hex_1506446 : String := "434244400A070505424440410A430742440707074107070A07"
theorem cover_1506446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1506446)
  decide +kernel
#print axioms cover_1506446

def state_1506472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 42 else (if j.val < 4 then 104 else 60)))
def hex_1506472 : String := "42444041070607400541050807"
theorem cover_1506472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1506472)
  decide +kernel
#print axioms cover_1506472

def state_1506487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 120)))
def hex_1506487 : String := "40414307424407400A0707434288064244094009070641430707430707"
theorem cover_1506487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1506487)
  decide +kernel
#print axioms cover_1506487

def state_1506516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 121)))
def hex_1506516 : String := "40410A43428805424440410A0941074307074005410543050A0A4143074244070A0743428807424407404107070707"
theorem cover_1506516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1506516)
  decide +kernel
#print axioms cover_1506516

def state_1506563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 85 else (if j.val < 4 then 105 else 60)))
def hex_1506563 : String := "4407400507"
theorem cover_1506563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506563 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1506563)
  decide +kernel
#print axioms cover_1506563

def state_1506568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
def hex_1506568 : String := "41434244070707424407404106070607430842444041070707404143070743070741060707"
theorem cover_1506568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1506568)
  decide +kernel
#print axioms cover_1506568
end Mub6.Numerical.CircleFullD0.Forest
