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
def state_1498192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 60)))
def hex_1498192 : String := "43054105424440054305070505"
theorem cover_1498192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1498192)
  decide +kernel
#print axioms cover_1498192

def state_1498206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 100 else 60)))
def hex_1498206 : String := "41054244400543054105050505"
theorem cover_1498206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1498206)
  decide +kernel
#print axioms cover_1498206

def state_1498220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 101 else 60)))
def hex_1498220 : String := "42444043054105054309090505"
theorem cover_1498220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1498220)
  decide +kernel
#print axioms cover_1498220

def state_1498233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 101 else 60)))
def hex_1498233 : String := "4244404341050541420705420705434142050542444005080505414244070544400509054207444006080505444005430541050505"
theorem cover_1498233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1498233)
  decide +kernel
#print axioms cover_1498233

def state_1498286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 61)))
def hex_1498286 : String := "05"
theorem cover_1498286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498286)
  decide +kernel
#print axioms cover_1498286

def state_1498287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 50 else 30)))
def hex_1498287 : String := "05"
theorem cover_1498287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1498287)
  decide +kernel
#print axioms cover_1498287

def state_1498289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
def hex_1498289 : String := "424440430A41080843410A4244400A0905054142060A420844400A430A4106420609050A0A"
theorem cover_1498289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_1498289)
  decide +kernel
#print axioms cover_1498289

def state_1498329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
def hex_1498329 : String := "4341424440070705054207440605414207444008430A08054207444006434107060707"
theorem cover_1498329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1498329)
  decide +kernel
#print axioms cover_1498329

def state_1498366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
def hex_1498366 : String := "424440434107070743410942070941094207440707404305070944404305410542050543410505410A42444043050709050505"
theorem cover_1498366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1498366)
  decide +kernel
#print axioms cover_1498366
end Mub6.Numerical.CircleFullD0.Forest
