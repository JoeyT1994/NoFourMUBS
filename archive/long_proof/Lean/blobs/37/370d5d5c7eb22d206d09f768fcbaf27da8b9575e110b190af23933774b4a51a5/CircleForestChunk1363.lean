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
def state_1627886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 49 else 36)))
def hex_1627886 : String := "43414007074006074140420A064244084341080A0844060640064244060606"
theorem cover_1627886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1627886)
  decide +kernel
#print axioms cover_1627886

def state_1627917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
def hex_1627917 : String := "4243414009444243050A4307410909094009444205050541400A44420A0A0A0A4341400707400744070741400A44420A070A0A"
theorem cover_1627917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1627917)
  decide +kernel
#print axioms cover_1627917

def state_1627968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 19)))
def hex_1627968 : String := "43094140094442430941090909094009444243090A430941090909"
theorem cover_1627968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1627968)
  decide +kernel
#print axioms cover_1627968

def state_1627996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 9)))
def hex_1627996 : String := "404441430A070A0A4441434207400844080807434207400A4443410A0A070A074143420A400A4441060A060A430A0A"
theorem cover_1627996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1627996)
  decide +kernel
#print axioms cover_1627996

def state_1628044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 9)))
def hex_1628044 : String := "4441434005440508050A0A"
theorem cover_1628044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1628044)
  decide +kernel
#print axioms cover_1628044

def state_1628057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 18)))
def hex_1628057 : String := "434044084208084442080842410843400808084108434008080808"
theorem cover_1628057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1628057)
  decide +kernel
#print axioms cover_1628057

def state_1628084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 18)))
def hex_1628084 : String := "434044420A060A4442434140084408080A41080A4341400608060642430A0A43410A0A0A400A444208060A"
theorem cover_1628084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1628084)
  decide +kernel
#print axioms cover_1628084
end Mub6.Numerical.CircleFullD0.Forest
