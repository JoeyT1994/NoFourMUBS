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
def state_1498418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 60)))
def hex_1498418 : String := "44404341070707434142074440074309070542074440074307070741070740074341050707"
theorem cover_1498418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1498418)
  decide +kernel
#print axioms cover_1498418

def state_1498457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 120)))
def hex_1498457 : String := "43410506414244070505420706"
theorem cover_1498457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1498457)
  decide +kernel
#print axioms cover_1498457

def state_1498471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 204 else 120)))
def hex_1498471 : String := "41424440054305410542050505054244400643084108060505"
theorem cover_1498471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1498471)
  decide +kernel
#print axioms cover_1498471

def state_1498497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 174) else (if j.val < 3 then 81 else (if j.val < 4 then 205 else 120)))
def hex_1498497 : String := "424440434105070743414207054207440605410707400543050744400543054105424406050505"
theorem cover_1498497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1498497)
  decide +kernel
#print axioms cover_1498497

def state_1498536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 175) else (if j.val < 3 then 81 else (if j.val < 4 then 205 else 120)))
def hex_1498536 : String := "424440430607434142070842070641070740074341050507440605"
theorem cover_1498536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1498536)
  decide +kernel
#print axioms cover_1498536

def state_1498563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 121)))
def hex_1498563 : String := "40054305410505"
theorem cover_1498563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498563 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1498563)
  decide +kernel
#print axioms cover_1498563

def state_1498572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 60)))
def hex_1498572 : String := "444007434107070707"
theorem cover_1498572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1498572)
  decide +kernel
#print axioms cover_1498572

def state_1498582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
def hex_1498582 : String := "4043410A42070A410808434142090A4244400743090740070744404305410A42070543410542090541094244070744400509050541420844400A4309090A88"
theorem cover_1498582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1498582)
  decide +kernel
#print axioms cover_1498582

def state_1498645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 121)))
def hex_1498645 : String := "404305084305410608"
theorem cover_1498645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1498645)
  decide +kernel
#print axioms cover_1498645

def state_1498655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 60)))
def hex_1498655 : String := "44400743070707"
theorem cover_1498655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1498655)
  decide +kernel
#print axioms cover_1498655
end Mub6.Numerical.CircleFullD0.Forest
