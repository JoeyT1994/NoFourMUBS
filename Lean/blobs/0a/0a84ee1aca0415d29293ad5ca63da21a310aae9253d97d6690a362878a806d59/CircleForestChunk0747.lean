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
def state_1480194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 31)))
def hex_1480194 : String := "4043050706"
theorem cover_1480194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480194 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1480194)
  decide +kernel
#print axioms cover_1480194

def state_1480199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
def hex_1480199 : String := "434244404143050505060644400541430542060505054244400906064440094143420644400506050A09400506"
theorem cover_1480199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1480199)
  decide +kernel
#print axioms cover_1480199

def state_1480244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
def hex_1480244 : String := "414342064440410606060606430606"
theorem cover_1480244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1480244)
  decide +kernel
#print axioms cover_1480244

def state_1480263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 14)))
def hex_1480263 : String := "424408404143424408050742444006084005430505440605430809414307080808"
theorem cover_1480263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1480263)
  decide +kernel
#print axioms cover_1480263

def state_1480298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 28)))
def hex_1480298 : String := "40064308410808"
theorem cover_1480298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1480298)
  decide +kernel
#print axioms cover_1480298

def state_1480307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 29)))
def hex_1480307 : String := "4142444006430841440642400608060640430505434105054142444005430541050505054205054406400543050509"
theorem cover_1480307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_1480307)
  decide +kernel
#print axioms cover_1480307

def state_1480356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 29)))
def hex_1480356 : String := "44400643414406424006434106060706064107074043410705074341424407054440054305070542440705440905410707"
theorem cover_1480356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1480356)
  decide +kernel
#print axioms cover_1480356

def state_1480405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 37 else (if j.val < 4 then 47 else 29)))
def hex_1480405 : String := "4406400643414205050541424406050509"
theorem cover_1480405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1480405)
  decide +kernel
#print axioms cover_1480405

def state_1480422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
def hex_1480422 : String := "09"
theorem cover_1480422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1480422)
  decide +kernel
#print axioms cover_1480422
end Mub6.Numerical.CircleFullD0.Forest
