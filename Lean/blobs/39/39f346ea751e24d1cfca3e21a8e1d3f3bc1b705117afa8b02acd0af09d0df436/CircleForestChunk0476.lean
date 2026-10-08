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
def state_275537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 35)))
def hex_275537 : String := "4143424408084440D90740D9080843424440D90540D90A4440D94143064205060540D9410A4306420506424440D905084440D941070540D94108430505"
theorem cover_275537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_275537)
  decide +kernel
#print axioms cover_275537

def state_275598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 35)))
def hex_275598 : String := "41430A0843420544050A4205440508"
theorem cover_275598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_275598)
  decide +kernel
#print axioms cover_275598

def state_275613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
def hex_275613 : String := "41430A08434209440606420544054041080505"
theorem cover_275613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_275613)
  decide +kernel
#print axioms cover_275613

def state_275632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 8)))
def hex_275632 : String := "42440808444041074307070740410843420844400707404108434208444007070808080808"
theorem cover_275632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 37) (hex := hex_275632)
  decide +kernel
#print axioms cover_275632

def state_275670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 8)))
def hex_275670 : String := "42054405404143420944094041434209440606420544054041D90505050542054405404143420544054041D90505420544054041D9050505050505"
theorem cover_275670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_275670)
  decide +kernel
#print axioms cover_275670

def state_275729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 8)))
def hex_275729 : String := "420544054041434205440540414305050505050505"
theorem cover_275729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_275729)
  decide +kernel
#print axioms cover_275729

def state_275755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 18)))
def hex_275755 : String := "404105434406060641084344420A40410A4307060A0A08"
theorem cover_275755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_275755)
  decide +kernel
#print axioms cover_275755
end Mub6.Numerical.CircleFullPrototype.Forest
