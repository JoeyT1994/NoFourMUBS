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
def state_953236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 216)))
def hex_953236 : String := "4340424144084340060A4005420505C7414408430608C7424144070AC74144090A094042410508410808420741440707C7"
theorem cover_953236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953236 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_953236)
  decide +kernel
#print axioms cover_953236

def state_953285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 217)))
def hex_953285 : String := "434042410AC74106C7420A0A40420505424105C74105C7"
theorem cover_953285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953285 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 23) (hex := hex_953285)
  decide +kernel
#print axioms cover_953285

def state_953308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 108)))
def hex_953308 : String := "C7"
theorem cover_953308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_953308)
  decide +kernel
#print axioms cover_953308

def state_953309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 109)))
def hex_953309 : String := "43400642410AC74106C740424105C74106C74241434440050A0505C741430A05C7"
theorem cover_953309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953309 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_953309)
  decide +kernel
#print axioms cover_953309

def state_953344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 70 else 108)))
def hex_953344 : String := "400641424409060609"
theorem cover_953344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_953344)
  decide +kernel
#print axioms cover_953344

def state_953354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 71 else 108)))
def hex_953354 : String := "414244434006420806400808430606444306080642C74443060806"
theorem cover_953354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_953354)
  decide +kernel
#print axioms cover_953354

def state_953381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 71 else 108)))
def hex_953381 : String := "4142444340424144080608090940420808424144080A084108084340060A40424105C74106C7420A0A4409430640060A42C744094309404142C7060909"
theorem cover_953381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_953381)
  decide +kernel
#print axioms cover_953381

def state_953442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 109)))
def hex_953442 : String := "4306400641420A0642C743064440060A06"
theorem cover_953442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_953442)
  decide +kernel
#print axioms cover_953442

def state_953460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
def hex_953460 : String := "C7"
theorem cover_953460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953460 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_953460)
  decide +kernel
#print axioms cover_953460

def state_953462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 108)))
def hex_953462 : String := "43404142C7050505404142C744084306400641060742C7094142C70942C709"
theorem cover_953462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953462 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_953462)
  decide +kernel
#print axioms cover_953462
end Mub6.Numerical.CircleFullD0.Forest
