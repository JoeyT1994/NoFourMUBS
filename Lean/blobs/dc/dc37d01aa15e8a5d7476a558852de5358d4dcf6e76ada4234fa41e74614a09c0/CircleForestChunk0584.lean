import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1329006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 57 else (if j.val < 4 then 44 else 47)))
def hex_1329006 : String := "4144400843080808444009430942410809094008430908"
theorem cover_1329006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1329006)
  decide +kernel
#print axioms cover_1329006

def state_1329029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 45 else 47)))
def hex_1329029 : String := "424108440540054308054108444008434208080808"
theorem cover_1329029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1329029)
  decide +kernel
#print axioms cover_1329029

def state_1329053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 47)))
def hex_1329053 : String := "4440434207074241084440080A40080741084440080A08430742090740430742070707"
theorem cover_1329053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1329053)
  decide +kernel
#print axioms cover_1329053

def state_1329089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 94)))
def hex_1329089 : String := "4043420606424144400506400543060505414440430608064008060606"
theorem cover_1329089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1329089)
  decide +kernel
#print axioms cover_1329089

def state_1329118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 95)))
def hex_1329118 : String := "40434241070507424144400507070541444008070744404306050640080643064241070606"
theorem cover_1329118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329118 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1329118)
  decide +kernel
#print axioms cover_1329118

def state_1329155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 57 else (if j.val < 4 then 44 else 47)))
def hex_1329155 : String := "41444043054241054440080507050507444043064241440640080606060640430642410744060741050606"
theorem cover_1329155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1329155)
  decide +kernel
#print axioms cover_1329155

def state_1329199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 56 else (if j.val < 4 then 45 else 47)))
def hex_1329199 : String := "41440A43400809094443404205410A050A0A4340420541080542090A09"
theorem cover_1329199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1329199)
  decide +kernel
#print axioms cover_1329199
end Mub6.Numerical.CircleFullD0.Forest
