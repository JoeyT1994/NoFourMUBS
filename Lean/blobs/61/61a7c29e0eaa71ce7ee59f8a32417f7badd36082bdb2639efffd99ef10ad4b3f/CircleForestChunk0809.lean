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
def state_1494878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 101 else 119)))
def hex_1494878 : String := "404341424440060905054244060506414244400607070A424406070643410942090841094244404309070909444006084043050909"
theorem cover_1494878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1494878)
  decide +kernel
#print axioms cover_1494878

def state_1494931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 101 else 59)))
def hex_1494931 : String := "440640064308410A08"
theorem cover_1494931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1494931)
  decide +kernel
#print axioms cover_1494931

def state_1494940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 101 else 59)))
def hex_1494940 : String := "42440640430641420706064341424408404306070806084142444006430807400709440640060842440640074307070606"
theorem cover_1494940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1494940)
  decide +kernel
#print axioms cover_1494940

def state_1494989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 50 else 59)))
def hex_1494989 : String := "06"
theorem cover_1494989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1494989)
  decide +kernel
#print axioms cover_1494989

def state_1494994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 58)))
def hex_1494994 : String := "4341440642400643410A064144060A060606414442400605064240084341084405080840064306410A06440642400643060506"
theorem cover_1494994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1494994)
  decide +kernel
#print axioms cover_1494994

def state_1495047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 58)))
def hex_1495047 : String := "44424043060543410505050642404341094406420906414442054006090944420506420940060909404306410A0643410944060A4144420906094406420906"
theorem cover_1495047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1495047)
  decide +kernel
#print axioms cover_1495047
end Mub6.Numerical.CircleFullD0.Forest
