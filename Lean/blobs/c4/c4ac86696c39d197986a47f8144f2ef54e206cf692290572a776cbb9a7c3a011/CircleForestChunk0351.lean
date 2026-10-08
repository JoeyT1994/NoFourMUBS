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
def state_1021639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 101)))
def hex_1021639 : String := "42414044080744430842410506084342050742050740064408430842060841400744080708"
theorem cover_1021639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1021639)
  decide +kernel
#print axioms cover_1021639

def state_1021679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1021679 : String := "444342064107060A434206070A"
theorem cover_1021679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1021679)
  decide +kernel
#print axioms cover_1021679

def state_1021693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 202)))
def hex_1021693 : String := "4342414006050641400744430742050743050740084408430842060842414006440A050641400A440A0A0A"
theorem cover_1021693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1021693)
  decide +kernel
#print axioms cover_1021693

def state_1021736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 203)))
def hex_1021736 : String := "434241050641074007444307420507074241400605064140074443070A070A"
theorem cover_1021736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1021736)
  decide +kernel
#print axioms cover_1021736

def state_1021767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1021767 : String := "4006444342060806434206414006440606060A"
theorem cover_1021767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1021767)
  decide +kernel
#print axioms cover_1021767

def state_1021786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
def hex_1021786 : String := "41404443070707444342410708074241400744430707070A07430742410740074407070740440843070A444308420A0843424140074408070807420A0A"
theorem cover_1021786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1021786)
  decide +kernel
#print axioms cover_1021786

def state_1021848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
def hex_1021848 : String := "43424140440843080909090842414044094309090909414044084308090909"
theorem cover_1021848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1021848)
  decide +kernel
#print axioms cover_1021848
end Mub6.Numerical.CircleFullD0.Forest
