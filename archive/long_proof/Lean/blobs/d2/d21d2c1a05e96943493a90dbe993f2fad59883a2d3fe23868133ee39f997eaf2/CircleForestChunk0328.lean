import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_154132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
def hex_154132 : String := "40414243070A43070A42430544060A43444041070505074440410A060A40410A4342054005050A0A41074243050A4305440A07"
theorem cover_154132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_154132)
  decide +kernel
#print axioms cover_154132

def state_154183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_154183 : String := "4041074207430544404107430508070707"
theorem cover_154183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_154183)
  decide +kernel
#print axioms cover_154183

def state_154200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
def hex_154200 : String := "444344404142060A0641420644060A0640410A4209430A0A410A0A444041090641420643060906400941094209430A0943400A0A400941090A"
theorem cover_154200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_154200)
  decide +kernel
#print axioms cover_154200

def state_154258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_154258 : String := "434406414205050544064142430A400A44060A430A0A06"
theorem cover_154258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_154258)
  decide +kernel
#print axioms cover_154258

def state_154281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_154281 : String := "434441440640420543054144064043050605050544060541404205050505444143064406404206080606414340420808420544410A05050843404205050508"
theorem cover_154281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_154281)
  decide +kernel
#print axioms cover_154281
end Mub6.Numerical.CircleFullPrototype.Forest
