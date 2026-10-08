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
def state_1532167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 66)))
def hex_1532167 : String := "424143054440420941054305090905430844400808404208050841054305444042414305444042080508050841054305440605420841050605"
theorem cover_1532167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1532167)
  decide +kernel
#print axioms cover_1532167

def state_1532224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 67)))
def hex_1532224 : String := "05"
theorem cover_1532224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1532224)
  decide +kernel
#print axioms cover_1532224

def state_1532227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 66)))
def hex_1532227 : String := "4241064344074006420641060707410A43444042070742410A070A40420641050742410A070A0A"
theorem cover_1532227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1532227)
  decide +kernel
#print axioms cover_1532227

def state_1532267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 104) else (if j.val < 3 then 206 else (if j.val < 4 then 77 else 66)))
def hex_1532267 : String := "4109434440420741090709404209414344090506434407400608070909"
theorem cover_1532267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532267 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1532267)
  decide +kernel
#print axioms cover_1532267

def state_1532296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 104) else (if j.val < 3 then 207 else (if j.val < 4 then 77 else 66)))
def hex_1532296 : String := "410A43444042410A4344400708400742070A070A42410943080A0A4042410A434440420705420805050A0A424109434408050A0A0A"
theorem cover_1532296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532296 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1532296)
  decide +kernel
#print axioms cover_1532296

def state_1532349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 67)))
def hex_1532349 : String := "404206410643050642410643444042064105430506090509410A43050A"
theorem cover_1532349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532349 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1532349)
  decide +kernel
#print axioms cover_1532349
end Mub6.Numerical.CircleFullD0.Forest
