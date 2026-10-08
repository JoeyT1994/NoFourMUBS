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
def state_1043114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1043114 : String := "430A4042090A420A0A"
theorem cover_1043114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1043114)
  decide +kernel
#print axioms cover_1043114

def state_1043123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_1043123 : String := "430A0A"
theorem cover_1043123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1043123)
  decide +kernel
#print axioms cover_1043123

def state_1043126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1043126 : String := "4143400742050740094209444143094009420944414309400942094441434007420507D9430740074209070709070907430709"
theorem cover_1043126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 51) (hex := hex_1043126)
  decide +kernel
#print axioms cover_1043126

def state_1043180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_1043180 : String := "4007440A07"
theorem cover_1043180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043180 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1043180)
  decide +kernel
#print axioms cover_1043180

def state_1043186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1043186 : String := "440507"
theorem cover_1043186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1043186)
  decide +kernel
#print axioms cover_1043186

def state_1043190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_1043190 : String := "420A05"
theorem cover_1043190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043190 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1043190)
  decide +kernel
#print axioms cover_1043190

def state_1043195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_1043195 : String := "434007440A074044050744420A054241434007440A0740440507444241430A0505054241434007440807D943074005440507074307400544050707"
theorem cover_1043195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 59) (hex := hex_1043195)
  decide +kernel
#print axioms cover_1043195

def state_1043254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_1043254 : String := "43074005440507"
theorem cover_1043254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1043254)
  decide +kernel
#print axioms cover_1043254

def state_1043261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
def hex_1043261 : String := "07"
theorem cover_1043261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1043261)
  decide +kernel
#print axioms cover_1043261

def state_1043262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
def hex_1043262 : String := "43074005440507"
theorem cover_1043262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043262 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1043262)
  decide +kernel
#print axioms cover_1043262

def state_1043269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1043269 : String := "07"
theorem cover_1043269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043269 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1043269)
  decide +kernel
#print axioms cover_1043269

def state_1043274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1043274 : String := "06"
theorem cover_1043274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1043274)
  decide +kernel
#print axioms cover_1043274

def state_1043276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1043276 : String := "440A4041430542054407050605"
theorem cover_1043276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043276 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1043276)
  decide +kernel
#print axioms cover_1043276

def state_1043290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1043290 : String := "400A06"
theorem cover_1043290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1043290)
  decide +kernel
#print axioms cover_1043290

def state_1043296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
def hex_1043296 : String := "420606"
theorem cover_1043296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043296 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1043296)
  decide +kernel
#print axioms cover_1043296

def state_1043300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 25)))
def hex_1043300 : String := "44400A064041430542054407050605"
theorem cover_1043300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1043300)
  decide +kernel
#print axioms cover_1043300

def state_1043315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 25)))
def hex_1043315 : String := "44400A0640414342060642444041070606404143054205D9060544404143064407D9060640414306D90606430642060606"
theorem cover_1043315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1043315)
  decide +kernel
#print axioms cover_1043315

def state_1043364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1043364 : String := "4306420606"
theorem cover_1043364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1043364)
  decide +kernel
#print axioms cover_1043364

def state_1043369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1043369 : String := "06"
theorem cover_1043369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043369 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1043369)
  decide +kernel
#print axioms cover_1043369

def state_1043370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_1043370 : String := "06"
theorem cover_1043370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1043370)
  decide +kernel
#print axioms cover_1043370
end Mub6.Numerical.CircleFullD0.Forest
