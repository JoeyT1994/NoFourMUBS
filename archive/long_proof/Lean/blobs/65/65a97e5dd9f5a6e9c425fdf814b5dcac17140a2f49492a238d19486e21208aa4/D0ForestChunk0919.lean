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
def state_1521063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
def hex_1521063 : String := "434007420744070A07"
theorem cover_1521063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1521063)
  decide +kernel
#print axioms cover_1521063

def state_1521077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 8 else 22)))
def hex_1521077 : String := "0A"
theorem cover_1521077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1521077)
  decide +kernel
#print axioms cover_1521077

def state_1521080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
def hex_1521080 : String := "4044420A4109434044420A41438309438340440A0A09420A410943404483090909440A0940444209090909420A41094340444209090809094442090909"
theorem cover_1521080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1521080)
  decide +kernel
#print axioms cover_1521080

def state_1521141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 22)))
def hex_1521141 : String := "40444209090909"
theorem cover_1521141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1521141)
  decide +kernel
#print axioms cover_1521141

def state_1521151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 44)))
def hex_1521151 : String := "420A4143404442074143830A07420A414340440A0A0A0A43400506050A4044070A0A43404407050640050A"
theorem cover_1521151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1521151)
  decide +kernel
#print axioms cover_1521151

def state_1521194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 45)))
def hex_1521194 : String := "420A414340444205414340050A0505080A40440A050A4340050605"
theorem cover_1521194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1521194)
  decide +kernel
#print axioms cover_1521194

def state_1521221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
def hex_1521221 : String := "0A"
theorem cover_1521221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1521221)
  decide +kernel
#print axioms cover_1521221

def state_1521222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 22)))
def hex_1521222 : String := "40444207410A07420A410A050A"
theorem cover_1521222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1521222)
  decide +kernel
#print axioms cover_1521222

def state_1521235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 23)))
def hex_1521235 : String := "420A41434044420909080909434044420508050A400809"
theorem cover_1521235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1521235)
  decide +kernel
#print axioms cover_1521235

def state_1521258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
def hex_1521258 : String := "440A0A"
theorem cover_1521258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521258 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1521258)
  decide +kernel
#print axioms cover_1521258

def state_1521261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
def hex_1521261 : String := "4044420A41090A4209090A"
theorem cover_1521261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1521261)
  decide +kernel
#print axioms cover_1521261

def state_1521272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
def hex_1521272 : String := "434044420741434044074205050A40070A4306074205414340050605050A4044070A0A"
theorem cover_1521272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1521272)
  decide +kernel
#print axioms cover_1521272

def state_1521313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 20)))
def hex_1521313 : String := "41430840420741080808430807"
theorem cover_1521313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1521313)
  decide +kernel
#print axioms cover_1521313
end Mub6.Numerical.CircleFullD0.Forest
