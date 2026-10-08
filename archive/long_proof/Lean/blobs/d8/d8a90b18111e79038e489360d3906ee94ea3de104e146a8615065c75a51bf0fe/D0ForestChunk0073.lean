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
def state_954962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_954962 : String := "4142440805440843060542C7440843400641080805"
theorem cover_954962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_954962)
  decide +kernel
#print axioms cover_954962

def state_954984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_954984 : String := "42444340084208080505444340080808434041054205440805410A42C70A05"
theorem cover_954984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954984 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_954984)
  decide +kernel
#print axioms cover_954984

def state_955015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_955015 : String := "42C74443080843404142C7084208084142C70942C7094041050841420505420808"
theorem cover_955015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_955015)
  decide +kernel
#print axioms cover_955015

def state_955048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_955048 : String := "40410542054306054142050542C7434440410542C706410A42C7430A44400509050505"
theorem cover_955048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955048 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_955048)
  decide +kernel
#print axioms cover_955048

def state_955083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 54)))
def hex_955083 : String := "4440054105420544080505"
theorem cover_955083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_955083)
  decide +kernel
#print axioms cover_955083

def state_955095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 54)))
def hex_955095 : String := "C7"
theorem cover_955095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_955095)
  decide +kernel
#print axioms cover_955095

def state_955098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
def hex_955098 : String := "404142C744084308080A4142C74408434041080809400841080842C74408430908"
theorem cover_955098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_955098)
  decide +kernel
#print axioms cover_955098

def state_955132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_955132 : String := "4142C7434440064106070644400541054205050542C743440706444007414208070807"
theorem cover_955132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_955132)
  decide +kernel
#print axioms cover_955132

def state_955169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 109)))
def hex_955169 : String := "C7"
theorem cover_955169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_955169)
  decide +kernel
#print axioms cover_955169

def state_955171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 211 else (if j.val < 4 then 144 else 109)))
def hex_955171 : String := "44404142C7430644080542C743074407074142C74309440940050A42C7094006410A42C743064440060A05"
theorem cover_955171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_955171)
  decide +kernel
#print axioms cover_955171
end Mub6.Numerical.CircleFullD0.Forest
