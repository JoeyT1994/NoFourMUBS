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
def state_1565054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 90)))
def hex_1565054 : String := "434140444243050506424306054306410705060641404405054442054306050905"
theorem cover_1565054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565054 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1565054)
  decide +kernel
#print axioms cover_1565054

def state_1565088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 107 else (if j.val < 4 then 84 else 90)))
def hex_1565088 : String := "41404406070606"
theorem cover_1565088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1565088)
  decide +kernel
#print axioms cover_1565088

def state_1565096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 124) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 90)))
def hex_1565096 : String := "4044434241404405430605060506420541404408080A05434241400707054107064241400509054108400544050844430642060643064209410706"
theorem cover_1565096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1565096)
  decide +kernel
#print axioms cover_1565096

def state_1565155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 125) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 90)))
def hex_1565155 : String := "40440543060506"
theorem cover_1565155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565155 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1565155)
  decide +kernel
#print axioms cover_1565155

def state_1565162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 91)))
def hex_1565162 : String := "42434144400707074440050640070641444042054341070505090905434107440607414440430742080807074440434205060543064205064043070507"
theorem cover_1565162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565162 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1565162)
  decide +kernel
#print axioms cover_1565162

def state_1565223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
def hex_1565223 : String := "4044054205430505444205064205430605"
theorem cover_1565223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1565223)
  decide +kernel
#print axioms cover_1565223

def state_1565240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 45)))
def hex_1565240 : String := "41404443050543420541080505444342054140444305054342050805440A09050543420541444043080509094405050905"
theorem cover_1565240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1565240)
  decide +kernel
#print axioms cover_1565240
end Mub6.Numerical.CircleFullD0.Forest
