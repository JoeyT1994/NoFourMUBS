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
def state_1644445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
def hex_1644445 : String := "444241430740064406074307060609"
theorem cover_1644445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1644445)
  decide +kernel
#print axioms cover_1644445

def state_1644464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 50 else 20)))
def hex_1644464 : String := "400744424107050707"
theorem cover_1644464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1644464)
  decide +kernel
#print axioms cover_1644464

def state_1644474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
def hex_1644474 : String := "44424143074006440642414307060606430706064241094307400644060707"
theorem cover_1644474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1644474)
  decide +kernel
#print axioms cover_1644474

def state_1644509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 102 else 40)))
def hex_1644509 : String := "40440707444241430740070A430540070507424143054007050507"
theorem cover_1644509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1644509)
  decide +kernel
#print axioms cover_1644509

def state_1644537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 40)))
def hex_1644537 : String := "4442414340074408070843400744070740064406420806414307060642414340070740440807A0430740440606A04143074006A0430706"
theorem cover_1644537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1644537)
  decide +kernel
#print axioms cover_1644537

def state_1644594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 120 else (if j.val < 4 then 103 else 80)))
def hex_1644594 : String := "414340440842414307084307400709074409420A0A404408080943404442090742414305400705050744090540440842094143400607060909"
theorem cover_1644594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1644594)
  decide +kernel
#print axioms cover_1644594

def state_1644651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 121 else (if j.val < 4 then 103 else 80)))
def hex_1644651 : String := "4143400744420A07424107070740440642080644084241090941430708430706434007440707400644094209410906"
theorem cover_1644651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1644651)
  decide +kernel
#print axioms cover_1644651
end Mub6.Numerical.CircleFullD0.Forest
