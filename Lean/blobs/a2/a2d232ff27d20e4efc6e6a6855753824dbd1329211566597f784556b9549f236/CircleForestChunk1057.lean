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
def state_1553959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
def hex_1553959 : String := "41434406054440420606064042414305440A054306440640420A0A0A41054305440605424143050A060643064406404241430644064042060606060606"
theorem cover_1553959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1553959)
  decide +kernel
#print axioms cover_1553959

def state_1554020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
def hex_1554020 : String := "42414306440640420806060606"
theorem cover_1554020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1554020)
  decide +kernel
#print axioms cover_1554020

def state_1554034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1554034 : String := "40424405050505"
theorem cover_1554034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1554034)
  decide +kernel
#print axioms cover_1554034

def state_1554046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
def hex_1554046 : String := "4042444105430505050505"
theorem cover_1554046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1554046)
  decide +kernel
#print axioms cover_1554046

def state_1554059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 58) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 42)))
def hex_1554059 : String := "444143050A434042444143050A430807410543050A44410543050A05424408410508440505400A0A410543404244050505054042060A09"
theorem cover_1554059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1554059)
  decide +kernel
#print axioms cover_1554059

def state_1554114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 58) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 42)))
def hex_1554114 : String := "444105430540420A0A0A4105430505"
theorem cover_1554114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1554114)
  decide +kernel
#print axioms cover_1554114

def state_1554129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
def hex_1554129 : String := "42444109430809410543050944410543050A05"
theorem cover_1554129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_1554129)
  decide +kernel
#print axioms cover_1554129

def state_1554149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
def hex_1554149 : String := "40424443064140420806060643410506414042444105080505054042440643060806064406430541050606"
theorem cover_1554149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1554149)
  decide +kernel
#print axioms cover_1554149
end Mub6.Numerical.CircleFullD0.Forest
