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
def state_274378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 17)))
def hex_274378 : String := "4244404105434244070505420705410743420944070A42070740050A4440054105434244074005074407050740054105430505"
theorem cover_274378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_274378)
  decide +kernel
#print axioms cover_274378

def state_274429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 17)))
def hex_274429 : String := "424440070708440740054105430505"
theorem cover_274429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_274429)
  decide +kernel
#print axioms cover_274429

def state_274448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 34)))
def hex_274448 : String := "4143424409404105090944404105090940410543050541430505430909424409400609444007074041050641074309094309420944094140060909"
theorem cover_274448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_274448)
  decide +kernel
#print axioms cover_274448

def state_274507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 34)))
def hex_274507 : String := "41430942094409404107090909"
theorem cover_274507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_274507)
  decide +kernel
#print axioms cover_274507

def state_274522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 90) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 35)))
def hex_274522 : String := "4344424041054305050A4005410543054442090505420A0544424006410606400541054344420605054406054240050805"
theorem cover_274522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_274522)
  decide +kernel
#print axioms cover_274522

def state_274572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 91) else (if j.val < 3 then 34 else (if j.val < 4 then 112 else 35)))
def hex_274572 : String := "44424140060909414043054442060505430A4409420941050840080942410A074140050A07"
theorem cover_274572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_274572)
  decide +kernel
#print axioms cover_274572
end Mub6.Numerical.CircleFullPrototype.Forest
