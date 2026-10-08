import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1492936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 38 else (if j.val < 4 then 49 else 30)))
def hex_1492936 : String := "444043414207050707434142444340070707074443400508400741090805424407074443084007080541420744070707404305074341050507"
theorem cover_1492936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492936 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1492936)
  decide +kernel
#print axioms cover_1492936

def state_1492995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 60)))
def hex_1492995 : String := "4305414244070505420705"
theorem cover_1492995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1492995)
  decide +kernel
#print axioms cover_1492995

def state_1493006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 60)))
def hex_1493006 : String := "43414244430540050805054244080505414244404341050507434108084142070807054440050805424440434105050743080A05440805"
theorem cover_1493006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1493006)
  decide +kernel
#print axioms cover_1493006

def state_1493061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 61)))
def hex_1493061 : String := "05"
theorem cover_1493061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1493061)
  decide +kernel
#print axioms cover_1493061

def state_1493062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
def hex_1493062 : String := "4244404341070707434142074408050A0A40074341050507444043050943084142440A05080805"
theorem cover_1493062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1493062)
  decide +kernel
#print axioms cover_1493062

def state_1493101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 31)))
def hex_1493101 : String := "40054305410505"
theorem cover_1493101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1493101)
  decide +kernel
#print axioms cover_1493101

def state_1493109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 15)))
def hex_1493109 : String := "07"
theorem cover_1493109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1493109)
  decide +kernel
#print axioms cover_1493109

def state_1493112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
def hex_1493112 : String := "4143420744070707430707"
theorem cover_1493112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1493112)
  decide +kernel
#print axioms cover_1493112

def state_1493126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 38 else (if j.val < 4 then 50 else 30)))
def hex_1493126 : String := "440707"
theorem cover_1493126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1493126)
  decide +kernel
#print axioms cover_1493126

def state_1493131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
def hex_1493131 : String := "434142074406050707"
theorem cover_1493131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493131 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1493131)
  decide +kernel
#print axioms cover_1493131

def state_1493141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 100 else 60)))
def hex_1493141 : String := "41424440070707444043410505074341424407050508414207440805420708400543054105054207444043060743080A4005430507"
theorem cover_1493141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1493141)
  decide +kernel
#print axioms cover_1493141
end Mub6.Numerical.CircleFullD0.Forest
