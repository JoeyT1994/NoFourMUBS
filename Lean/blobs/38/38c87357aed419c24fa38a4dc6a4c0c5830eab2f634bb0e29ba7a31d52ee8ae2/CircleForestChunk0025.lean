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
def state_5799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
def hex_5799 : String := "434441094240434409410642060844090543080640090941420608424005064044430805054408064441094240050609410542054005430605"
theorem cover_5799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_5799)
  decide +kernel
#print axioms cover_5799

def state_5858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
def hex_5858 : String := "4344420A414005430A050A0505"
theorem cover_5858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_5858)
  decide +kernel
#print axioms cover_5858

def state_5871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
def hex_5871 : String := "4344420A4140430A44420641060705430A06400A0A420A414005060A444241060741400506404344070505430706420541054005430605"
theorem cover_5871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_5871)
  decide +kernel
#print axioms cover_5871

def state_5932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
def hex_5932 : String := "434441420506060505"
theorem cover_5932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_5932)
  decide +kernel
#print axioms cover_5932

def state_5941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 8)))
def hex_5941 : String := "4344414240430A05430A44090540090942400A0A064142054005444341050A0505420A400A0A4441094240054344420509050540090905"
theorem cover_5941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5941 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_5941)
  decide +kernel
#print axioms cover_5941

def state_5996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 8)))
def hex_5996 : String := "40430644060543440641424007440907060644094109424005434406050506"
theorem cover_5996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_5996)
  decide +kernel
#print axioms cover_5996

def state_6027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
def hex_6027 : String := "424043064406054344060A4442414008430A080606420A414005430A050606"
theorem cover_6027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_6027)
  decide +kernel
#print axioms cover_6027
end Mub6.Numerical.CircleFullPrototype.Forest
