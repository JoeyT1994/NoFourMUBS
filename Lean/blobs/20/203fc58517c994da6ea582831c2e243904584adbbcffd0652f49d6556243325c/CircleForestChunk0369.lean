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
def state_164012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 14)))
def hex_164012 : String := "43444142400643444142400507050506064005430506424005430506054106064441060606"
theorem cover_164012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_164012)
  decide +kernel
#print axioms cover_164012

def state_164049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 14)))
def hex_164049 : String := "4344414240434409080709084207054108420A08444142070907410807"
theorem cover_164049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_164049)
  decide +kernel
#print axioms cover_164049

def state_164078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 15)))
def hex_164078 : String := "400608"
theorem cover_164078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_164078)
  decide +kernel
#print axioms cover_164078

def state_164081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 7)))
def hex_164081 : String := "4440060706"
theorem cover_164081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_164081)
  decide +kernel
#print axioms cover_164081

def state_164086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
def hex_164086 : String := "4142434440414205084207430807410807084407054308440905424344070A07434440434409084407070908440707"
theorem cover_164086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_164086)
  decide +kernel
#print axioms cover_164086

def state_164136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_164136 : String := "4406414243064044410A060A44060A430640084406080A"
theorem cover_164136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_164136)
  decide +kernel
#print axioms cover_164136

def state_164160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_164160 : String := "4142440640434109060943060909424406400743060709"
theorem cover_164160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_164160)
  decide +kernel
#print axioms cover_164160

def state_164186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
def hex_164186 : String := "4344414240430A09430A0909420A40430A0743060941420A080A44410907414240430806430A06084207400707"
theorem cover_164186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_164186)
  decide +kernel
#print axioms cover_164186
end Mub6.Numerical.CircleFullPrototype.Forest
