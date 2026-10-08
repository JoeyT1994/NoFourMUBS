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
def state_285609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
def hex_285609 : String := "4344404142084308440841430808080841420843440840080644084008084208084041420843064441430644404241430609060A4206414306090606060642084308064142430844400641060840410606414207064208064344400606060642084344400844080A0A4406400643410608064440414243440541050544074107420707430A05424308440742440740410808084407404109080843054408440A0A4142434407400507440A09434407050742430844080A430844070A404142434441094206430605060943444143444042090A0940420909090943440506054143404206444109060A060943064005054409094243064409064344434405064405050644444041090A0A4041094206050940410506054142434409060943444041090541090506094243444005050509430605"
theorem cover_285609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 307) (hex := hex_285609)
  decide +kernel
#print axioms cover_285609

def state_285919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
def hex_285919 : String := "444041420A430A44050A420A4344050A4440410506410542064305080A410A420A430A44410A090A4041420A430A440A40420A430A0A08420A43440A40410A0707440740410A0A0A410A420A430A0A"
theorem cover_285919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 79) (hex := hex_285919)
  decide +kernel
#print axioms cover_285919

def state_286001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_286001 : String := "42434440430641060A0A06444041084208434406060708084344404243054105050542430A4144070A4440420A050A0A430541440542400543054405050544054240050A0540420605420A43054441420A050A0A4440424106430607410743050742410743440706074107434407424007410708400541430507430507074042060642064441434206400644434142050505070607434206090606"
theorem cover_286001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 155) (hex := hex_286001)
  decide +kernel
#print axioms cover_286001


end Mub6.Numerical.CircleFullPrototype.Forest
