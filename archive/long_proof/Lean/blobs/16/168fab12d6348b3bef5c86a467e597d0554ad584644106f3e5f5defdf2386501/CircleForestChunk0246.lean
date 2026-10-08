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
def state_996479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 86)))
def hex_996479 : String := "4044434109420605410906434109420609410806444341420809424006074005440543050841084206400608434108424008084009444309080808"
theorem cover_996479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_996479)
  decide +kernel
#print axioms cover_996479

def state_996538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 86)))
def hex_996538 : String := "400644434206050643424140060706414044054305064405430542070505420641400644060806"
theorem cover_996538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_996538)
  decide +kernel
#print axioms cover_996538

def state_996577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 86)))
def hex_996577 : String := "41404443050943090944434109054109054341094240050905410942090540054405430542414005440543054208050505"
theorem cover_996577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_996577)
  decide +kernel
#print axioms cover_996577

def state_996626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 86)))
def hex_996626 : String := "4241400608064140444309090944434108420905084309084006444342060506434241400608050542064140060805"
theorem cover_996626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_996626)
  decide +kernel
#print axioms cover_996626

def state_996676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
def hex_996676 : String := "40444309094309084443410842084009080808"
theorem cover_996676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_996676)
  decide +kernel
#print axioms cover_996676

def state_996696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
def hex_996696 : String := "44434206410A0506430A0A"
theorem cover_996696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_996696)
  decide +kernel
#print axioms cover_996696
end Mub6.Numerical.CircleFullD0.Forest
