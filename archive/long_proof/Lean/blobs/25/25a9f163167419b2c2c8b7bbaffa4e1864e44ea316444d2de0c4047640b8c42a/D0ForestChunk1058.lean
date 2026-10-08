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
def state_1554195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 84)))
def hex_1554195 : String := "414340424407414308074308074441430807074143054042070A0A43060742080840070A43404207070607"
theorem cover_1554195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1554195)
  decide +kernel
#print axioms cover_1554195

def state_1554242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 118) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 85)))
def hex_1554242 : String := "44414340424405050505400A0A43404208080840070A41430540060543404244410508050542080540420A440A0A42090A"
theorem cover_1554242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554242 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1554242)
  decide +kernel
#print axioms cover_1554242

def state_1554291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 118) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 85)))
def hex_1554291 : String := "444143050543404244080505054042074407410507420A4408054105430540424441050A050505"
theorem cover_1554291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1554291)
  decide +kernel
#print axioms cover_1554291

def state_1554330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
def hex_1554330 : String := "4244414305080841054305094441050805"
theorem cover_1554330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554330 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1554330)
  decide +kernel
#print axioms cover_1554330

def state_1554347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 85)))
def hex_1554347 : String := "4042440A09440A0A42090A"
theorem cover_1554347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1554347)
  decide +kernel
#print axioms cover_1554347

def state_1554361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 85)))
def hex_1554361 : String := "4441430807074143404244070844084143050508084007420744070A430807"
theorem cover_1554361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1554361)
  decide +kernel
#print axioms cover_1554361

def state_1554392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 85)))
def hex_1554392 : String := "4441430640070806414340424408410543050844050542080540424407414305070744074105430507424408410A084408410543050843064007420706"
theorem cover_1554392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1554392)
  decide +kernel
#print axioms cover_1554392
end Mub6.Numerical.CircleFullD0.Forest
