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
def state_8970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
def hex_8970 : String := "404344094109400943424409050909094344094109404342440941094009434206090909094342440906090909"
theorem cover_8970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_8970)
  decide +kernel
#print axioms cover_8970

def state_9017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
def hex_9017 : String := "4344424008430707400843414407420708080842400543410508054043410508054341444240054341050505400543410508050508410508440805"
theorem cover_9017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_9017)
  decide +kernel
#print axioms cover_9017

def state_9078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 16)))
def hex_9078 : String := "4207404341070741070707"
theorem cover_9078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_9078)
  decide +kernel
#print axioms cover_9078

def state_9090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 17)))
def hex_9090 : String := "40434144070507410507430706"
theorem cover_9090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_9090)
  decide +kernel
#print axioms cover_9090

def state_9104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 17)))
def hex_9104 : String := "434144420740434144074205050741050743070742400506404341050505434106440742054005064105440705444207084208084144420740054307050508"
theorem cover_9104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_9104)
  decide +kernel
#print axioms cover_9104

def state_9167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 17)))
def hex_9167 : String := "4341440706440742074041430707070741064407420608"
theorem cover_9167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_9167)
  decide +kernel
#print axioms cover_9167

def state_9190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 8)))
def hex_9190 : String := "444207400807424005064043410508054341060806"
theorem cover_9190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_9190)
  decide +kernel
#print axioms cover_9190

def state_9214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 16)))
def hex_9214 : String := "4043060843410906410908"
theorem cover_9214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_9214)
  decide +kernel
#print axioms cover_9214
end Mub6.Numerical.CircleFullPrototype.Forest
