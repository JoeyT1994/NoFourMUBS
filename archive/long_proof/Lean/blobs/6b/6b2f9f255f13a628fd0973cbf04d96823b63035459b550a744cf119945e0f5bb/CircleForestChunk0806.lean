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
def state_1494149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 56)))
def hex_1494149 : String := "41424043064405414205060643444142050605414209084205064405414205404344050A05430705054006430644064107064240060506"
theorem cover_1494149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1494149)
  decide +kernel
#print axioms cover_1494149

def state_1494207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 40) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 57)))
def hex_1494207 : String := "4344410A4206060A444142400A430A44050A0A4240060506410A424008430A080A"
theorem cover_1494207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1494207)
  decide +kernel
#print axioms cover_1494207

def state_1494240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 40) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 57)))
def hex_1494240 : String := "434441094209400608410942090A44414209400A094205404344050A4405410A05434405090541094209400A09"
theorem cover_1494240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1494240)
  decide +kernel
#print axioms cover_1494240

def state_1494285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 57)))
def hex_1494285 : String := "400A430A44410742400607060A"
theorem cover_1494285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1494285)
  decide +kernel
#print axioms cover_1494285

def state_1494300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 57)))
def hex_1494300 : String := "43440642414006430644060A06064406424140430605434405420506050506"
theorem cover_1494300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1494300)
  decide +kernel
#print axioms cover_1494300

def state_1494331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 57)))
def hex_1494331 : String := "434442050642414043094405090940060541400643084408090644054241050541404344060A440542050A434405094405420541050505"
theorem cover_1494331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1494331)
  decide +kernel
#print axioms cover_1494331

def state_1494386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 57)))
def hex_1494386 : String := "400643064406414240064307070606"
theorem cover_1494386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1494386)
  decide +kernel
#print axioms cover_1494386
end Mub6.Numerical.CircleFullD0.Forest
