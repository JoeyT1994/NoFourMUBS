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
def state_1478487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 44 else 59)))
def hex_1478487 : String := "424005414305444240050705054305050A"
theorem cover_1478487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1478487)
  decide +kernel
#print axioms cover_1478487

def state_1478509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 34 else (if j.val < 4 then 90 else 58)))
def hex_1478509 : String := "4442404306064341080841440642400643080806440642400608064006084240054341050541444240054305050505054005430505"
theorem cover_1478509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1478509)
  decide +kernel
#print axioms cover_1478509

def state_1478562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 34 else (if j.val < 4 then 90 else 58)))
def hex_1478562 : String := "444240064308080642400543050505"
theorem cover_1478562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1478562)
  decide +kernel
#print axioms cover_1478562

def state_1478578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
def hex_1478578 : String := "4442404306064341440642070644064207060740064306064240074341444207400543050705444207050507404305054341050541440705440705"
theorem cover_1478578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1478578)
  decide +kernel
#print axioms cover_1478578

def state_1478637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
def hex_1478637 : String := "444240060A06424007434144090505074005430509"
theorem cover_1478637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1478637)
  decide +kernel
#print axioms cover_1478637

def state_1478659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 90 else 58)))
def hex_1478659 : String := "414442404308080808424043414408054408054144424043084109080808424005090544080543084109084043084108050844084240430841440805050808"
theorem cover_1478659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1478659)
  decide +kernel
#print axioms cover_1478659
end Mub6.Numerical.CircleFullD0.Forest
