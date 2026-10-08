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
def state_275779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
def hex_275779 : String := "41054344424105400543050505054442060505"
theorem cover_275779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_275779)
  decide +kernel
#print axioms cover_275779

def state_275799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
def hex_275799 : String := "4344420A05054442080505"
theorem cover_275799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_275799)
  decide +kernel
#print axioms cover_275799

def state_275811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 18)))
def hex_275811 : String := "444240414305054307444206410507070A404105430544424105070505410A430A444240410A070A404105070A0A420A40050A"
theorem cover_275811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_275811)
  decide +kernel
#print axioms cover_275811

def state_275864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 36)))
def hex_275864 : String := "404108434406060641084344420840410606080808"
theorem cover_275864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_275864)
  decide +kernel
#print axioms cover_275864

def state_275886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
def hex_275886 : String := "41054344424105400543050605054442060505"
theorem cover_275886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_275886)
  decide +kernel
#print axioms cover_275886

def state_275906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 90) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
def hex_275906 : String := "43444208050508"
theorem cover_275906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_275906)
  decide +kernel
#print axioms cover_275906

def state_275914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 35 else (if j.val < 4 then 114 else 36)))
def hex_275914 : String := "444240414305084344D90744D94206074108430A44D908404105430909414309094344D90744D90942404105070A09"
theorem cover_275914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_275914)
  decide +kernel
#print axioms cover_275914

def state_275961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 35 else (if j.val < 4 then 115 else 36)))
def hex_275961 : String := "44424041060608400941084344D90944D908420809"
theorem cover_275961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_275961)
  decide +kernel
#print axioms cover_275961

def state_275982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 37)))
def hex_275982 : String := "4240080809"
theorem cover_275982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275982 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_275982)
  decide +kernel
#print axioms cover_275982

def state_275987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 19)))
def hex_275987 : String := "4240050840054105430A09"
theorem cover_275987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_275987)
  decide +kernel
#print axioms cover_275987
end Mub6.Numerical.CircleFullPrototype.Forest
