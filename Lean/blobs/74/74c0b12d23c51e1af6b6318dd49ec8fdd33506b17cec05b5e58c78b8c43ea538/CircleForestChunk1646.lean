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
def state_2268293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 56)))
def hex_2268293 : String := "42410844404308420641080608084144050844404342410505054241440508090943054241054440090506054043420805420609430808"
theorem cover_2268293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2268293)
  decide +kernel
#print axioms cover_2268293

def state_2268349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 56)))
def hex_2268349 : String := "41084440060606"
theorem cover_2268349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2268349)
  decide +kernel
#print axioms cover_2268349

def state_2268356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 56)))
def hex_2268356 : String := "41444043420805420A0A43050A4008084440434241440906060942060943424144400605060641050942064144070644060640434206090643420641060606"
theorem cover_2268356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2268356)
  decide +kernel
#print axioms cover_2268356

def state_2268419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
def hex_2268419 : String := "43420841054405084241084440060606414407084440434241080641050542060707400606"
theorem cover_2268419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2268419)
  decide +kernel
#print axioms cover_2268419

def state_2268456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 57)))
def hex_2268456 : String := "404308420641080608"
theorem cover_2268456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2268456)
  decide +kernel
#print axioms cover_2268456

def state_2268467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
def hex_2268467 : String := "434241444007430706060741444009434241440507070942414409060609400743420709420609440707424106054144404309064342060906064440060606"
theorem cover_2268467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2268467)
  decide +kernel
#print axioms cover_2268467
end Mub6.Numerical.CircleFullD0.Forest
