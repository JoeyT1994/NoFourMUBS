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
def state_65043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 14)))
def hex_65043 : String := "424308440540050A4308440509"
theorem cover_65043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_65043)
  decide +kernel
#print axioms cover_65043

def state_65056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
def hex_65056 : String := "424340414442080606064109084041444243090A0942430641090A06440542430640050A0641440909440A420A0943064041060509"
theorem cover_65056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_65056)
  decide +kernel
#print axioms cover_65056

def state_65109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_65109 : String := "4144090944420A084243090909"
theorem cover_65109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_65109)
  decide +kernel
#print axioms cover_65109

def state_65122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_65122 : String := "4041440742434107404407090907074405424340414405420A09050A0A4340050907410A0A"
theorem cover_65122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_65122)
  decide +kernel
#print axioms cover_65122

def state_65161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_65161 : String := "434440410944080841084442084309080840050544404143440605440605434406060641434408054442064006070543440808440642060640054105430505"
theorem cover_65161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_65161)
  decide +kernel
#print axioms cover_65161

def state_65224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_65224 : String := "4344090944404142430909094243090A0941094243094407090940414205094243050509410509"
theorem cover_65224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_65224)
  decide +kernel
#print axioms cover_65224
end Mub6.Numerical.CircleFullPrototype.Forest
