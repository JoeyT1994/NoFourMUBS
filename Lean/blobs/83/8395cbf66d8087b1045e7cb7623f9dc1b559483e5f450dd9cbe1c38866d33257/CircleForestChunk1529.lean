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
def state_1667720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 25 else 31)))
def hex_1667720 : String := "434041064406430542050A0640414406420606444206064243404106050540410607064340410644060A064041064406F20606"
theorem cover_1667720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1667720)
  decide +kernel
#print axioms cover_1667720

def state_1667771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
def hex_1667771 : String := "06"
theorem cover_1667771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1667771)
  decide +kernel
#print axioms cover_1667771

def state_1667772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_1667772 : String := "41440642404306070640430605064407420740434144064240430606064043060506440742074043414406420606440742074043410607070607070707"
theorem cover_1667772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 61) (hex := hex_1667772)
  decide +kernel
#print axioms cover_1667772

def state_1667834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
def hex_1667834 : String := "4144060A44434042060A064042060506430A40424144060A444340420606064042060506430A40424144060A44430606430A4042410644060A0A060A0A0A0A"
theorem cover_1667834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 63) (hex := hex_1667834)
  decide +kernel
#print axioms cover_1667834

def state_1667898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
def hex_1667898 : String := "44054005420605"
theorem cover_1667898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1667898)
  decide +kernel
#print axioms cover_1667898

def state_1667906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 14)))
def hex_1667906 : String := "4005420605"
theorem cover_1667906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1667906)
  decide +kernel
#print axioms cover_1667906

def state_1667912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 15)))
def hex_1667912 : String := "4243414405400506444005064042434144054005064440050640424341440540050644400506F20505424306064306050505424306064306050505"
theorem cover_1667912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 59) (hex := hex_1667912)
  decide +kernel
#print axioms cover_1667912
end Mub6.Numerical.CircleFullD0.Forest
