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
def state_23937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_23937 : String := "414042434441400A42430A070709094441070907430A074243444142430507074209430A0A4105094441070907434441070A07074042090A4209430A0A"
theorem cover_23937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_23937)
  decide +kernel
#print axioms cover_23937

def state_23998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_23998 : String := "414440070707440909"
theorem cover_23998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_23998)
  decide +kernel
#print axioms cover_23998

def state_24007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_24007 : String := "4243440942050809434443084009084344404142060A08084006054408400608440944090A"
theorem cover_24007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_24007)
  decide +kernel
#print axioms cover_24007

def state_24047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_24047 : String := "434440410542054305050540414208080808444041070707404142434405060607420843050541424306060708"
theorem cover_24047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_24047)
  decide +kernel
#print axioms cover_24047

def state_24092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_24092 : String := "4344404107070740414342080907084143090743090707"
theorem cover_24092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_24092)
  decide +kernel
#print axioms cover_24092

def state_24115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_24115 : String := "4243444042080808084440424441070A070742440A07440A070843444006430644060708440707"
theorem cover_24115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_24115)
  decide +kernel
#print axioms cover_24115

def state_24155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_24155 : String := "424344054105084441054205074107074344410543050741070707"
theorem cover_24155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_24155)
  decide +kernel
#print axioms cover_24155
end Mub6.Numerical.CircleFullPrototype.Forest
