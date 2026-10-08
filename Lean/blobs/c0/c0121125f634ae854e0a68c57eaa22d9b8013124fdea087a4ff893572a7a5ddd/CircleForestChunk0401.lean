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
def state_171762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
def hex_171762 : String := "4341444340420A090A0A43060644434042410A0A410A050A0A4340424106444305420A0543050641070542050540424106440A064106440A060A410A0A"
theorem cover_171762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_171762)
  decide +kernel
#print axioms cover_171762

def state_171823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_171823 : String := "42434106440A060A43410A0A0A"
theorem cover_171823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_171823)
  decide +kernel
#print axioms cover_171823

def state_171836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_171836 : String := "440A4042060906"
theorem cover_171836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_171836)
  decide +kernel
#print axioms cover_171836

def state_171845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_171845 : String := "0A"
theorem cover_171845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_171845)
  decide +kernel
#print axioms cover_171845

def state_171849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 7)))
def hex_171849 : String := "42444340070A090744434007070907"
theorem cover_171849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_171849)
  decide +kernel
#print axioms cover_171849

def state_171864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 7)))
def hex_171864 : String := "4244434041420A09420505050A434041070505404109080A4443404144420943070907440505050A434007054008410605"
theorem cover_171864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_171864)
  decide +kernel
#print axioms cover_171864

def state_171913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 7)))
def hex_171913 : String := "4109420A440909"
theorem cover_171913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171913 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_171913)
  decide +kernel
#print axioms cover_171913

def state_171920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_171920 : String := "4341420A440A054205050A"
theorem cover_171920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_171920)
  decide +kernel
#print axioms cover_171920

def state_171931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
def hex_171931 : String := "0A"
theorem cover_171931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_171931)
  decide +kernel
#print axioms cover_171931

def state_171935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_171935 : String := "404142070A4243060707410A07"
theorem cover_171935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_171935)
  decide +kernel
#print axioms cover_171935

def state_171953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
def hex_171953 : String := "4207434041440743420705070541050507"
theorem cover_171953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_171953)
  decide +kernel
#print axioms cover_171953

def state_171971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
def hex_171971 : String := "434041440909070907"
theorem cover_171971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171971 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_171971)
  decide +kernel
#print axioms cover_171971
end Mub6.Numerical.CircleFullPrototype.Forest
