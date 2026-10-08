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
def state_150503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
def hex_150503 : String := "40424143060943064406404206060641074306094241060606"
theorem cover_150503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_150503)
  decide +kernel
#print axioms cover_150503

def state_150528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 27)))
def hex_150528 : String := "4042410743074440424107430644060707424107430644060707070742410743074440420606060707"
theorem cover_150528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_150528)
  decide +kernel
#print axioms cover_150528

def state_150570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 26)))
def hex_150570 : String := "404241094409434042410944064306090909090909"
theorem cover_150570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_150570)
  decide +kernel
#print axioms cover_150570

def state_150594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
def hex_150594 : String := "434409074409400808"
theorem cover_150594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_150594)
  decide +kernel
#print axioms cover_150594

def state_150606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
def hex_150606 : String := "4241434409074409400808434440428D41094306440608428D0940428D08084440428D090940428D41084308440A08428D0841430709434440080807440908"
theorem cover_150606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_150606)
  decide +kernel
#print axioms cover_150606

def state_150669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
def hex_150669 : String := "424109434409400808440940424109434409080908094108430809"
theorem cover_150669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_150669)
  decide +kernel
#print axioms cover_150669

def state_150696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 55)))
def hex_150696 : String := "400808"
theorem cover_150696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_150696)
  decide +kernel
#print axioms cover_150696

def state_150699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 27)))
def hex_150699 : String := "444042410943440940428D0A428D090A0A09404241430806434440420606428D0806060842414308094344404241084308060808084440420606090608"
theorem cover_150699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_150699)
  decide +kernel
#print axioms cover_150699
end Mub6.Numerical.CircleFullPrototype.Forest
