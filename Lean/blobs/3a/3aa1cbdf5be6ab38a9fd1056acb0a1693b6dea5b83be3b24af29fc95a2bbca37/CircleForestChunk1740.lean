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
def state_2290772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 44)))
def hex_2290772 : String := "4340420706424108074144050A44074309094006420706"
theorem cover_2290772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2290772)
  decide +kernel
#print axioms cover_2290772

def state_2290795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
def hex_2290795 : String := "43400A42444143080A074143080A434007080744410A434009080A410A43400A42080A0A40064244410607410A070A"
theorem cover_2290795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2290795)
  decide +kernel
#print axioms cover_2290795

def state_2290842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
def hex_2290842 : String := "424106074106440606"
theorem cover_2290842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2290842)
  decide +kernel
#print axioms cover_2290842

def state_2290853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 22)))
def hex_2290853 : String := "41084440430807084043084207444108074140430807080708"
theorem cover_2290853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_2290853)
  decide +kernel
#print axioms cover_2290853

def state_2290879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
def hex_2290879 : String := "44084043084241084408400808410644060A08"
theorem cover_2290879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2290879)
  decide +kernel
#print axioms cover_2290879

def state_2290899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 44)))
def hex_2290899 : String := "40430842410844074007084144054006054405404308060808"
theorem cover_2290899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2290899)
  decide +kernel
#print axioms cover_2290899

def state_2290926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
def hex_2290926 : String := "420844084108430840420844080A08"
theorem cover_2290926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2290926)
  decide +kernel
#print axioms cover_2290926

def state_2290942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 45)))
def hex_2290942 : String := "44414043080608400708414043080A08404342074407410A070743084244074108074441080741400A08400708"
theorem cover_2290942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290942 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2290942)
  decide +kernel
#print axioms cover_2290942

def state_2290988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 90)))
def hex_2290988 : String := "4140060840434244080A0A064308424408410840070844410540060541060A"
theorem cover_2290988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2290988)
  decide +kernel
#print axioms cover_2290988
end Mub6.Numerical.CircleFullD0.Forest
