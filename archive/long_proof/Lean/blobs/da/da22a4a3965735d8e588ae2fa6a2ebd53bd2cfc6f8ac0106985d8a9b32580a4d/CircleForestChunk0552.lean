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
def state_1321286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_1321286 : String := "4043444107424107400709074109424409090944074107424344070A07074344410942400908090944410542050741420A074240430A0A430A054007430907"
theorem cover_1321286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_1321286)
  decide +kernel
#print axioms cover_1321286

def state_1321350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_1321350 : String := "404344420641420640060806420641440606064442064143060606064344084208414044080A080844420541050842410A064140430A0A430A05400608"
theorem cover_1321350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_1321350)
  decide +kernel
#print axioms cover_1321350

def state_1321413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
def hex_1321413 : String := "444142404306064308440741070607420840070841424440064309410906400643090A4409054244060505"
theorem cover_1321413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1321413)
  decide +kernel
#print axioms cover_1321413

def state_1321456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
def hex_1321456 : String := "440741424344400641070640060A440740060A0742064344060507"
theorem cover_1321456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1321456)
  decide +kernel
#print axioms cover_1321456

def state_1321484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
def hex_1321484 : String := "440841424044430841090843090A440843080A0942084044080508"
theorem cover_1321484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1321484)
  decide +kernel
#print axioms cover_1321484

def state_1321512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
def hex_1321512 : String := "4142404344054107080505074208400708"
theorem cover_1321512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321512 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1321512)
  decide +kernel
#print axioms cover_1321512
end Mub6.Numerical.CircleFullD0.Forest
