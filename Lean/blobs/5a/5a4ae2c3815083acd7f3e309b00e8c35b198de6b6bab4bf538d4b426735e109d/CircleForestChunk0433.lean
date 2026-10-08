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
def state_1041344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_1041344 : String := "44400A420A434144090A09090A"
theorem cover_1041344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1041344)
  decide +kernel
#print axioms cover_1041344

def state_1041361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
def hex_1041361 : String := "07"
theorem cover_1041361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1041361)
  decide +kernel
#print axioms cover_1041361

def state_1041362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
def hex_1041362 : String := "43074241444007430742414440074307424144DA4043070543094244DA09050705400743074244414008090741080705070740074307424441080708070707"
theorem cover_1041362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 63) (hex := hex_1041362)
  decide +kernel
#print axioms cover_1041362

def state_1041425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
def hex_1041425 : String := "4007430742444108070807"
theorem cover_1041425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1041425)
  decide +kernel
#print axioms cover_1041425

def state_1041436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_1041436 : String := "07"
theorem cover_1041436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1041436)
  decide +kernel
#print axioms cover_1041436

def state_1041437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_1041437 : String := "4144400542434144054005424344050A050544400542434105070505400542434144050507050505054005420A05444005424307050540074243410A060A07"
theorem cover_1041437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_1041437)
  decide +kernel
#print axioms cover_1041437

def state_1041502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
def hex_1041502 : String := "4144420543054041444205430540414442054305404144DA420643064044DA060644420643064041DA060606050606050606050606"
theorem cover_1041502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 53) (hex := hex_1041502)
  decide +kernel
#print axioms cover_1041502

def state_1041558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 8)))
def hex_1041558 : String := "40434107060707"
theorem cover_1041558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1041558)
  decide +kernel
#print axioms cover_1041558

def state_1041570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 50 else (if j.val < 4 then 26 else 16)))
def hex_1041570 : String := "40434107060707"
theorem cover_1041570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1041570)
  decide +kernel
#print axioms cover_1041570
end Mub6.Numerical.CircleFullD0.Forest
