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
def state_1572352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_1572352 : String := "42440A05444143420A44400A07400A43070A0A43420A44400A4143060743060A400A05420A0A414342400A0540440A0A4405050A434205404405050505"
theorem cover_1572352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1572352)
  decide +kernel
#print axioms cover_1572352

def state_1572413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_1572413 : String := "4205444143074042050A05434042054405050540420544410705050505"
theorem cover_1572413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1572413)
  decide +kernel
#print axioms cover_1572413

def state_1572442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_1572442 : String := "40420541434442054006050606434405090505"
theorem cover_1572442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1572442)
  decide +kernel
#print axioms cover_1572442

def state_1572461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1572461 : String := "42430544400A070543444041420543054442054406050505054005054440414205444342054408050A0542054408054142054443054042050505050505"
theorem cover_1572461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1572461)
  decide +kernel
#print axioms cover_1572461

def state_1572526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1572526 : String := "42430944424306400506094243094409090909"
theorem cover_1572526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1572526)
  decide +kernel
#print axioms cover_1572526

def state_1572547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_1572547 : String := "4441090709"
theorem cover_1572547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1572547)
  decide +kernel
#print axioms cover_1572547

def state_1572553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_1572553 : String := "4142430640090643094009440A0942430940094441060606430740094441430942060543074240440809064007440A094109430709"
theorem cover_1572553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1572553)
  decide +kernel
#print axioms cover_1572553
end Mub6.Numerical.CircleFullD0.Forest
