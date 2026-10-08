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
def state_1598776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
def hex_1598776 : String := "4341444206404306090642054043060705064144424008064043080843064109084240080540430707434144060505414442400705070744070508"
theorem cover_1598776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598776 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1598776)
  decide +kernel
#print axioms cover_1598776

def state_1598835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 101)))
def hex_1598835 : String := "4240050540434107054107074305414442054007050505"
theorem cover_1598835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598835 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1598835)
  decide +kernel
#print axioms cover_1598835

def state_1598861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 100)))
def hex_1598861 : String := "40410A08414344420A4009410909420A400A410A0A0A43440A0A08"
theorem cover_1598861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1598861)
  decide +kernel
#print axioms cover_1598861

def state_1598889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
def hex_1598889 : String := "41094344090708"
theorem cover_1598889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1598889)
  decide +kernel
#print axioms cover_1598889

def state_1598897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
def hex_1598897 : String := "43440942400941090909440942400641060906"
theorem cover_1598897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598897 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1598897)
  decide +kernel
#print axioms cover_1598897

def state_1598917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 100)))
def hex_1598917 : String := "4442404308084341094408084109084009094240434107070843414409420A09440A05410A0A404307074341094409074109440707"
theorem cover_1598917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1598917)
  decide +kernel
#print axioms cover_1598917

def state_1598970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 119 else 100)))
def hex_1598970 : String := "44420A400509420A40064106430706"
theorem cover_1598970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1598970)
  decide +kernel
#print axioms cover_1598970

def state_1598986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 101)))
def hex_1598986 : String := "40410A08414344420A400A0A4205400A050A43440A050A"
theorem cover_1598986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1598986)
  decide +kernel
#print axioms cover_1598986

def state_1599010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
def hex_1599010 : String := "410607"
theorem cover_1599010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1599010)
  decide +kernel
#print axioms cover_1599010
end Mub6.Numerical.CircleFullD0.Forest
