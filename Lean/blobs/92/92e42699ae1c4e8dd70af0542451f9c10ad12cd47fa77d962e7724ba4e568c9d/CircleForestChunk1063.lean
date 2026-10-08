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
def state_1555429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1555429 : String := "424441430540420905054306404208060641054305404244090944410506054209054441050605"
theorem cover_1555429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1555429)
  decide +kernel
#print axioms cover_1555429

def state_1555470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
def hex_1555470 : String := "40424341440909440A0A094341440A05440A400A0A0A4209434109440A0A09"
theorem cover_1555470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1555470)
  decide +kernel
#print axioms cover_1555470

def state_1555502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
def hex_1555502 : String := "4243414440070740420A0A0A44054007420743410A0607074341444042070A0A40420A0A420A0A4407404207434144060A06074243060706410A07"
theorem cover_1555502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1555502)
  decide +kernel
#print axioms cover_1555502

def state_1555561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
def hex_1555561 : String := "4243414409094406400A060943414406400A0606410A0A"
theorem cover_1555561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1555561)
  decide +kernel
#print axioms cover_1555561

def state_1555585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1555585 : String := "4042434409050643054409054209430509"
theorem cover_1555585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1555585)
  decide +kernel
#print axioms cover_1555585

def state_1555606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 42)))
def hex_1555606 : String := "4140420943440A0A0A0940424344070A074344410A07410A40070A0A420A43440A0A0A"
theorem cover_1555606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1555606)
  decide +kernel
#print axioms cover_1555606

def state_1555641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 43)))
def hex_1555641 : String := "414006094042444341090A09094443410A40420A0A0A0A434106404442060A06440A09064209440A09"
theorem cover_1555641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1555641)
  decide +kernel
#print axioms cover_1555641

def state_1555682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 43 else 21)))
def hex_1555682 : String := "440A09"
theorem cover_1555682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1555682)
  decide +kernel
#print axioms cover_1555682
end Mub6.Numerical.CircleFullD0.Forest
