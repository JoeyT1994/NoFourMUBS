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
def state_969422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 56)))
def hex_969422 : String := "404142094443404105420505060505424406094443400A06064340410507414205080605414206440643080506"
theorem cover_969422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_969422)
  decide +kernel
#print axioms cover_969422

def state_969467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 57)))
def hex_969467 : String := "434041084208070840410542054405054108420808"
theorem cover_969467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_969467)
  decide +kernel
#print axioms cover_969467

def state_969490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 56)))
def hex_969490 : String := "4041424443074007414208070707074207074142444340080840410842080808084443094007090842444309404142060709064308400808440907"
theorem cover_969490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_969490)
  decide +kernel
#print axioms cover_969490

def state_969550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 56)))
def hex_969550 : String := "4142444340074142440605444307050542060705434005410507054443074007414205050707424443400741420607060643070507"
theorem cover_969550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_969550)
  decide +kernel
#print axioms cover_969550

def state_969603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 56)))
def hex_969603 : String := "41424406430805444340414244060707420607060643084041050806424406434041080606064443404142060706060643400708400706"
theorem cover_969603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_969603)
  decide +kernel
#print axioms cover_969603
end Mub6.Numerical.CircleFullD0.Forest
