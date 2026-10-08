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
def state_7489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 16)))
def hex_7489 : String := "4041424305440540410942430507054109050606410505"
theorem cover_7489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_7489)
  decide +kernel
#print axioms cover_7489

def state_7517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 34)))
def hex_7517 : String := "404142434405400A0544400905404142430A09060641424308440741070709420A050606414243054405404142070505050505"
theorem cover_7517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_7517)
  decide +kernel
#print axioms cover_7517

def state_7571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 108) else (if j.val < 3 then 108 else (if j.val < 4 then 34 else 35)))
def hex_7571 : String := "44430A4041420A444306410906430841080A0A41420A440808420A444305060A430A400A0A"
theorem cover_7571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_7571)
  decide +kernel
#print axioms cover_7571

def state_7608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 108) else (if j.val < 3 then 109 else (if j.val < 4 then 34 else 35)))
def hex_7608 : String := "444306400641424408080606434006084041070641440807440607"
theorem cover_7608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_7608)
  decide +kernel
#print axioms cover_7608

def state_7635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 109) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
def hex_7635 : String := "420A06"
theorem cover_7635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_7635)
  decide +kernel
#print axioms cover_7635

def state_7639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 108) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
def hex_7639 : String := "424443084041420808420A44050841084208054308400A0A444305404108050543084041084442080542080708"
theorem cover_7639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_7639)
  decide +kernel
#print axioms cover_7639

def state_7684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 109) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
def hex_7684 : String := "420A4405430540440641420906064405410505"
theorem cover_7684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_7684)
  decide +kernel
#print axioms cover_7684

def state_7706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 108) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 34)))
def hex_7706 : String := "4243440940410942434406420A064407420709064109424307074344050609440940090909"
theorem cover_7706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_7706)
  decide +kernel
#print axioms cover_7706
end Mub6.Numerical.CircleFullPrototype.Forest
