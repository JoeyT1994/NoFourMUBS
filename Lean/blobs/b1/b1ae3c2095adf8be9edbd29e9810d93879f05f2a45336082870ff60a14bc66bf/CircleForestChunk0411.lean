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
def state_174217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 99) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 95)))
def hex_174217 : String := "42434441059505444105080543444109094105954409410509"
theorem cover_174217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 25) (hex := hex_174217)
  decide +kernel
#print axioms cover_174217

def state_174242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 99) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 95)))
def hex_174242 : String := "424344414042054307440705079541059544414042050942060A0841059543444140424307090A079541404205080A9544410A954140050A95"
theorem cover_174242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_174242)
  decide +kernel
#print axioms cover_174242

def state_174299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 61 else 47)))
def hex_174299 : String := "4441090941400542050A40420909420643440941400506400942060909"
theorem cover_174299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_174299)
  decide +kernel
#print axioms cover_174299

def state_174328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 39 else (if j.val < 4 then 30 else 47)))
def hex_174328 : String := "4344410909414042430809060A4042430609064243440A4108950A0A4409410909"
theorem cover_174328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_174328)
  decide +kernel
#print axioms cover_174328

def state_174361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
def hex_174361 : String := "424344410A42404344070708070A4142070A4240434407410707064307064043440A4107950A0A44410A08410A420640430A0606430A0A"
theorem cover_174361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_174361)
  decide +kernel
#print axioms cover_174361

def state_174416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 31 else 23)))
def hex_174416 : String := "41440940090A4409404243440941050909094243440806060A"
theorem cover_174416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_174416)
  decide +kernel
#print axioms cover_174416

def state_174442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 22)))
def hex_174442 : String := "08"
theorem cover_174442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_174442)
  decide +kernel
#print axioms cover_174442

def state_174445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 15 else 23)))
def hex_174445 : String := "43440841400A4208430A080808"
theorem cover_174445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_174445)
  decide +kernel
#print axioms cover_174445
end Mub6.Numerical.CircleFullPrototype.Forest
