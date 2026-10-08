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
def state_160649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 30 else 21)))
def hex_160649 : String := "404441424340054405054006444109060943050642430506054109054441424309404441090A090909420A0509"
theorem cover_160649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_160649)
  decide +kernel
#print axioms cover_160649

def state_160694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 31 else 21)))
def hex_160694 : String := "400644414243404441080607090709424340060706064109420706"
theorem cover_160694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_160694)
  decide +kernel
#print axioms cover_160694

def state_160721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
def hex_160721 : String := "444142434041050A0505080A4109424340440A0706074340440A0909404441080A0909"
theorem cover_160721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_160721)
  decide +kernel
#print axioms cover_160721

def state_160756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 10)))
def hex_160756 : String := "4340444143050805410905440809404441084243400608060841094243400509400644060943050644084108420908"
theorem cover_160756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_160756)
  decide +kernel
#print axioms cover_160756

def state_160805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
def hex_160805 : String := "40440A420A050A"
theorem cover_160805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_160805)
  decide +kernel
#print axioms cover_160805

def state_160812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
def hex_160812 : String := "40444241430A090941430A0609424143404442084143050605080A07430A0641434005440A054006440607430506440A420A41430A40440A070A0A"
theorem cover_160812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_160812)
  decide +kernel
#print axioms cover_160812
end Mub6.Numerical.CircleFullPrototype.Forest
