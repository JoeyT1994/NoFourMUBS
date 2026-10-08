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
def state_1473973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 14)))
def hex_1473973 : String := "424440434442410906060A44424109064106064209410940060909400A094440430A4244060A06430842440809080A"
theorem cover_1473973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1473973)
  decide +kernel
#print axioms cover_1473973

def state_1474022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 28)))
def hex_1474022 : String := "40434144064240064308410606060641440642400643410906410906060643410808414442050642094308094408424308404105050508"
theorem cover_1474022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1474022)
  decide +kernel
#print axioms cover_1474022

def state_1474080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 29)))
def hex_1474080 : String := "4244400A090A0A"
theorem cover_1474080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1474080)
  decide +kernel
#print axioms cover_1474080

def state_1474088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 36 else (if j.val < 4 then 46 else 29)))
def hex_1474088 : String := "4440430606434144060A4406424006080641440642090A4406424006430841090806400A430A410A4244400543410505410944420505050505"
theorem cover_1474088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1474088)
  decide +kernel
#print axioms cover_1474088

def state_1474145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 37 else (if j.val < 4 then 46 else 29)))
def hex_1474145 : String := "4440064306060A"
theorem cover_1474145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1474145)
  decide +kernel
#print axioms cover_1474145

def state_1474153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
def hex_1474153 : String := "4244404341094406070709400A09444006430A41094209060A"
theorem cover_1474153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1474153)
  decide +kernel
#print axioms cover_1474153

def state_1474180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 58)))
def hex_1474180 : String := "40434106060743414442400609064209400609440642400643410707070641440707440607"
theorem cover_1474180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1474180)
  decide +kernel
#print axioms cover_1474180
end Mub6.Numerical.CircleFullD0.Forest
