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
def state_57115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_57115 : String := "40424341064443060606410606064243410606414406400642064306410806064306414440050840054243064105060506"
theorem cover_57115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_57115)
  decide +kernel
#print axioms cover_57115

def state_57165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_57165 : String := "4042440741060606420A44064143070706"
theorem cover_57165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57165 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_57165)
  decide +kernel
#print axioms cover_57165

def state_57183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_57183 : String := "424143060906410506"
theorem cover_57183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_57183)
  decide +kernel
#print axioms cover_57183

def state_57192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_57192 : String := "424143440A4042094305050A0A43440640060A0A414344400508400542430505054440050705434440064206064006424143060A0641050644074005420A05"
theorem cover_57192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_57192)
  decide +kernel
#print axioms cover_57192

def state_57262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_57262 : String := "420A434440070A404142070707410A050A"
theorem cover_57262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57262 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_57262)
  decide +kernel
#print axioms cover_57262

def state_57280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_57280 : String := "434041440A420543050A05050A"
theorem cover_57280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57280 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_57280)
  decide +kernel
#print axioms cover_57280

def state_57294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_57294 : String := "40414442430907094243424041440505050509424041440743404144050505050A070A4041440743090707410A050944074205094144420A0942050909"
theorem cover_57294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_57294)
  decide +kernel
#print axioms cover_57294
end Mub6.Numerical.CircleFullPrototype.Forest
