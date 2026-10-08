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
def state_1329442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 23)))
def hex_1329442 : String := "4440090640430942414409400843094241080508090943064241444306400A064340420606064042410A440643060A410A060606414406430640090606"
theorem cover_1329442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1329442)
  decide +kernel
#print axioms cover_1329442

def state_1329504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 22)))
def hex_1329504 : String := "4207414340070A0707"
theorem cover_1329504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1329504)
  decide +kernel
#print axioms cover_1329504

def state_1329514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 28 else (if j.val < 4 then 23 else 23)))
def hex_1329514 : String := "414344404207070A404208080A0A43440740054205410A0507"
theorem cover_1329514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1329514)
  decide +kernel
#print axioms cover_1329514

def state_1329539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 29 else (if j.val < 4 then 23 else 23)))
def hex_1329539 : String := "414344400A0A404208080A0A4344400742070740424144074340070A0705414407080742410A44074340070607410A4407430607440740070A"
theorem cover_1329539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1329539)
  decide +kernel
#print axioms cover_1329539

def state_1329596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
def hex_1329596 : String := "404309440741080743444109064105424406090544410A07414243440A050A054243444007064009410A420A0644070A43090A"
theorem cover_1329596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1329596)
  decide +kernel
#print axioms cover_1329596
end Mub6.Numerical.CircleFullD0.Forest
