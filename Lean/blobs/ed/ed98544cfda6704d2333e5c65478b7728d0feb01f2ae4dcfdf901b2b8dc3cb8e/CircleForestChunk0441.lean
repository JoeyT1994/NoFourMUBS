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
def state_181464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 100) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
def hex_181464 : String := "44434208064208410907434241404408430A0508400A0841404443060996444306089640440607440696424140050507414007444308079607"
theorem cover_181464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_181464)
  decide +kernel
#print axioms cover_181464

def state_181521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 100) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
def hex_181521 : String := "44084342084140440896084044069608420841404408960808"
theorem cover_181521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_181521)
  decide +kernel
#print axioms cover_181521

def state_181546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 101) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
def hex_181546 : String := "404443060743420706074408434208410805420707"
theorem cover_181546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_181546)
  decide +kernel
#print axioms cover_181546

def state_181567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 61 else 59)))
def hex_181567 : String := "4241404407050807414044070744084342084108070707"
theorem cover_181567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_181567)
  decide +kernel
#print axioms cover_181567

def state_181590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
def hex_181590 : String := "44084342084108084208410808"
theorem cover_181590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_181590)
  decide +kernel
#print axioms cover_181590

def state_181603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
def hex_181603 : String := "404443080743424108074140074405070507440843420841080508"
theorem cover_181603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_181603)
  decide +kernel
#print axioms cover_181603

def state_181630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 31 else 29)))
def hex_181630 : String := "4241080741404407434207070744084308064007440707"
theorem cover_181630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_181630)
  decide +kernel
#print axioms cover_181630

def state_181654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 14)))
def hex_181654 : String := "4443060943414240094409434142400944094341090609094240074405070509094240074405070509"
theorem cover_181654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 41) (hex := hex_181654)
  decide +kernel
#print axioms cover_181654

def state_181696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 28)))
def hex_181696 : String := "43414240060A0505410905"
theorem cover_181696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_181696)
  decide +kernel
#print axioms cover_181696

def state_181712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 58)))
def hex_181712 : String := "4306410909"
theorem cover_181712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_181712)
  decide +kernel
#print axioms cover_181712
end Mub6.Numerical.CircleFullPrototype.Forest
