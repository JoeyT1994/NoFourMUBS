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
def state_2334584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
def hex_2334584 : String := "444143420540084408090505410905"
theorem cover_2334584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2334584)
  decide +kernel
#print axioms cover_2334584

def state_2334599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
def hex_2334599 : String := "4441434205404441430905050944414342054044410905094441434205404441094309050944990A050541090505054109050505410905"
theorem cover_2334599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 55) (hex := hex_2334599)
  decide +kernel
#print axioms cover_2334599

def state_2334655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_2334655 : String := "40440641060644414243064006444142430640064441424305400644990A050641420A0506050641420A0606060641420A0606"
theorem cover_2334655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 51) (hex := hex_2334655)
  decide +kernel
#print axioms cover_2334655

def state_2334707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
def hex_2334707 : String := "4441424340064406060707424306050607"
theorem cover_2334707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2334707)
  decide +kernel
#print axioms cover_2334707

def state_2334729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 8)))
def hex_2334729 : String := "44414243400644410706060707424306050607"
theorem cover_2334729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2334729)
  decide +kernel
#print axioms cover_2334729

def state_2334753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 62 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 16)))
def hex_2334753 : String := "444142434006444107060707074243060506410707"
theorem cover_2334753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2334753)
  decide +kernel
#print axioms cover_2334753

def state_2334776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 88) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 32)))
def hex_2334776 : String := "424340444142430907074243064005050641074209064499414243090707420A43060740074443990507434006444299060707"
theorem cover_2334776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2334776)
  decide +kernel
#print axioms cover_2334776

def state_2334827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 89) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 32)))
def hex_2334827 : String := "42434006444199050A05430640064441070507"
theorem cover_2334827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2334827)
  decide +kernel
#print axioms cover_2334827
end Mub6.Numerical.CircleFullD0.Forest
