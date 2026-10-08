import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_950141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 55)))
def hex_950141 : String := "4340064241084443064009080641064443064006420806064042094106094209414443400609050544434042090642410808C70909"
theorem cover_950141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_950141)
  decide +kernel
#print axioms cover_950141

def state_950196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
def hex_950196 : String := "4443404244070744410707410A434042074407070707420744070740420744070707434042080A08400907"
theorem cover_950196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_950196)
  decide +kernel
#print axioms cover_950196

def state_950239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
def hex_950239 : String := "444340424107054144074305070542064107054042064107060643404241080841084443054042074107050708084042074144070744070707"
theorem cover_950239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_950239)
  decide +kernel
#print axioms cover_950239

def state_950299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
def hex_950299 : String := "40424441430A4042070A074340424405410705050540420744070707410A430A40424407070A0A44410A430540424409410A0909090A42444107070A0A"
theorem cover_950299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_950299)
  decide +kernel
#print axioms cover_950299
end Mub6.Numerical.CircleFullD0.Forest
