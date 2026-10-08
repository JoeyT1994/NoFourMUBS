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
def state_1547323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 86)))
def hex_1547323 : String := "44430841404208080808434140424408430508440505080841404209444109430808410543050609404244084308084408430841090808"
theorem cover_1547323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1547323)
  decide +kernel
#print axioms cover_1547323

def state_1547378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 86)))
def hex_1547378 : String := "444308414042440808440889080889"
theorem cover_1547378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1547378)
  decide +kernel
#print axioms cover_1547378

def state_1547393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
def hex_1547393 : String := "4208440889"
theorem cover_1547393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1547393)
  decide +kernel
#print axioms cover_1547393

def state_1547399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 87)))
def hex_1547399 : String := "4105400707"
theorem cover_1547399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1547399)
  decide +kernel
#print axioms cover_1547399

def state_1547405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1547405 : String := "40424405050505"
theorem cover_1547405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1547405)
  decide +kernel
#print axioms cover_1547405

def state_1547415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 174)))
def hex_1547415 : String := "4341074042444308080744430541050807420807414042064409050940424409094443414042090507404208080809434105400707094209440809"
theorem cover_1547415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1547415)
  decide +kernel
#print axioms cover_1547415

def state_1547474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 175)))
def hex_1547474 : String := "430741074042060707"
theorem cover_1547474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1547474)
  decide +kernel
#print axioms cover_1547474

def state_1547483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 87)))
def hex_1547483 : String := "89"
theorem cover_1547483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547483 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1547483)
  decide +kernel
#print axioms cover_1547483

def state_1547484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1547484 : String := "42444307090789"
theorem cover_1547484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1547484)
  decide +kernel
#print axioms cover_1547484

def state_1547491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
def hex_1547491 : String := "4244430808430709444308410508430541054042070507"
theorem cover_1547491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1547491)
  decide +kernel
#print axioms cover_1547491

def state_1547516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 41 else 43)))
def hex_1547516 : String := "440909"
theorem cover_1547516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1547516)
  decide +kernel
#print axioms cover_1547516

def state_1547521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 86)))
def hex_1547521 : String := "4340420944410943404209444105430506050909090909"
theorem cover_1547521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_1547521)
  decide +kernel
#print axioms cover_1547521

def state_1547547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 82 else 86)))
def hex_1547547 : String := "44410943400708074109434042094409090909"
theorem cover_1547547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1547547)
  decide +kernel
#print axioms cover_1547547
end Mub6.Numerical.CircleFullD0.Forest
