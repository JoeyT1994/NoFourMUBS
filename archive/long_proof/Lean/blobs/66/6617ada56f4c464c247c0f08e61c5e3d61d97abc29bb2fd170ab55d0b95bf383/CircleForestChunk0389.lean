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
def state_168844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_168844 : String := "4042434405414205050544084142430808434008050A4243080843050A4305440A414340420505050A43050A4243054405410A0505"
theorem cover_168844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_168844)
  decide +kernel
#print axioms cover_168844

def state_168900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
def hex_168900 : String := "414442400705050544054240050505"
theorem cover_168900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_168900)
  decide +kernel
#print axioms cover_168900

def state_168916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
def hex_168916 : String := "444243404408074408064044084106420843070608434007054044410A0A070A4243070606"
theorem cover_168916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_168916)
  decide +kernel
#print axioms cover_168916

def state_168955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 14)))
def hex_168955 : String := "43404144084208054405050540414408420843410808410808440842084305410808410808"
theorem cover_168955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_168955)
  decide +kernel
#print axioms cover_168955

def state_168992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 14)))
def hex_168992 : String := "430540414443050A430542410A44084043050A05410705440543054241440505050505"
theorem cover_168992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_168992)
  decide +kernel
#print axioms cover_168992

def state_169028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 15)))
def hex_169028 : String := "4340410744090905404144424341060806430706064442094309414044090606094209430909410609"
theorem cover_169028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_169028)
  decide +kernel
#print axioms cover_169028

def state_169069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 15)))
def hex_169069 : String := "430540414443050606444305424140444305420505060505054305424106050505"
theorem cover_169069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_169069)
  decide +kernel
#print axioms cover_169069
end Mub6.Numerical.CircleFullPrototype.Forest
