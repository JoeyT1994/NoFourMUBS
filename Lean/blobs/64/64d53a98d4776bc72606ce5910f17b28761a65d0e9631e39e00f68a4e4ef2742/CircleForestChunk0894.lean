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
def state_1515101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 61)))
def hex_1515101 : String := "434440094143090909404143090909414342440A400541050A440905420A4409400941090943420909094440090A4041090941420A4309090A"
theorem cover_1515101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1515101)
  decide +kernel
#print axioms cover_1515101

def state_1515158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 61)))
def hex_1515158 : String := "434409400941424305090509440940094142090909"
theorem cover_1515158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1515158)
  decide +kernel
#print axioms cover_1515158

def state_1515179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 91) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
def hex_1515179 : String := "42430909430909"
theorem cover_1515179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1515179)
  decide +kernel
#print axioms cover_1515179

def state_1515188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 61)))
def hex_1515188 : String := "43440A404143420A4408400508420A440A400A060A41430A060A0A"
theorem cover_1515188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1515188)
  decide +kernel
#print axioms cover_1515188

def state_1515215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 61)))
def hex_1515215 : String := "434408404142430844084041050508070808444041420A07090A40414243440A4041090941060A0A43074407400707420A43080941420A070A"
theorem cover_1515215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1515215)
  decide +kernel
#print axioms cover_1515215

def state_1515272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 91) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
def hex_1515272 : String := "420A43080A"
theorem cover_1515272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1515272)
  decide +kernel
#print axioms cover_1515272

def state_1515277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 30)))
def hex_1515277 : String := "430844400608404142430909090941424307440740410707070708"
theorem cover_1515277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1515277)
  decide +kernel
#print axioms cover_1515277
end Mub6.Numerical.CircleFullD0.Forest
