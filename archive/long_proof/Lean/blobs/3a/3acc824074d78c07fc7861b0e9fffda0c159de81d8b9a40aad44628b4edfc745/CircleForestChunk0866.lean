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
def state_1508470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 121)))
def hex_1508470 : String := "40434105424408050541424440430507434105084106070505424440070A054408054308414206084244080608"
theorem cover_1508470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1508470)
  decide +kernel
#print axioms cover_1508470

def state_1508516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 60)))
def hex_1508516 : String := "440A400706"
theorem cover_1508516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1508516)
  decide +kernel
#print axioms cover_1508516

def state_1508522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
def hex_1508522 : String := "404143420A444043080A08404341420708084142074408070A43080A880A41430A0A0A"
theorem cover_1508522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1508522)
  decide +kernel
#print axioms cover_1508522

def state_1508558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 121)))
def hex_1508558 : String := "4143424407064440430541070743414205050841420644080542070805884342074440414305070A0A400541054305074207440A07"
theorem cover_1508558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1508558)
  decide +kernel
#print axioms cover_1508558

def state_1508611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 121)))
def hex_1508611 : String := "414342064440430841060806060643420A440840410608060A"
theorem cover_1508611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1508611)
  decide +kernel
#print axioms cover_1508611

def state_1508636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
def hex_1508636 : String := "43420A440840414308420A0843080A410808420A440A4041430A0A0A0A"
theorem cover_1508636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1508636)
  decide +kernel
#print axioms cover_1508636

def state_1508665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
def hex_1508665 : String := "414342440A06084206440A0643420A080A"
theorem cover_1508665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508665 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1508665)
  decide +kernel
#print axioms cover_1508665

def state_1508684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
def hex_1508684 : String := "43420644400543050605420644404143050643420505070606"
theorem cover_1508684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1508684)
  decide +kernel
#print axioms cover_1508684
end Mub6.Numerical.CircleFullD0.Forest
