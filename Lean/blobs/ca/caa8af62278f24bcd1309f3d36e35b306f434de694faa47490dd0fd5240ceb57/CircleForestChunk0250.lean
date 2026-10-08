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
def state_135374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 44 else (if j.val < 4 then 26 else 27)))
def hex_135374 : String := "430A44404142094307444009410509090941420543074405050A09"
theorem cover_135374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_135374)
  decide +kernel
#print axioms cover_135374

def state_135402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 52 else 27)))
def hex_135402 : String := "07"
theorem cover_135402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_135402)
  decide +kernel
#print axioms cover_135402

def state_135405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 54)))
def hex_135405 : String := "41424307444007410742090707074209430744400941070909"
theorem cover_135405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_135405)
  decide +kernel
#print axioms cover_135405

def state_135430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 54)))
def hex_135430 : String := "41424307444041074243078D074105420507070742430A444041420943078D090A094307444041074243068D43068D414243068D06420606400707"
theorem cover_135430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_135430)
  decide +kernel
#print axioms cover_135430

def state_135489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 55)))
def hex_135489 : String := "4009410709"
theorem cover_135489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_135489)
  decide +kernel
#print axioms cover_135489

def state_135496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
def hex_135496 : String := "414244084340410A084142050A08080A4208440843400A410A42080A0A"
theorem cover_135496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_135496)
  decide +kernel
#print axioms cover_135496

def state_135526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
def hex_135526 : String := "424408434041050805084409434042410A440843400A42050A0A0A4241054408430505090A"
theorem cover_135526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_135526)
  decide +kernel
#print axioms cover_135526

def state_135564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 44 else (if j.val < 4 then 27 else 26)))
def hex_135564 : String := "08"
theorem cover_135564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_135564)
  decide +kernel
#print axioms cover_135564

def state_135566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 52)))
def hex_135566 : String := "08"
theorem cover_135566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_135566)
  decide +kernel
#print axioms cover_135566

def state_135569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 53)))
def hex_135569 : String := "414244084340084142080A08080A4208440843400A4142080A42080A0A"
theorem cover_135569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_135569)
  decide +kernel
#print axioms cover_135569
end Mub6.Numerical.CircleFullPrototype.Forest
