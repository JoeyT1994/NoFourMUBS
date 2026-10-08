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
def state_2546361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_2546361 : String := "43440741080744414209070741424306440906430844400742060808424306064306440706"
theorem cover_2546361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2546361)
  decide +kernel
#print axioms cover_2546361

def state_2546400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2546400 : String := "434406404406080606"
theorem cover_2546400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2546400)
  decide +kernel
#print axioms cover_2546400

def state_2546410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_2546410 : String := "06"
theorem cover_2546410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2546410)
  decide +kernel
#print axioms cover_2546410

def state_2546413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_2546413 : String := "4206430641444209050A4407420608"
theorem cover_2546413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2546413)
  decide +kernel
#print axioms cover_2546413

def state_2546428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_2546428 : String := "4243064144400606060643414440060606064144404209084243070907404206430605420643060A4440420607420607400606"
theorem cover_2546428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2546428)
  decide +kernel
#print axioms cover_2546428

def state_2546479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_2546479 : String := "4042060606"
theorem cover_2546479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2546479)
  decide +kernel
#print axioms cover_2546479

def state_2546487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 4)))
def hex_2546487 : String := "4041060906"
theorem cover_2546487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2546487)
  decide +kernel
#print axioms cover_2546487

def state_2546495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 10)))
def hex_2546495 : String := "424340410844094209084106440642434041080941054405424340410809410544054243E60606400606434006060640090643400806064006064340060606"
theorem cover_2546495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 63) (hex := hex_2546495)
  decide +kernel
#print axioms cover_2546495

def state_2546558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 11)))
def hex_2546558 : String := "42434440084108424308440A080808444008410643420A06060808"
theorem cover_2546558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2546558)
  decide +kernel
#print axioms cover_2546558

def state_2546586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 10)))
def hex_2546586 : String := "4243414009440942094341070709090943414007440642430706060709"
theorem cover_2546586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2546586)
  decide +kernel
#print axioms cover_2546586
end Mub6.Numerical.CircleFullD0.Forest
