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
def state_58076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_58076 : String := "44434240410544060541084443064240050A060808424005410544090540054105440905430805"
theorem cover_58076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_58076)
  decide +kernel
#print axioms cover_58076

def state_58115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_58115 : String := "4443424140060A06064241404409054443420A0609430A050A41400644094306090643420A064241050A4105440605"
theorem cover_58115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_58115)
  decide +kernel
#print axioms cover_58115

def state_58164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
def hex_58164 : String := "4342404108444308420708080808424041440905444342070909434205080541440708440743084206404105440905064041084409084108440A08"
theorem cover_58164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_58164)
  decide +kernel
#print axioms cover_58164

def state_58223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 9)))
def hex_58223 : String := "43084240050808"
theorem cover_58223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58223 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_58223)
  decide +kernel
#print axioms cover_58223

def state_58232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 8)))
def hex_58232 : String := "42404144430A420A40064107064308420A080A41440743084207080A40410806410844054305400605"
theorem cover_58232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_58232)
  decide +kernel
#print axioms cover_58232

def state_58277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 16)))
def hex_58277 : String := "4342400A074041090A4144074307094407430A420740060709"
theorem cover_58277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_58277)
  decide +kernel
#print axioms cover_58277
end Mub6.Numerical.CircleFullPrototype.Forest
