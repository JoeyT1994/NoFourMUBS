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
def state_2298448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 45)))
def hex_2298448 : String := "4441400A43050A4009430942090941400A430A0A400A43424409410A090A0A"
theorem cover_2298448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2298448)
  decide +kernel
#print axioms cover_2298448

def state_2298479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
def hex_2298479 : String := "434209440909424409400909440940094143090909"
theorem cover_2298479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2298479)
  decide +kernel
#print axioms cover_2298479

def state_2298502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 45)))
def hex_2298502 : String := "4244054041080605440540410543050505"
theorem cover_2298502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2298502)
  decide +kernel
#print axioms cover_2298502

def state_2298521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 90)))
def hex_2298521 : String := "404143054244054105400905054342090542094409094105430505"
theorem cover_2298521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2298521)
  decide +kernel
#print axioms cover_2298521

def state_2298551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 91)))
def hex_2298551 : String := "4244084108404306424408064441050941070606440507"
theorem cover_2298551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2298551)
  decide +kernel
#print axioms cover_2298551

def state_2298576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 72 else (if j.val < 4 then 107 else 182)))
def hex_2298576 : String := "414043050A054043420909420944090A4305C4"
theorem cover_2298576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298576 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2298576)
  decide +kernel
#print axioms cover_2298576

def state_2298595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 72 else (if j.val < 4 then 107 else 183)))
def hex_2298595 : String := "4140434244080A070A4305C440434244414009080941400A43060A0944410A09410A40094306094244410A09410A4009090A4342440806440507C4"
theorem cover_2298595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_2298595)
  decide +kernel
#print axioms cover_2298595

def state_2298654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 73 else (if j.val < 4 then 107 else 91)))
def hex_2298654 : String := "4441054043050A05410740430A0A07"
theorem cover_2298654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2298654)
  decide +kernel
#print axioms cover_2298654

def state_2298670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 91)))
def hex_2298670 : String := "42444009060644400905404143064209070606"
theorem cover_2298670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2298670)
  decide +kernel
#print axioms cover_2298670
end Mub6.Numerical.CircleFullD0.Forest
