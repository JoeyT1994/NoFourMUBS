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
def state_2303930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
def hex_2303930 : String := "43420644404143060706060642074440070A4041434207440740070607070A"
theorem cover_2303930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2303930)
  decide +kernel
#print axioms cover_2303930

def state_2303961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
def hex_2303961 : String := "4441050A41430A420A4044050A050A"
theorem cover_2303961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2303961)
  decide +kernel
#print axioms cover_2303961

def state_2303976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
def hex_2303976 : String := "43064206404407414306070606"
theorem cover_2303976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2303976)
  decide +kernel
#print axioms cover_2303976

def state_2303991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
def hex_2303991 : String := "06"
theorem cover_2303991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2303991)
  decide +kernel
#print axioms cover_2303991

def state_2303993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 23)))
def hex_2303993 : String := "444041430642440A06444041430A07070A400506060640414306050506"
theorem cover_2303993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2303993)
  decide +kernel
#print axioms cover_2303993

def state_2304027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 46)))
def hex_2304027 : String := "4440414306420644404143060A060606060606"
theorem cover_2304027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2304027)
  decide +kernel
#print axioms cover_2304027

def state_2304048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
def hex_2304048 : String := "414342064440C40606424440C4410A0640414306424409060906064440C441074206064041074243064406064306070743064206444041C4060606"
theorem cover_2304048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304048 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2304048)
  decide +kernel
#print axioms cover_2304048

def state_2304107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
def hex_2304107 : String := "41430642060706"
theorem cover_2304107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2304107)
  decide +kernel
#print axioms cover_2304107

def state_2304114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 93)))
def hex_2304114 : String := "4041430642444041090506064440410742060606070606"
theorem cover_2304114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2304114)
  decide +kernel
#print axioms cover_2304114

def state_2304142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 110 else 92)))
def hex_2304142 : String := "42440A40050644404143420A440A0A420A44404109050A4005090A0A4041434205444005090505050A"
theorem cover_2304142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2304142)
  decide +kernel
#print axioms cover_2304142
end Mub6.Numerical.CircleFullD0.Forest
