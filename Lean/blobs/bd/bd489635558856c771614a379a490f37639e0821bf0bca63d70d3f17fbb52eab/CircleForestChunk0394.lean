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
def state_170099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 60)))
def hex_170099 : String := "438F4240054105444342050A05434205060540094106440909"
theorem cover_170099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_170099)
  decide +kernel
#print axioms cover_170099

def state_170124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 61)))
def hex_170124 : String := "4342404106444308080841064443424041064443080606064008060606400841064443070606420606"
theorem cover_170124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_170124)
  decide +kernel
#print axioms cover_170124

def state_170166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 60)))
def hex_170166 : String := "434240418F07418F44064342074006050740418F06418F440643054208054207404144090807414443420740080A07434240084108070842070807"
theorem cover_170166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_170166)
  decide +kernel
#print axioms cover_170166

def state_170226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 96 else 61)))
def hex_170226 : String := "4240414408080841444342400A4144430942060606094008410808424041080741064407064008410608430A0844430A4207080A4008410808"
theorem cover_170226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_170226)
  decide +kernel
#print axioms cover_170226

def state_170283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 97 else 61)))
def hex_170283 : String := "4240410807414443420508050644070808"
theorem cover_170283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_170283)
  decide +kernel
#print axioms cover_170283

def state_170301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 30)))
def hex_170301 : String := "44434241408F06408F440A0641408F06408F440A0642410640440A06060A06"
theorem cover_170301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_170301)
  decide +kernel
#print axioms cover_170301
end Mub6.Numerical.CircleFullPrototype.Forest
