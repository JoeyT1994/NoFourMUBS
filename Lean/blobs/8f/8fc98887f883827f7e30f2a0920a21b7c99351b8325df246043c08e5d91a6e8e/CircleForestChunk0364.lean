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
def state_1024676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1024676 : String := "43440807444241400744080708054241074007430744050707"
theorem cover_1024676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1024676)
  decide +kernel
#print axioms cover_1024676

def state_1024702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 51)))
def hex_1024702 : String := "44424140084308440842410A080708084241400743074442410781070740430781434408078107"
theorem cover_1024702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1024702)
  decide +kernel
#print axioms cover_1024702

def state_1024745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 102)))
def hex_1024745 : String := "4443084241400844084307070805434241070807424140074407078107"
theorem cover_1024745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1024745)
  decide +kernel
#print axioms cover_1024745

def state_1024775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 204)))
def hex_1024775 : String := "4342414008060808424140440943424106080642410681064406064044088109410608"
theorem cover_1024775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1024775)
  decide +kernel
#print axioms cover_1024775

def state_1024810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 205)))
def hex_1024810 : String := "4342414044070744060681410608424140444307424106810643070744060681410681"
theorem cover_1024810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1024810)
  decide +kernel
#print axioms cover_1024810

def state_1024845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 127) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 102)))
def hex_1024845 : String := "4044088144430842090581"
theorem cover_1024845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1024845)
  decide +kernel
#print axioms cover_1024845

def state_1024856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 102)))
def hex_1024856 : String := "41400844060608"
theorem cover_1024856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024856 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1024856)
  decide +kernel
#print axioms cover_1024856

def state_1024863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 103)))
def hex_1024863 : String := "424140430744424107810707434442414007430606810742410781074442414044070744060681410681424140070881078141400743060781"
theorem cover_1024863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1024863)
  decide +kernel
#print axioms cover_1024863

def state_1024920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 51)))
def hex_1024920 : String := "410740074307440507"
theorem cover_1024920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1024920)
  decide +kernel
#print axioms cover_1024920
end Mub6.Numerical.CircleFullD0.Forest
