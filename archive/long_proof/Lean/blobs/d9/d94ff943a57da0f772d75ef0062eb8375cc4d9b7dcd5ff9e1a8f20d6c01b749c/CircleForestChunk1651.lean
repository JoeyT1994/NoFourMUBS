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
def state_2269488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 29)))
def hex_2269488 : String := "4341084044420843054105400908084442084305080841400808404442430806434108404409064442060906410A060844420843410840080841070608"
theorem cover_2269488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269488 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2269488)
  decide +kernel
#print axioms cover_2269488

def state_2269552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
def hex_2269552 : String := "43444007414207430744070707074440074143420744400741430A06064007410606420544400606060740074143070505"
theorem cover_2269552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_2269552)
  decide +kernel
#print axioms cover_2269552

def state_2269601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
def hex_2269601 : String := "43444007414243074409090907400741420709074440410907414243440909440940094106060908404109074142434440074109060744060609420709"
theorem cover_2269601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2269601)
  decide +kernel
#print axioms cover_2269601

def state_2269662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
def hex_2269662 : String := "420743074007444142060907410605"
theorem cover_2269662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2269662)
  decide +kernel
#print axioms cover_2269662

def state_2269681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2269681 : String := "444142430A400A0A43400A0A40440A0A440A41420A0A0A074142074307400744414206430A060641060607"
theorem cover_2269681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2269681)
  decide +kernel
#print axioms cover_2269681
end Mub6.Numerical.CircleFullD0.Forest
