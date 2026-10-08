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
def state_180999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 29)))
def hex_180999 : String := "414205400505424005054044094341054205090944434142050942404408090809094341054205400944434109424009080909434105420509054105420509"
theorem cover_180999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_180999)
  decide +kernel
#print axioms cover_180999

def state_181062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 31 else 29)))
def hex_181062 : String := "4105420509"
theorem cover_181062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_181062)
  decide +kernel
#print axioms cover_181062

def state_181068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 28)))
def hex_181068 : String := "43410808410808"
theorem cover_181068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_181068)
  decide +kernel
#print axioms cover_181068

def state_181077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 29)))
def hex_181077 : String := "420540440A050A"
theorem cover_181077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_181077)
  decide +kernel
#print axioms cover_181077

def state_181085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 48 else (if j.val < 4 then 30 else 29)))
def hex_181085 : String := "4044080508"
theorem cover_181085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_181085)
  decide +kernel
#print axioms cover_181085

def state_181092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 58)))
def hex_181092 : String := "434142080A420840440843080808410808"
theorem cover_181092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_181092)
  decide +kernel
#print axioms cover_181092

def state_181111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 98) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 59)))
def hex_181111 : String := "420540050A"
theorem cover_181111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181111 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_181111)
  decide +kernel
#print axioms cover_181111

def state_181117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 98 else (if j.val < 4 then 60 else 59)))
def hex_181117 : String := "400508"
theorem cover_181117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_181117)
  decide +kernel
#print axioms cover_181117

def state_181121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 99) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
def hex_181121 : String := "4443414205094208400908410942080943410542054044434109060996444341080608964105420509"
theorem cover_181121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_181121)
  decide +kernel
#print axioms cover_181121

def state_181162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 99) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
def hex_181162 : String := "44430808434142050A42084044089608410542054044080508"
theorem cover_181162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_181162)
  decide +kernel
#print axioms cover_181162

def state_181187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 61 else 59)))
def hex_181187 : String := "410542054009440805"
theorem cover_181187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_181187)
  decide +kernel
#print axioms cover_181187

def state_181196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
def hex_181196 : String := "440843410A420840440843080808410508"
theorem cover_181196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_181196)
  decide +kernel
#print axioms cover_181196

def state_181213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 31 else 29)))
def hex_181213 : String := "41054205404409050A"
theorem cover_181213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_181213)
  decide +kernel
#print axioms cover_181213
end Mub6.Numerical.CircleFullPrototype.Forest
