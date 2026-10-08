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
def state_2255278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 50)))
def hex_2255278 : String := "424344414042434441090809444109050508420907400842430608084109404205084205430A084441404205074209070841090543440841070808"
theorem cover_2255278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255278 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2255278)
  decide +kernel
#print axioms cover_2255278

def state_2255337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 50)))
def hex_2255337 : String := "400842434408060508"
theorem cover_2255337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255337 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2255337)
  decide +kernel
#print axioms cover_2255337

def state_2255347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 51)))
def hex_2255347 : String := "4042054344414008424344080505070841400542054344070505054408054209434441074008424344070505074109400542050744410708410705"
theorem cover_2255347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2255347)
  decide +kernel
#print axioms cover_2255347

def state_2255406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 51)))
def hex_2255406 : String := "400542054344080505"
theorem cover_2255406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2255406)
  decide +kernel
#print axioms cover_2255406

def state_2255416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
def hex_2255416 : String := "44414042430A4441070A4109060707404206430A080A41404209434441070A09440709094042060606"
theorem cover_2255416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2255416)
  decide +kernel
#print axioms cover_2255416

def state_2255457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 25)))
def hex_2255457 : String := "44414042434441074042060706094441074042060706090707404206084206064140420907074042060606"
theorem cover_2255457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2255457)
  decide +kernel
#print axioms cover_2255457
end Mub6.Numerical.CircleFullD0.Forest
