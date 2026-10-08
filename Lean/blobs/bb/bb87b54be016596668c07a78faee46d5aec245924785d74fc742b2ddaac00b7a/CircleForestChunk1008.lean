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
def state_1542299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
def hex_1542299 : String := "40424406430641400506050606"
theorem cover_1542299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1542299)
  decide +kernel
#print axioms cover_1542299

def state_1542312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 45)))
def hex_1542312 : String := "43074107404244430641400507050707420606"
theorem cover_1542312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1542312)
  decide +kernel
#print axioms cover_1542312

def state_1542331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 22)))
def hex_1542331 : String := "4443064140424443064107060707070607"
theorem cover_1542331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1542331)
  decide +kernel
#print axioms cover_1542331

def state_1542348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
def hex_1542348 : String := "4244060706"
theorem cover_1542348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1542348)
  decide +kernel
#print axioms cover_1542348

def state_1542353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
def hex_1542353 : String := "4042060606"
theorem cover_1542353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1542353)
  decide +kernel
#print axioms cover_1542353

def state_1542358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 23)))
def hex_1542358 : String := "43074107444042430641444005060705070607"
theorem cover_1542358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1542358)
  decide +kernel
#print axioms cover_1542358

def state_1542380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 10)))
def hex_1542380 : String := "400905"
theorem cover_1542380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1542380)
  decide +kernel
#print axioms cover_1542380

def state_1542386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 20)))
def hex_1542386 : String := "41430540424105090942410543054440094241050805050543094009424309414409090909"
theorem cover_1542386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_1542386)
  decide +kernel
#print axioms cover_1542386

def state_1542423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 21)))
def hex_1542423 : String := "414305054309404244090909424443094105094305410540094244050505440905"
theorem cover_1542423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1542423)
  decide +kernel
#print axioms cover_1542423

def state_1542456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 10)))
def hex_1542456 : String := "4409410509"
theorem cover_1542456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1542456)
  decide +kernel
#print axioms cover_1542456

def state_1542461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 10)))
def hex_1542461 : String := "4244414305404241054305050505430640424306414406060606064105430540424443054105060505054441050605"
theorem cover_1542461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1542461)
  decide +kernel
#print axioms cover_1542461

def state_1542508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 10)))
def hex_1542508 : String := "4306404244090909420606"
theorem cover_1542508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1542508)
  decide +kernel
#print axioms cover_1542508

def state_1542520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 11)))
def hex_1542520 : String := "4307404442410543074044420A05074442070507050707"
theorem cover_1542520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542520 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_1542520)
  decide +kernel
#print axioms cover_1542520
end Mub6.Numerical.CircleFullD0.Forest
