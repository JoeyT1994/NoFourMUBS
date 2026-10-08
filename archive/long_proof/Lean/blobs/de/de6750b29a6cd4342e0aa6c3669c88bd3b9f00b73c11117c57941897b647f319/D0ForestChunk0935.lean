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
def state_1524971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 176)))
def hex_1524971 : String := "4340428344080708404244084143070943834042440809440841070A08440841074307400A07420808"
theorem cover_1524971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1524971)
  decide +kernel
#print axioms cover_1524971

def state_1525012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 176)))
def hex_1525012 : String := "434042834406060640424408414383404244080544084108050806440841430A400A080608"
theorem cover_1525012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 37) (hex := hex_1525012)
  decide +kernel
#print axioms cover_1525012

def state_1525050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 177)))
def hex_1525050 : String := "4307404244410743074042090707070707"
theorem cover_1525050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525050 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1525050)
  decide +kernel
#print axioms cover_1525050

def state_1525067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 177)))
def hex_1525067 : String := "4340428307064042444143834042054441070505420907430640050641074305054441074306400A06074244060607"
theorem cover_1525067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1525067)
  decide +kernel
#print axioms cover_1525067

def state_1525114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 88)))
def hex_1525114 : String := "43404244060644060606404244414383050505444143400906400542050A0941434005060505424406414306400506064406414306404205060606"
theorem cover_1525114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1525114)
  decide +kernel
#print axioms cover_1525114

def state_1525174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 89)))
def hex_1525174 : String := "434042448307070740424441438308438305084441074340080740054205070742444143070943834042054405054209070707"
theorem cover_1525174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1525174)
  decide +kernel
#print axioms cover_1525174
end Mub6.Numerical.CircleFullD0.Forest
