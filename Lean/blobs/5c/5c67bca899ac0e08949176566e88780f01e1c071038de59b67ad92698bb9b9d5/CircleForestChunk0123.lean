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
def state_50763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_50763 : String := "44404206090940424143090A060909"
theorem cover_50763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_50763)
  decide +kernel
#print axioms cover_50763

def state_50779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_50779 : String := "4042064306074206430944414006420607064140070907"
theorem cover_50779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_50779)
  decide +kernel
#print axioms cover_50779

def state_50803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_50803 : String := "42434144060A06414406080643410A44060A41444207070A44070A"
theorem cover_50803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_50803)
  decide +kernel
#print axioms cover_50803

def state_50831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
def hex_50831 : String := "434144400605400A0505414440064205430644064006054042430608430A4008414442060A0808420543054041444205430540060542050A05054406400605"
theorem cover_50831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_50831)
  decide +kernel
#print axioms cover_50831

def state_50894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 13)))
def hex_50894 : String := "430941444042430907090940420A09424309404241440909090909094440070940420A0909"
theorem cover_50894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_50894)
  decide +kernel
#print axioms cover_50894

def state_50931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_50931 : String := "43440640420509054406404206414306070642054143094406400709430506"
theorem cover_50931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_50931)
  decide +kernel
#print axioms cover_50931

def state_50964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 7)))
def hex_50964 : String := "404244410A050544410A43090A0A4205440905"
theorem cover_50964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_50964)
  decide +kernel
#print axioms cover_50964
end Mub6.Numerical.CircleFullPrototype.Forest
