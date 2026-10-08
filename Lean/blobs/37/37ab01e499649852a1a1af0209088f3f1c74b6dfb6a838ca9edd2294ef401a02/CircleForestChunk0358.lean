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
def state_161346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_161346 : String := "42430A4440420905420A4105054005054344404341050A410505430641050A054440410505410842050505"
theorem cover_161346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_161346)
  decide +kernel
#print axioms cover_161346

def state_161389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_161389 : String := "4142430A44414240080A08420A080808420A430A444041080A0A08"
theorem cover_161389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_161389)
  decide +kernel
#print axioms cover_161389

def state_161419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_161419 : String := "4244434041050541090507434041424405430505054205054142074405430505070744094340410A054109420505400505"
theorem cover_161419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_161419)
  decide +kernel
#print axioms cover_161419

def state_161468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_161468 : String := "42074443404441054205094105054406410507054340410505414205050705"
theorem cover_161468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_161468)
  decide +kernel
#print axioms cover_161468

def state_161499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_161499 : String := "414244094341424007090907070942074409434041420505070907"
theorem cover_161499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_161499)
  decide +kernel
#print axioms cover_161499

def state_161527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_161527 : String := "414243444041424344050505050541424344410807080708420705400608444006070643080542434407050543444005050505"
theorem cover_161527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_161527)
  decide +kernel
#print axioms cover_161527
end Mub6.Numerical.CircleFullPrototype.Forest
