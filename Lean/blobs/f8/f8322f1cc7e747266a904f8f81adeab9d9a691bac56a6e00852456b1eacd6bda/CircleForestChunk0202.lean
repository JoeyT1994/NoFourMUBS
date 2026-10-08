import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_69875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_69875 : String := "44404142430844400A080843090942430A0A0A414208430608424308440508430A0A400908"
theorem cover_69875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_69875)
  decide +kernel
#print axioms cover_69875

def state_69917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 10)))
def hex_69917 : String := "4440414342080942444006410743060606440709430A42060A41430842084407084342080A424440414308420607060808440A40090840410843060608"
theorem cover_69917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_69917)
  decide +kernel
#print axioms cover_69917

def state_69978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 10)))
def hex_69978 : String := "44400A414307070A09"
theorem cover_69978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_69978)
  decide +kernel
#print axioms cover_69978

def state_69991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 48) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
def hex_69991 : String := "434244400541054342060742050540054105064440050740054105430905420505"
theorem cover_69991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_69991)
  decide +kernel
#print axioms cover_69991

def state_70024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
def hex_70024 : String := "434206440A40064143094206090A424440064306410506064440430A054341050A410508400543410542060A4105420505"
theorem cover_70024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_70024)
  decide +kernel
#print axioms cover_70024

def state_70074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 48) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
def hex_70074 : String := "434244070844074107404308424405050908424441074307400507414308054340050840050A440741054340054208074005420505"
theorem cover_70074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_70074)
  decide +kernel
#print axioms cover_70074
end Mub6.Numerical.CircleFullPrototype.Forest
