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
def state_1557956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 86)))
def hex_1557956 : String := "43414044420743410A07074243410A0707434140090A090A44420A0A420A0A4007440642430607430607410A07"
theorem cover_1557956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557956 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1557956)
  decide +kernel
#print axioms cover_1557956

def state_1558001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 86)))
def hex_1558001 : String := "4341404442430907094243090A0944420A0642434105060A05400906410A400707"
theorem cover_1558001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1558001)
  decide +kernel
#print axioms cover_1558001

def state_1558037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 87)))
def hex_1558037 : String := "404442434140080A404407080A0A4341054009440A0A0A424341084008440A080843080844420A4341050A0A424341050A0A43050A"
theorem cover_1558037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1558037)
  decide +kernel
#print axioms cover_1558037

def state_1558092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 174)))
def hex_1558092 : String := "4243414007440742070A0707430907"
theorem cover_1558092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558092 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1558092)
  decide +kernel
#print axioms cover_1558092

def state_1558107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 175)))
def hex_1558107 : String := "4243414044080844420A0A420A084044074207084442070742434140070A0707430907410A07434140084409420808094140080A400744070A"
theorem cover_1558107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1558107)
  decide +kernel
#print axioms cover_1558107

def state_1558164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 87)))
def hex_1558164 : String := "44424341400A06060A43060A42434140440A0A0A4044420606420A43060A060A43414044420A06420A0544060A060A"
theorem cover_1558164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1558164)
  decide +kernel
#print axioms cover_1558164
end Mub6.Numerical.CircleFullD0.Forest
