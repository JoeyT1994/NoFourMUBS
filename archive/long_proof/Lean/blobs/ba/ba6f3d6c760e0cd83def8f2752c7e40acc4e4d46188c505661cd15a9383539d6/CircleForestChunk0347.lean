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
def state_1020654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 103 else 100)))
def hex_1020654 : String := "4241050641404443420541054006050A43050A44430505054044064306064443420541050942050943054205410505"
theorem cover_1020654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1020654)
  decide +kernel
#print axioms cover_1020654

def state_1020701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 101)))
def hex_1020701 : String := "43420541054044430505050542054140440505054044430606430505440505"
theorem cover_1020701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1020701)
  decide +kernel
#print axioms cover_1020701

def state_1020732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1020732 : String := "444305420541054044090505430505"
theorem cover_1020732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1020732)
  decide +kernel
#print axioms cover_1020732

def state_1020748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
def hex_1020748 : String := "4044430742410740074443070707070744430A424105404405050506430A420506"
theorem cover_1020748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1020748)
  decide +kernel
#print axioms cover_1020748

def state_1020784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 100)))
def hex_1020784 : String := "424140074443074205070740084408430842410540080508410708"
theorem cover_1020784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1020784)
  decide +kernel
#print axioms cover_1020784

def state_1020813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 122) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 100)))
def hex_1020813 : String := "40444307420A07074443424105404405050507424105404409050541074007440943050743420507420507"
theorem cover_1020813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1020813)
  decide +kernel
#print axioms cover_1020813

def state_1020857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 123) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 100)))
def hex_1020857 : String := "4443080A4342410706070A"
theorem cover_1020857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1020857)
  decide +kernel
#print axioms cover_1020857

def state_1020869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 123) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 200)))
def hex_1020869 : String := "4342414044084305050909084241400A090941400A0909"
theorem cover_1020869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1020869)
  decide +kernel
#print axioms cover_1020869
end Mub6.Numerical.CircleFullD0.Forest
