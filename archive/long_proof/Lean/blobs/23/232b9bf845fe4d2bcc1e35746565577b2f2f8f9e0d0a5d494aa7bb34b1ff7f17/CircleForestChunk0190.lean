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
def state_983111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 105) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 83)))
def hex_983111 : String := "4240434109060643410544420540060A0541054406054043410944090909434109440A0A41094442060909"
theorem cover_983111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983111 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_983111)
  decide +kernel
#print axioms cover_983111

def state_983154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 41)))
def hex_983154 : String := "4341440A0A440A0A41444240430A090A0A42050A44424043410A07070740430A0A0A4240434105440A05050540430A410A0A0A"
theorem cover_983154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983154 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_983154)
  decide +kernel
#print axioms cover_983154

def state_983206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 40)))
def hex_983206 : String := "42074043080607"
theorem cover_983206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_983206)
  decide +kernel
#print axioms cover_983206

def state_983214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 41)))
def hex_983214 : String := "4043414406420643400641440605060606064341440742054043410507410506050707"
theorem cover_983214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_983214)
  decide +kernel
#print axioms cover_983214

def state_983250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 41)))
def hex_983250 : String := "4341444243080608424308400641440642050A060808414442064006430806420640064341444206084240060A0A08414406420640060A0606"
theorem cover_983250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_983250)
  decide +kernel
#print axioms cover_983250

def state_983307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 41)))
def hex_983307 : String := "43414442070A4240430A410A070A0A4407420708414407424043414407050707074043410A0A4144070A07430A0707"
theorem cover_983307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_983307)
  decide +kernel
#print axioms cover_983307
end Mub6.Numerical.CircleFullD0.Forest
