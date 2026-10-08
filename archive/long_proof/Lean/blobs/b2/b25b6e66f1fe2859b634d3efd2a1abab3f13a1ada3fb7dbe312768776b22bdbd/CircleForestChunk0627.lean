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
def state_389402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
def hex_389402 : String := "41434407420707074308440742084041070806"
theorem cover_389402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_389402)
  decide +kernel
#print axioms cover_389402

def state_389421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 23)))
def hex_389421 : String := "4244074041070A07440740410743444207400607420A400A41070A0A07"
theorem cover_389421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_389421)
  decide +kernel
#print axioms cover_389421

def state_389450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_389450 : String := "43084208440A400A4143080A08"
theorem cover_389450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_389450)
  decide +kernel
#print axioms cover_389450

def state_389464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 22)))
def hex_389464 : String := "41434009050505"
theorem cover_389464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_389464)
  decide +kernel
#print axioms cover_389464

def state_389474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 46)))
def hex_389474 : String := "404241434405400905074309440540050509420705"
theorem cover_389474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_389474)
  decide +kernel
#print axioms cover_389474

def state_389497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 47)))
def hex_389497 : String := "4143444042410743094407400907090AB5444042070707B54344400909B544404241434405404241070805050743094405400A054105054241050505B5"
theorem cover_389497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_389497)
  decide +kernel
#print axioms cover_389497

def state_389558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 47)))
def hex_389558 : String := "41430A44050843094405404241430505050505"
theorem cover_389558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_389558)
  decide +kernel
#print axioms cover_389558

def state_389577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 47)))
def hex_389577 : String := "4241430A0743440506440542404107050505410A05"
theorem cover_389577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_389577)
  decide +kernel
#print axioms cover_389577

def state_389598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 23)))
def hex_389598 : String := "444042070505404241434406400607064344400605404241060A410643B50642410743B5070506410843440540080505420705"
theorem cover_389598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_389598)
  decide +kernel
#print axioms cover_389598
end Mub6.Numerical.CircleFullPrototype.Forest
