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
def state_291654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 18)))
def hex_291654 : String := "40434441424009060642400A4344064106050A0609440A0943440641064243070506440608"
theorem cover_291654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_291654)
  decide +kernel
#print axioms cover_291654

def state_291691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 18)))
def hex_291691 : String := "42054043444142050A05410907440A094344414205060541070505"
theorem cover_291691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_291691)
  decide +kernel
#print axioms cover_291691

def state_291718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 19)))
def hex_291718 : String := "41424440090809094244050644400943070507"
theorem cover_291718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_291718)
  decide +kernel
#print axioms cover_291718

def state_291737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 9)))
def hex_291737 : String := "40434441424005430509054208050909434441064243074007070641420705074441424009060642400A434406070A0A09"
theorem cover_291737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_291737)
  decide +kernel
#print axioms cover_291737

def state_291786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 4)))
def hex_291786 : String := "444142400A080A42400A43440A410A050A0A41424009440808094240444341090909094443414205400908420540090541080543410909084009440A09"
theorem cover_291786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_291786)
  decide +kernel
#print axioms cover_291786

def state_291849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 8)))
def hex_291849 : String := "410642434044064106420506064044064106050606"
theorem cover_291849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_291849)
  decide +kernel
#print axioms cover_291849

def state_291871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
def hex_291871 : String := "42434406404241080A41064307080644080806"
theorem cover_291871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_291871)
  decide +kernel
#print axioms cover_291871
end Mub6.Numerical.CircleFullPrototype.Forest
