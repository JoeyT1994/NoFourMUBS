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
def state_1310204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 48)))
def hex_1310204 : String := "4344420A41400A0A4043440642060606434406420641070606420A410A400A43440A0A0A44420A4109060A"
theorem cover_1310204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1310204)
  decide +kernel
#print axioms cover_1310204

def state_1310247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 48)))
def hex_1310247 : String := "4344420841400A084043050605420A410A4043050A054442084108060A"
theorem cover_1310247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1310247)
  decide +kernel
#print axioms cover_1310247

def state_1310277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 48)))
def hex_1310277 : String := "43444107424043070543440907060741074240074307444107060707440941054240054344064105060505"
theorem cover_1310277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1310277)
  decide +kernel
#print axioms cover_1310277

def state_1310322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 96)))
def hex_1310322 : String := "41424007430708074240434441070641074205064406410906430544064109054009430509"
theorem cover_1310322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1310322)
  decide +kernel
#print axioms cover_1310322

def state_1310359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 97)))
def hex_1310359 : String := "4107424043074441070641074206074305444142050705410705400707"
theorem cover_1310359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1310359)
  decide +kernel
#print axioms cover_1310359

def state_1310388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 48)))
def hex_1310388 : String := "44410942400606094142400908094240434406410A06064344410906410A0606400909"
theorem cover_1310388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1310388)
  decide +kernel
#print axioms cover_1310388

def state_1310424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 48)))
def hex_1310424 : String := "404344064142064006060606434441420506050506"
theorem cover_1310424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1310424)
  decide +kernel
#print axioms cover_1310424
end Mub6.Numerical.CircleFullD0.Forest
