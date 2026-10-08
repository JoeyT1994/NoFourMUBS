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
def state_1533798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 18)))
def hex_1533798 : String := "42410643444006424105084105080506410543054440420641054305064241064344400642060505064105430544400642060A0505"
theorem cover_1533798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1533798)
  decide +kernel
#print axioms cover_1533798

def state_1533851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 18)))
def hex_1533851 : String := "42410943440805094143050943054440424109434408050941054305444042090A09050905"
theorem cover_1533851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533851 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_1533851)
  decide +kernel
#print axioms cover_1533851

def state_1533888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 19)))
def hex_1533888 : String := "05"
theorem cover_1533888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533888 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1533888)
  decide +kernel
#print axioms cover_1533888

def state_1533890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 9)))
def hex_1533890 : String := "444042430844084105084309444105084105090840424443054105400A05050505"
theorem cover_1533890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533890 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1533890)
  decide +kernel
#print axioms cover_1533890

def state_1533926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 18)))
def hex_1533926 : String := "4344414042074344070A070807414042064305064208430544080540070844074140064206434406060607"
theorem cover_1533926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1533926)
  decide +kernel
#print axioms cover_1533926

def state_1533970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 18)))
def hex_1533970 : String := "44414042430944074105070942430844084105084305444105080540070841054009420809"
theorem cover_1533970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1533970)
  decide +kernel
#print axioms cover_1533970
end Mub6.Numerical.CircleFullD0.Forest
