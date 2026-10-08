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
def state_1031112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
def hex_1031112 : String := "42434440060606440A40064206410606434440064106060644400841420A4307080840064142060608"
theorem cover_1031112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1031112)
  decide +kernel
#print axioms cover_1031112

def state_1031155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 31)))
def hex_1031155 : String := "434440414207430609420543054440060506410705400641084205430544050644400941070709"
theorem cover_1031155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1031155)
  decide +kernel
#print axioms cover_1031155

def state_1031197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 62)))
def hex_1031197 : String := "41424306444006410842050606430644400641060606424306444006410505064306444006410642050506"
theorem cover_1031197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1031197)
  decide +kernel
#print axioms cover_1031197

def state_1031240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 62)))
def hex_1031240 : String := "4142430544404108050508430844404108420505080842430544054041050505430544404105050540410606410505"
theorem cover_1031240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1031240)
  decide +kernel
#print axioms cover_1031240

def state_1031287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 63)))
def hex_1031287 : String := "4006414208084243064440064105050643064440060806"
theorem cover_1031287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1031287)
  decide +kernel
#print axioms cover_1031287

def state_1031313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
def hex_1031313 : String := "42094344404109420907414208084243444006080609430744400708074006410842090644400941094209434440074108420807070909"
theorem cover_1031313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1031313)
  decide +kernel
#print axioms cover_1031313
end Mub6.Numerical.CircleFullD0.Forest
