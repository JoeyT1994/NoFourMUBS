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
def state_1048987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
def hex_1048987 : String := "430944404143094206090909404143424409070742444007060707430942440907074143080809"
theorem cover_1048987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048987 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1048987)
  decide +kernel
#print axioms cover_1048987

def state_1049026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_1049026 : String := "414208084243090609"
theorem cover_1049026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1049026)
  decide +kernel
#print axioms cover_1049026

def state_1049037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 7)))
def hex_1049037 : String := "440940420541430544054005050505"
theorem cover_1049037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1049037)
  decide +kernel
#print axioms cover_1049037

def state_1049053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
def hex_1049053 : String := "4042074143094406060907"
theorem cover_1049053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1049053)
  decide +kernel
#print axioms cover_1049053

def state_1049066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 15)))
def hex_1049066 : String := "4143070707"
theorem cover_1049066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1049066)
  decide +kernel
#print axioms cover_1049066

def state_1049073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 15)))
def hex_1049073 : String := "4440420509054042414305070541430544094042414305440505050942050909420509"
theorem cover_1049073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1049073)
  decide +kernel
#print axioms cover_1049073

def state_1049109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 30)))
def hex_1049109 : String := "40420741434406060643080606"
theorem cover_1049109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1049109)
  decide +kernel
#print axioms cover_1049109

def state_1049124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 31)))
def hex_1049124 : String := "41430707430707"
theorem cover_1049124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1049124)
  decide +kernel
#print axioms cover_1049124

def state_1049134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
def hex_1049134 : String := "4042410707414309060906"
theorem cover_1049134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1049134)
  decide +kernel
#print axioms cover_1049134

def state_1049145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
def hex_1049145 : String := "404241434407404207840744064042070A064344074008054406400806414344404241430506080909844406844309440640080642074143090609"
theorem cover_1049145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1049145)
  decide +kernel
#print axioms cover_1049145

def state_1049204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 31)))
def hex_1049204 : String := "44064042060606"
theorem cover_1049204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1049204)
  decide +kernel
#print axioms cover_1049204

def state_1049211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 31)))
def hex_1049211 : String := "434409404208080944064042080806"
theorem cover_1049211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1049211)
  decide +kernel
#print axioms cover_1049211

def state_1049226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
def hex_1049226 : String := "42074106430706"
theorem cover_1049226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1049226)
  decide +kernel
#print axioms cover_1049226

def state_1049233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
def hex_1049233 : String := "4309444008074042430708430808420709"
theorem cover_1049233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1049233)
  decide +kernel
#print axioms cover_1049233
end Mub6.Numerical.CircleFullD0.Forest
