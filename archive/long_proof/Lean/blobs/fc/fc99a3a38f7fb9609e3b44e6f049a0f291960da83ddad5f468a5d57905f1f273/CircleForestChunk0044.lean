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
def state_10456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 9)))
def hex_10456 : String := "4440434441050805054344410A4208084105420508440A0505"
theorem cover_10456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_10456)
  decide +kernel
#print axioms cover_10456

def state_10481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_10481 : String := "410542054440054341420544400543070505090505"
theorem cover_10481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_10481)
  decide +kernel
#print axioms cover_10481

def state_10502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
def hex_10502 : String := "444105420543400544410942434005440805050A050505"
theorem cover_10502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_10502)
  decide +kernel
#print axioms cover_10502

def state_10528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_10528 : String := "4042434409070909424344094107400742440807074409410740074243440907070709"
theorem cover_10528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_10528)
  decide +kernel
#print axioms cover_10528

def state_10564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_10564 : String := "42434406074441094243060806074306440607"
theorem cover_10564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_10564)
  decide +kernel
#print axioms cover_10564

def state_10586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 8)))
def hex_10586 : String := "4140424344064107060906424344054108054409410940090909400642430544054006424143050A050505"
theorem cover_10586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_10586)
  decide +kernel
#print axioms cover_10586

def state_10630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
def hex_10630 : String := "404207074244434107400708414007084007424443070A0707074443070707"
theorem cover_10630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_10630)
  decide +kernel
#print axioms cover_10630
end Mub6.Numerical.CircleFullPrototype.Forest
