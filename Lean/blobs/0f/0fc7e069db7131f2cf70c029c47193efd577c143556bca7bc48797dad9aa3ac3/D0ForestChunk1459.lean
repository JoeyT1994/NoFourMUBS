import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1650909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 200) else (if j.val < 3 then 120 else (if j.val < 4 then 105 else 84)))
def hex_1650909 : String := "404344A008444241400A43A007400A430A0741400A43A00A0A4241400943080A0A41090A430844424107400707414043A00707404308070808"
theorem cover_1650909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650909 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1650909)
  decide +kernel
#print axioms cover_1650909

def state_1650966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 201) else (if j.val < 3 then 120 else (if j.val < 4 then 105 else 84)))
def hex_1650966 : String := "404344A008440A0A4308444241400707400A054140430807080808"
theorem cover_1650966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1650966)
  decide +kernel
#print axioms cover_1650966

def state_1650993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 121 else (if j.val < 4 then 105 else 84)))
def hex_1650993 : String := "4140430944060943084442414043084405060840430806084140060806084043080608"
theorem cover_1650993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1650993)
  decide +kernel
#print axioms cover_1650993

def state_1651028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 85)))
def hex_1651028 : String := "08"
theorem cover_1651028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1651028)
  decide +kernel
#print axioms cover_1651028

def state_1651029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
def hex_1651029 : String := "404344424109050805440A0A43054442414043050A080541400A080808"
theorem cover_1651029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651029 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1651029)
  decide +kernel
#print axioms cover_1651029

def state_1651058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 42)))
def hex_1651058 : String := "414009430844424140060840060806084043080608"
theorem cover_1651058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1651058)
  decide +kernel
#print axioms cover_1651058

def state_1651079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 43)))
def hex_1651079 : String := "08"
theorem cover_1651079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1651079)
  decide +kernel
#print axioms cover_1651079

def state_1651084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1651084 : String := "434442410A0606420A0606"
theorem cover_1651084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1651084)
  decide +kernel
#print axioms cover_1651084

def state_1651097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 106 else 84)))
def hex_1651097 : String := "4241404344420706420A0A0743440742074107070740430A064344074207410708074140064344420706424140060708060640064344060606"
theorem cover_1651097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1651097)
  decide +kernel
#print axioms cover_1651097
end Mub6.Numerical.CircleFullD0.Forest
