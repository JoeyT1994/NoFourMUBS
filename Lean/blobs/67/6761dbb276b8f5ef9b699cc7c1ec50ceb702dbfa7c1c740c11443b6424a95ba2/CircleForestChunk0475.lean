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
def state_275332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 8)))
def hex_275332 : String := "42440941400643060606440A41400A43424409410606440A41400A4342440A4106060A0A0A0A0A"
theorem cover_275332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 39) (hex := hex_275332)
  decide +kernel
#print axioms cover_275332

def state_275374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 8)))
def hex_275374 : String := "44094041084309090A"
theorem cover_275374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_275374)
  decide +kernel
#print axioms cover_275374

def state_275384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 16)))
def hex_275384 : String := "404143420707074309094143090705"
theorem cover_275384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_275384)
  decide +kernel
#print axioms cover_275384

def state_275401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
def hex_275401 : String := "43420A4440410743420A06070A0A4208440708"
theorem cover_275401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_275401)
  decide +kernel
#print axioms cover_275401

def state_275422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 17)))
def hex_275422 : String := "440940410A430A44090A0A"
theorem cover_275422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_275422)
  decide +kernel
#print axioms cover_275422

def state_275433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 17)))
def hex_275433 : String := "444041434209064244074041070909440606434209064209440940410606064106094041430A420A4440D9060A43420A06424440D9090A4440D90640D9060A"
theorem cover_275433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_275433)
  decide +kernel
#print axioms cover_275433

def state_275497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 17)))
def hex_275497 : String := "4409404108434409080808"
theorem cover_275497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_275497)
  decide +kernel
#print axioms cover_275497

def state_275509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 34)))
def hex_275509 : String := "404143420707074342094409404107050542054407400705410705"
theorem cover_275509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_275509)
  decide +kernel
#print axioms cover_275509
end Mub6.Numerical.CircleFullPrototype.Forest
