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
def state_1622106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 65)))
def hex_1622106 : String := "43414240070707424007070741424044D3434108424007070708440943410809084007074240440643414240060706060644094341090909400607"
theorem cover_1622106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622106 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1622106)
  decide +kernel
#print axioms cover_1622106

def state_1622165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 32)))
def hex_1622165 : String := "414208084240444341080608434142080842400A44434107060607064108420706440943414208084209090940064409434142080842090609"
theorem cover_1622165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622165 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1622165)
  decide +kernel
#print axioms cover_1622165

def state_1622226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
def hex_1622226 : String := "44434142064008064240444306410609060640444309410809094443064106420608064108424008084008084341064206094106420640094443060806"
theorem cover_1622226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1622226)
  decide +kernel
#print axioms cover_1622226

def state_1622287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
def hex_1622287 : String := "44430641064206404408060606"
theorem cover_1622287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1622287)
  decide +kernel
#print axioms cover_1622287

def state_1622301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
def hex_1622301 : String := "444341424007070742400744070707410842400808400708434109094142080842400944434108090843090840094443070809"
theorem cover_1622301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1622301)
  decide +kernel
#print axioms cover_1622301
end Mub6.Numerical.CircleFullD0.Forest
