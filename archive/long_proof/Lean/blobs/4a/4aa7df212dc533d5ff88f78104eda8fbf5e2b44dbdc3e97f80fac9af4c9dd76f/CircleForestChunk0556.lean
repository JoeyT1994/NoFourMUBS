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
def state_372287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_372287 : String := "42434441074006074105400A420744430507054406414006070A434441060641420508424044060544434105420505060540064406084406410606"
theorem cover_372287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_372287)
  decide +kernel
#print axioms cover_372287

def state_372347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 11)))
def hex_372347 : String := "430707"
theorem cover_372347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_372347)
  decide +kernel
#print axioms cover_372347

def state_372351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 11)))
def hex_372351 : String := "444107074140420544070507404244074305410540420505074443094106064309410842400844070508420744070A"
theorem cover_372351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_372351)
  decide +kernel
#print axioms cover_372351

def state_372398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 11)))
def hex_372398 : String := "444107400607414042074308060740424344064107400607064344064106060642074344074107074406410707"
theorem cover_372398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_372398)
  decide +kernel
#print axioms cover_372398

def state_372445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 10)))
def hex_372445 : String := "4009420809"
theorem cover_372445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_372445)
  decide +kernel
#print axioms cover_372445

def state_372451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 11)))
def hex_372451 : String := "4241444309404208094208094305400A420A444105090544084340094208090A410909"
theorem cover_372451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_372451)
  decide +kernel
#print axioms cover_372451

def state_372487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 11)))
def hex_372487 : String := "414443080843400506404244080544414305400505080542064407064408430808"
theorem cover_372487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_372487)
  decide +kernel
#print axioms cover_372487
end Mub6.Numerical.CircleFullPrototype.Forest
