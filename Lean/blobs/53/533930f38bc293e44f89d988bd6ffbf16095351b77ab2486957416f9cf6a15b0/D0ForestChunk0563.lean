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
def state_1324025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 32 else 51)))
def hex_1324025 : String := "44414240050A050541424043B744410805414243B708084243B708054344410A05414240B70740B70607440A41420A0A0A40054305084240050705"
theorem cover_1324025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1324025)
  decide +kernel
#print axioms cover_1324025

def state_1324084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 33 else 51)))
def hex_1324084 : String := "440A41424340080A0808424340060A0608"
theorem cover_1324084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1324084)
  decide +kernel
#print axioms cover_1324084

def state_1324101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 51)))
def hex_1324101 : String := "43440A41424043070A074043090A0707440A410A0A"
theorem cover_1324101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1324101)
  decide +kernel
#print axioms cover_1324101

def state_1324122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 16 else 51)))
def hex_1324122 : String := "404305084344054106050A"
theorem cover_1324122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1324122)
  decide +kernel
#print axioms cover_1324122

def state_1324133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 51)))
def hex_1324133 : String := "42404305440542060543070A05"
theorem cover_1324133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324133 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1324133)
  decide +kernel
#print axioms cover_1324133

def state_1324146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 25)))
def hex_1324146 : String := "440A41420A08420A08"
theorem cover_1324146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324146 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1324146)
  decide +kernel
#print axioms cover_1324146

def state_1324155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 25)))
def hex_1324155 : String := "43440A41420A0A4207070A"
theorem cover_1324155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324155 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1324155)
  decide +kernel
#print axioms cover_1324155

def state_1324166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 25)))
def hex_1324166 : String := "404305084344054106050A"
theorem cover_1324166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1324166)
  decide +kernel
#print axioms cover_1324166

def state_1324177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 25)))
def hex_1324177 : String := "42404305440542060543070A400543050A"
theorem cover_1324177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1324177)
  decide +kernel
#print axioms cover_1324177

def state_1324194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 12)))
def hex_1324194 : String := "440A41420A08420A0A"
theorem cover_1324194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1324194)
  decide +kernel
#print axioms cover_1324194

def state_1324203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_1324203 : String := "43440A41420A0A42070A0A"
theorem cover_1324203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1324203)
  decide +kernel
#print axioms cover_1324203

def state_1324229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 32 else 104)))
def hex_1324229 : String := "4043B741424443B70809084209084341424440B7060606074142444043B7410808434106070A400905444008060642444009070944400807400806"
theorem cover_1324229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1324229)
  decide +kernel
#print axioms cover_1324229
end Mub6.Numerical.CircleFullD0.Forest
