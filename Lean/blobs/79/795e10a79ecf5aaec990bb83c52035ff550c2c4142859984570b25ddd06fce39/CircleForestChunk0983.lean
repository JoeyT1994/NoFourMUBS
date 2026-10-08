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
def state_1536363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 55) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 38)))
def hex_1536363 : String := "43404244074106074441434042064407054244070505070741430506434007424407050507424409094441434042080505094308074143050943080A400709"
theorem cover_1536363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1536363)
  decide +kernel
#print axioms cover_1536363

def state_1536426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 39)))
def hex_1536426 : String := "414305064340420644410543050605420944410543050905400609"
theorem cover_1536426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1536426)
  decide +kernel
#print axioms cover_1536426

def state_1536453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 9)))
def hex_1536453 : String := "4407400609"
theorem cover_1536453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1536453)
  decide +kernel
#print axioms cover_1536453

def state_1536458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 9)))
def hex_1536458 : String := "42094109434440420944410908410943080908404209444109430809090909"
theorem cover_1536458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1536458)
  decide +kernel
#print axioms cover_1536458

def state_1536489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
def hex_1536489 : String := "4405400909"
theorem cover_1536489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1536489)
  decide +kernel
#print axioms cover_1536489

def state_1536498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 8)))
def hex_1536498 : String := "424344400A410A420A0A40410A4243440A0A0A0A410A4243440A0A0A0A0A0A"
theorem cover_1536498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1536498)
  decide +kernel
#print axioms cover_1536498

def state_1536532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 16)))
def hex_1536532 : String := "4005420506"
theorem cover_1536532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536532 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1536532)
  decide +kernel
#print axioms cover_1536532

def state_1536538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 17)))
def hex_1536538 : String := "4241434405400742070705054143440A40080A0707"
theorem cover_1536538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1536538)
  decide +kernel
#print axioms cover_1536538

def state_1536559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 17)))
def hex_1536559 : String := "424143444042050606404243410A070743410A060A4243410A060A0A0A4344054007060541434406400A060A43060A"
theorem cover_1536559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1536559)
  decide +kernel
#print axioms cover_1536559

def state_1536606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 8)))
def hex_1536606 : String := "440540050A"
theorem cover_1536606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1536606)
  decide +kernel
#print axioms cover_1536606

def state_1536611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 8)))
def hex_1536611 : String := "43440640410809410A060A"
theorem cover_1536611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1536611)
  decide +kernel
#print axioms cover_1536611
end Mub6.Numerical.CircleFullD0.Forest
