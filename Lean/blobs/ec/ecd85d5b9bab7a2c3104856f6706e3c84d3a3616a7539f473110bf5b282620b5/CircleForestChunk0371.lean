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
def state_1026407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 50)))
def hex_1026407 : String := "4108404443420A41400A440A080A0843420841080A0844434205410540440908050808"
theorem cover_1026407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1026407)
  decide +kernel
#print axioms cover_1026407

def state_1026443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
def hex_1026443 : String := "404443424107400A4443420507080807420841070A434208070844434208060808"
theorem cover_1026443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026443 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1026443)
  decide +kernel
#print axioms cover_1026443

def state_1026478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 100)))
def hex_1026478 : String := "434241400A4443420A4140074409070A0A43420841070A080A41400A44434241070A060A430707400A440A43420A070A0A"
theorem cover_1026478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1026478)
  decide +kernel
#print axioms cover_1026478

def state_1026527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 101)))
def hex_1026527 : String := "434241400A08400A440A084107400A4443420A070A4307070A"
theorem cover_1026527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1026527)
  decide +kernel
#print axioms cover_1026527

def state_1026554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 104 else 100)))
def hex_1026554 : String := "4241404443420509080844090540440943424105094140440908080908094140444306064306060640440943424140440606060906420A0A4409430606"
theorem cover_1026554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1026554)
  decide +kernel
#print axioms cover_1026554

def state_1026615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 105 else 100)))
def hex_1026615 : String := "420841400A06400A09"
theorem cover_1026615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026615 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1026615)
  decide +kernel
#print axioms cover_1026615

def state_1026624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 101)))
def hex_1026624 : String := "43420841404443060607064044434241400706400A4406060642080A4342080608444306060808"
theorem cover_1026624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1026624)
  decide +kernel
#print axioms cover_1026624
end Mub6.Numerical.CircleFullD0.Forest
