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
def state_176403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 48)))
def hex_176403 : String := "449541400542054344410509054441050605400A4206430A0A"
theorem cover_176403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_176403)
  decide +kernel
#print axioms cover_176403

def state_176428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 61 else 48)))
def hex_176428 : String := "4441404206434407070742064344414042064344070606064007060606400742064344070606410606"
theorem cover_176428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_176428)
  decide +kernel
#print axioms cover_176428

def state_176470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 60 else 48)))
def hex_176470 : String := "44414042950842954306444108400605084042950642954306440541070541084042430A0707424344410840070908444140074207070741070708"
theorem cover_176470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_176470)
  decide +kernel
#print axioms cover_176470

def state_176530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 61 else 96)))
def hex_176530 : String := "414042430707074243444140094243440941060606094007420707414042070742064308064007420607440907434409410807094007420707"
theorem cover_176530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_176530)
  decide +kernel
#print axioms cover_176530

def state_176587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 61 else 97)))
def hex_176587 : String := "4140420707424344410507050643080707"
theorem cover_176587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_176587)
  decide +kernel
#print axioms cover_176587

def state_176605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 30 else 48)))
def hex_176605 : String := "43444142409506409543090642409506409543090641420640430906060906"
theorem cover_176605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_176605)
  decide +kernel
#print axioms cover_176605
end Mub6.Numerical.CircleFullPrototype.Forest
