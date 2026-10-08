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
def state_280220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
def hex_280220 : String := "414305420A0A43420A0A42444041430542060543094209440905410A0940050A44404105430542440805084107430707400541054305420A0A"
theorem cover_280220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_280220)
  decide +kernel
#print axioms cover_280220

def state_280277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_280277 : String := "4407410A430A420A0A"
theorem cover_280277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_280277)
  decide +kernel
#print axioms cover_280277

def state_280286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
def hex_280286 : String := "404407410743054244074005070707"
theorem cover_280286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_280286)
  decide +kernel
#print axioms cover_280286

def state_280303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_280303 : String := "414243440A41400643070640064307060A4344084140074243070A08080A0A"
theorem cover_280303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_280303)
  decide +kernel
#print axioms cover_280303

def state_280336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 4)))
def hex_280336 : String := "43444041434209080A050540414344420707074442064140064305050A4206074307440507414344050744054205070544400A054041440A060505"
theorem cover_280336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_280336)
  decide +kernel
#print axioms cover_280336

def state_280396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 4)))
def hex_280396 : String := "44400841420543080A05404142430744410A080743074408074207074142434440070507440540070543440807444041424307050805054007074205430705"
theorem cover_280396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_280396)
  decide +kernel
#print axioms cover_280396
end Mub6.Numerical.CircleFullPrototype.Forest
