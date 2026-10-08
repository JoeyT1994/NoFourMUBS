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
def state_1002710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
def hex_1002710 : String := "4241434007444241074307070707400744424309080707434044050744424143050A05054241070A4107050A41074305400744424105050507"
theorem cover_1002710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002710 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1002710)
  decide +kernel
#print axioms cover_1002710

def state_1002767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_1002767 : String := "42410743070A07"
theorem cover_1002767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1002767)
  decide +kernel
#print axioms cover_1002767

def state_1002774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_1002774 : String := "410743424440074307070707424440074208070707"
theorem cover_1002774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1002774)
  decide +kernel
#print axioms cover_1002774

def state_1002797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
def hex_1002797 : String := "434240444106430642080606060642084044410642430608060606"
theorem cover_1002797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1002797)
  decide +kernel
#print axioms cover_1002797

def state_1002834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
def hex_1002834 : String := "420606"
theorem cover_1002834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1002834)
  decide +kernel
#print axioms cover_1002834

def state_1002837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
def hex_1002837 : String := "424106404443C6424108404443C60808084106404443C64208410640444305080606430608064342410640444306080606064208064443064208060606"
theorem cover_1002837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 61) (hex := hex_1002837)
  decide +kernel
#print axioms cover_1002837

def state_1002898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 89)))
def hex_1002898 : String := "43064241054044430608060606"
theorem cover_1002898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1002898)
  decide +kernel
#print axioms cover_1002898

def state_1002911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
def hex_1002911 : String := "06"
theorem cover_1002911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1002911)
  decide +kernel
#print axioms cover_1002911

def state_1002917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 104 else 88)))
def hex_1002917 : String := "4044C643410642400806064142404443064106424044090906060606064240444309094309414209090944090940440543064106050644430641060906"
theorem cover_1002917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1002917)
  decide +kernel
#print axioms cover_1002917
end Mub6.Numerical.CircleFullD0.Forest
