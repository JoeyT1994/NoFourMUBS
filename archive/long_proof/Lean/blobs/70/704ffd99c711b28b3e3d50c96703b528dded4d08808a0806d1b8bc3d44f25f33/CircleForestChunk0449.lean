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
def state_183403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
def hex_183403 : String := "434442414005050505420905444241400744430507434207050705054241404344070707430906074140430507430544050705"
theorem cover_183403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_183403)
  decide +kernel
#print axioms cover_183403

def state_183454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 30)))
def hex_183454 : String := "400505"
theorem cover_183454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_183454)
  decide +kernel
#print axioms cover_183454

def state_183458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
def hex_183458 : String := "4240434441080A0606434441420640084308064209400809060640084344410808084441080806"
theorem cover_183458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_183458)
  decide +kernel
#print axioms cover_183458

def state_183497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
def hex_183497 : String := "42400A430A44420A41400A4309060A064008434405084441080508"
theorem cover_183497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_183497)
  decide +kernel
#print axioms cover_183497

def state_183526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 30)))
def hex_183526 : String := "42404443410907060644434142060A42400744070640070A060640094409434109424009440A060906"
theorem cover_183526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_183526)
  decide +kernel
#print axioms cover_183526

def state_183567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 30)))
def hex_183567 : String := "424007444342070707434207070640074443050743414207050507"
theorem cover_183567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_183567)
  decide +kernel
#print axioms cover_183567

def state_183594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 31)))
def hex_183594 : String := "414206400606424006064043080643444108070606"
theorem cover_183594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_183594)
  decide +kernel
#print axioms cover_183594

def state_183616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 7)))
def hex_183616 : String := "4344414209050541080509"
theorem cover_183616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_183616)
  decide +kernel
#print axioms cover_183616
end Mub6.Numerical.CircleFullPrototype.Forest
