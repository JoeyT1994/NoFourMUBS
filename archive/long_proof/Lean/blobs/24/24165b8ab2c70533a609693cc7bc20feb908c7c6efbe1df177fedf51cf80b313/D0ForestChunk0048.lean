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
def state_948988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 207 else (if j.val < 4 then 69 else 108)))
def hex_948988 : String := "41444306400642410606060644430540060506"
theorem cover_948988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948988 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_948988)
  decide +kernel
#print axioms cover_948988

def state_949009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 108)))
def hex_949009 : String := "4443404205050540424144070744050741444305070A4405430540420705054207410705430A4042410944430A07060A0A"
theorem cover_949009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_949009)
  decide +kernel
#print axioms cover_949009

def state_949058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 108)))
def hex_949058 : String := "444305404205050543054042414443050743060844054305400905414405060542410705410A05"
theorem cover_949058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_949058)
  decide +kernel
#print axioms cover_949058

def state_949097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 207 else (if j.val < 4 then 69 else 108)))
def hex_949097 : String := "4144430540424144050605410A0542410A05050A44054305404241060506420505"
theorem cover_949097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_949097)
  decide +kernel
#print axioms cover_949097

def state_949130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 109)))
def hex_949130 : String := "4306400642410A4443084042080608060A"
theorem cover_949130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_949130)
  decide +kernel
#print axioms cover_949130

def state_949148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 108)))
def hex_949148 : String := "4305404241440543054042410605064241440505050505414405430540060505420505"
theorem cover_949148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949148 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_949148)
  decide +kernel
#print axioms cover_949148

def state_949183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 109)))
def hex_949183 : String := "4340060540424106444305400605060642414443054042410805410605420805084405430540420806084144430540060506440505"
theorem cover_949183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_949183)
  decide +kernel
#print axioms cover_949183
end Mub6.Numerical.CircleFullD0.Forest
