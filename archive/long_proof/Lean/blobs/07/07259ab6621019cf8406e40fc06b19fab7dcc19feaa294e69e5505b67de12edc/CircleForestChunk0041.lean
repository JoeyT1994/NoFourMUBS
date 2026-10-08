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
def state_947307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 107)))
def hex_947307 : String := "40424105440705414405054408434005420507054207410707"
theorem cover_947307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_947307)
  decide +kernel
#print axioms cover_947307

def state_947333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 52)))
def hex_947333 : String := "43400A050A"
theorem cover_947333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_947333)
  decide +kernel
#print axioms cover_947333

def state_947341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
def hex_947341 : String := "41440A4340420A064241440543054006420A05054144050605400A420A414408434006420A4106050A0A0A"
theorem cover_947341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_947341)
  decide +kernel
#print axioms cover_947341

def state_947384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
def hex_947384 : String := "41444305084340060540420A064241440843064006420A080A414408064405430508440543050A"
theorem cover_947384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_947384)
  decide +kernel
#print axioms cover_947384

def state_947426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 106)))
def hex_947426 : String := "4305400A05"
theorem cover_947426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_947426)
  decide +kernel
#print axioms cover_947426

def state_947432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 107)))
def hex_947432 : String := "4042050505"
theorem cover_947432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_947432)
  decide +kernel
#print axioms cover_947432

def state_947438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
def hex_947438 : String := "4241440A43404209410905074009070A414443050A43404241440543050905414405050542050540420A414408090A4207410707440543050A"
theorem cover_947438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_947438)
  decide +kernel
#print axioms cover_947438

def state_947495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
def hex_947495 : String := "4241070741440543050705"
theorem cover_947495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_947495)
  decide +kernel
#print axioms cover_947495

def state_947506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
def hex_947506 : String := "44054305400A05"
theorem cover_947506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_947506)
  decide +kernel
#print axioms cover_947506

def state_947515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 106)))
def hex_947515 : String := "05"
theorem cover_947515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_947515)
  decide +kernel
#print axioms cover_947515

def state_947517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 68 else 107)))
def hex_947517 : String := "05"
theorem cover_947517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_947517)
  decide +kernel
#print axioms cover_947517
end Mub6.Numerical.CircleFullD0.Forest
