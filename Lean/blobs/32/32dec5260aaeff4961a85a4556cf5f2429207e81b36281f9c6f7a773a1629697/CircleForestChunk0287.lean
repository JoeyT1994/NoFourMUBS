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
def state_144261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
def hex_144261 : String := "42430641440505444042410544054306054144050A440743060A06400A06434144060644074042060706414440070709444042410707074241060707400A09"
theorem cover_144261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_144261)
  decide +kernel
#print axioms cover_144261

def state_144324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 20)))
def hex_144324 : String := "434007074042434107070A43070A424341070741094407094307410707"
theorem cover_144324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_144324)
  decide +kernel
#print axioms cover_144324

def state_144353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 21)))
def hex_144353 : String := "42434044420643060942060906400A444243060A0909430909"
theorem cover_144353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_144353)
  decide +kernel
#print axioms cover_144353

def state_144378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
def hex_144378 : String := "400A410A444243400A4241054443400505050A410A4443400A424105440505080A0A0A43400A424109444308080941094408090A0A"
theorem cover_144378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 53) (hex := hex_144378)
  decide +kernel
#print axioms cover_144378

def state_144431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 10)))
def hex_144431 : String := "4340410944430506430506410944430742400707070940064109444243400608060609"
theorem cover_144431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_144431)
  decide +kernel
#print axioms cover_144431

def state_144466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
def hex_144466 : String := "4243400A4441094243400A0609090A0A43400A0909"
theorem cover_144466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_144466)
  decide +kernel
#print axioms cover_144466
end Mub6.Numerical.CircleFullPrototype.Forest
