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
def state_986161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 42)))
def hex_986161 : String := "41444240094341070509050744054240084308440841070805"
theorem cover_986161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_986161)
  decide +kernel
#print axioms cover_986161

def state_986186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 42)))
def hex_986186 : String := "414442400909094209074442400543054144050905054240434408074406094344410908410742400843080908444109420605410942060940054305440509"
theorem cover_986186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_986186)
  decide +kernel
#print axioms cover_986186

def state_986250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 42)))
def hex_986250 : String := "41444240430A0A0A0A4240430741060A060644424043054105050A0542404344080844410A08410A4240080A080A400806"
theorem cover_986250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_986250)
  decide +kernel
#print axioms cover_986250

def state_986300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 42)))
def hex_986300 : String := "44424043410944090909430A0A40090A4240430909430A41090A400906"
theorem cover_986300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_986300)
  decide +kernel
#print axioms cover_986300

def state_986330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 84)))
def hex_986330 : String := "42404341440542404305090A0505414405424009430909054405424005070543410A0A4144070A0705"
theorem cover_986330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986330 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_986330)
  decide +kernel
#print axioms cover_986330
end Mub6.Numerical.CircleFullD0.Forest
