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
def state_148150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 26)))
def hex_148150 : String := "4044410A05410A424305080544410905414243070A09424305400A440541090505"
theorem cover_148150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_148150)
  decide +kernel
#print axioms cover_148150

def state_148183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 26)))
def hex_148183 : String := "420805"
theorem cover_148183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_148183)
  decide +kernel
#print axioms cover_148183

def state_148189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
def hex_148189 : String := "414243444009410A420943070909440A05434407060A42430909434440410708414243070607420843050606440606"
theorem cover_148189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_148189)
  decide +kernel
#print axioms cover_148189

def state_148238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 27 else 27)))
def hex_148238 : String := "434440414205434407050542430905434440410708414243070507420843070809440A05840505"
theorem cover_148238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_148238)
  decide +kernel
#print axioms cover_148238

def state_148277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 27 else 27)))
def hex_148277 : String := "43444042410A43070A0784404241054443070505074241054484050844400A420A0A05"
theorem cover_148277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_148277)
  decide +kernel
#print axioms cover_148277

def state_148313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 27 else 27)))
def hex_148313 : String := "434440414209434408094408090884400941090944404142054344080505084142054384050705"
theorem cover_148313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_148313)
  decide +kernel
#print axioms cover_148313

def state_148354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 54 else 54)))
def hex_148354 : String := "404142434440074107084007410709444008410A08064307440A064243440509440806430544050684"
theorem cover_148354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_148354)
  decide +kernel
#print axioms cover_148354
end Mub6.Numerical.CircleFullPrototype.Forest
