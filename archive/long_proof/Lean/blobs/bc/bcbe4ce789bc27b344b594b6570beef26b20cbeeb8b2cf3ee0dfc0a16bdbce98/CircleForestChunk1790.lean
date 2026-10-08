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
def state_2302775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
def hex_2302775 : String := "4342440A40410A050A44404143080A0A0A40414309090A0A42440A40050A4440414342070907070A4041430505050A"
theorem cover_2302775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2302775)
  decide +kernel
#print axioms cover_2302775

def state_2302822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
def hex_2302822 : String := "414308420A090A"
theorem cover_2302822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2302822)
  decide +kernel
#print axioms cover_2302822

def state_2302829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 93)))
def hex_2302829 : String := "40414309094342444005060544404105050A05420544400541090505410943060A"
theorem cover_2302829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2302829)
  decide +kernel
#print axioms cover_2302829

def state_2302862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
def hex_2302862 : String := "41084306420A440A4041090606"
theorem cover_2302862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2302862)
  decide +kernel
#print axioms cover_2302862

def state_2302875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 47)))
def hex_2302875 : String := "404143080943420644404108060606424440414305050541430609064005064440410905410906400509410806"
theorem cover_2302875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2302875)
  decide +kernel
#print axioms cover_2302875

def state_2302923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2302923 : String := "430709"
theorem cover_2302923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2302923)
  decide +kernel
#print axioms cover_2302923

def state_2302928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 46)))
def hex_2302928 : String := "4440410843084244084041080606444041084308420809084041084306090808404108430642444041080606060908"
theorem cover_2302928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_2302928)
  decide +kernel
#print axioms cover_2302928

def state_2302975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 46)))
def hex_2302975 : String := "4440410743074244404107C40709070707"
theorem cover_2302975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2302975)
  decide +kernel
#print axioms cover_2302975

def state_2302996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 102) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
def hex_2302996 : String := "430909"
theorem cover_2302996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2302996)
  decide +kernel
#print axioms cover_2302996
end Mub6.Numerical.CircleFullD0.Forest
