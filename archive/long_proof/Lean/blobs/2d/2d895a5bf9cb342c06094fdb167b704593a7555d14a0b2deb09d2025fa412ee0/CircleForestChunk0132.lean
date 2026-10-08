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
def state_969204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 56)))
def hex_969204 : String := "444340414208084244430809084443074007080741084208084041094209440A09410806430808"
theorem cover_969204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_969204)
  decide +kernel
#print axioms cover_969204

def state_969243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 56)))
def hex_969243 : String := "444340410707410842080740414244430705050742444307060707414208084244060844430806084308400708"
theorem cover_969243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_969243)
  decide +kernel
#print axioms cover_969243

def state_969289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 56)))
def hex_969289 : String := "4443404142440A430808440A07420A0A414244060844060842064406430806400A0643404108420807084041094209074108420608"
theorem cover_969289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_969289)
  decide +kernel
#print axioms cover_969289

def state_969342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 56)))
def hex_969342 : String := "44434007414244430506070742440507074041424407070707414206440607420606430740074108420807"
theorem cover_969342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_969342)
  decide +kernel
#print axioms cover_969342

def state_969385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
def hex_969385 : String := "41424443080608444308404108060608424406430806444340414208084206050606430808"
theorem cover_969385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_969385)
  decide +kernel
#print axioms cover_969385
end Mub6.Numerical.CircleFullD0.Forest
