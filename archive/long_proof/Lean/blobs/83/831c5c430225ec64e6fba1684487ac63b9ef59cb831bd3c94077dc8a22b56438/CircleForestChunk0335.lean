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
def state_155740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
def hex_155740 : String := "4041424408094405430609424408094443404208050508434042090609404209444105400505090941420844050942084405430908"
theorem cover_155740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_155740)
  decide +kernel
#print axioms cover_155740

def state_155793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_155793 : String := "4344404106094106424306090640410A4205064106424306440605064440410942094309094142090609400A410A420A44090A"
theorem cover_155793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_155793)
  decide +kernel
#print axioms cover_155793

def state_155844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_155844 : String := "4440410842084344054042084344050705080808444009094009410A09"
theorem cover_155844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_155844)
  decide +kernel
#print axioms cover_155844

def state_155873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_155873 : String := "434442430640410544054243064044050605050543060542430644064041060706064442404105050505424440410707410543420905050744404105050507"
theorem cover_155873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_155873)
  decide +kernel
#print axioms cover_155873

def state_155939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_155939 : String := "43440A0A4440414442070742430706070741440A0A0740414206430A06060A"
theorem cover_155939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_155939)
  decide +kernel
#print axioms cover_155939

def state_155975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_155975 : String := "430A4408400808"
theorem cover_155975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_155975)
  decide +kernel
#print axioms cover_155975

def state_155983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
def hex_155983 : String := "44064041420A430644060A0A0A"
theorem cover_155983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_155983)
  decide +kernel
#print axioms cover_155983
end Mub6.Numerical.CircleFullPrototype.Forest
