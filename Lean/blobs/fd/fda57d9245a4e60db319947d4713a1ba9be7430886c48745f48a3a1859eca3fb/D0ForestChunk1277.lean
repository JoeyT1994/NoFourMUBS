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
def state_1606989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
def hex_1606989 : String := "4344404241060606424143444006420A4106064006420A06064344400809090A410643444006424106060606064006424106090606"
theorem cover_1606989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1606989)
  decide +kernel
#print axioms cover_1606989

def state_1607042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
def hex_1607042 : String := "434440420806420841434440060909060940420806094440060906"
theorem cover_1607042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607042 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1607042)
  decide +kernel
#print axioms cover_1607042

def state_1607069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 100)))
def hex_1607069 : String := "41064344400642410606060606"
theorem cover_1607069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607069 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1607069)
  decide +kernel
#print axioms cover_1607069

def state_1607082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 101)))
def hex_1607082 : String := "40064241060906"
theorem cover_1607082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1607082)
  decide +kernel
#print axioms cover_1607082

def state_1607089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 50)))
def hex_1607089 : String := "4143440906064344400642414308064344404241050A050A400608064105064006424106434440060806060606"
theorem cover_1607089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1607089)
  decide +kernel
#print axioms cover_1607089

def state_1607134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 51)))
def hex_1607134 : String := "400642414344400642410643440805060606064344404241060606420541064305064006050606"
theorem cover_1607134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1607134)
  decide +kernel
#print axioms cover_1607134

def state_1607173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 25)))
def hex_1607173 : String := "444006424106060606"
theorem cover_1607173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1607173)
  decide +kernel
#print axioms cover_1607173

def state_1607182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
def hex_1607182 : String := "06"
theorem cover_1607182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1607182)
  decide +kernel
#print axioms cover_1607182

def state_1607187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
def hex_1607187 : String := "41424344084207060606420807"
theorem cover_1607187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1607187)
  decide +kernel
#print axioms cover_1607187

def state_1607205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
def hex_1607205 : String := "420841434440074208410707400742070744080608"
theorem cover_1607205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1607205)
  decide +kernel
#print axioms cover_1607205

def state_1607227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 100)))
def hex_1607227 : String := "09"
theorem cover_1607227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1607227)
  decide +kernel
#print axioms cover_1607227
end Mub6.Numerical.CircleFullD0.Forest
