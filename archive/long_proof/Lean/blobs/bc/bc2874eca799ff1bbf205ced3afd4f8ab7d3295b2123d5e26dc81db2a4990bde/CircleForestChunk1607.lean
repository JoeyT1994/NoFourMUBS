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
def state_2258879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 27)))
def hex_2258879 : String := "4044434142084044430808080842074007440A08414208404409060942064044430A06054409060844434108090908"
theorem cover_2258879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2258879)
  decide +kernel
#print axioms cover_2258879

def state_2258930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2258930 : String := "424044434105420A054142080542440A08BE430808444305410542090508BE"
theorem cover_2258930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2258930)
  decide +kernel
#print axioms cover_2258930

def state_2258962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 90 else 54)))
def hex_2258962 : String := "4044430A41420A0A0A4307414207BE0744430A41420ABE0A4341080A414208BE0A"
theorem cover_2258962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 33) (hex := hex_2258962)
  decide +kernel
#print axioms cover_2258962

def state_2258995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 90 else 54)))
def hex_2258995 : String := "404443420A054241BE0A41050A43420A41050A4241BE0A41BE400A0A4443054241050A05434241050A054241BE0A41054044050A44050A"
theorem cover_2258995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2258995)
  decide +kernel
#print axioms cover_2258995

def state_2259051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
def hex_2259051 : String := "42404443414209BE4244404309090909BE414209BE42440909BE4341084208BE41084206BE444341094209BE41094209BE430808BE"
theorem cover_2259051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2259051)
  decide +kernel
#print axioms cover_2259051
end Mub6.Numerical.CircleFullD0.Forest
