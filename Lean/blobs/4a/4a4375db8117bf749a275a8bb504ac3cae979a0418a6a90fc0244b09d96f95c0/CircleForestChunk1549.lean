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
def state_2245309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 95 else 47)))
def hex_2245309 : String := "444140420805054042430A440941400708074305440541050942430544050A05414042084308444105CF08084042430A44410807410806CF4206CF"
theorem cover_2245309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_2245309)
  decide +kernel
#print axioms cover_2245309

def state_2245368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
def hex_2245368 : String := "420843054405410506"
theorem cover_2245368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2245368)
  decide +kernel
#print axioms cover_2245368

def state_2245377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 23)))
def hex_2245377 : String := "4305440541054042430544054107CF0505"
theorem cover_2245377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2245377)
  decide +kernel
#print axioms cover_2245377

def state_2245395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 5)))
def hex_2245395 : String := "444009050A"
theorem cover_2245395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2245395)
  decide +kernel
#print axioms cover_2245395

def state_2245401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
def hex_2245401 : String := "09"
theorem cover_2245401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2245401)
  decide +kernel
#print axioms cover_2245401

def state_2245403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_2245403 : String := "42430A074344090A44094142070907"
theorem cover_2245403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2245403)
  decide +kernel
#print axioms cover_2245403

def state_2245419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 11)))
def hex_2245419 : String := "430A44094140070A06"
theorem cover_2245419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2245419)
  decide +kernel
#print axioms cover_2245419

def state_2245428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
def hex_2245428 : String := "43444105090A4409414042430A44090743440941420A09090942430A444140090A090A430A4409414042430A440941CF0909420A050909"
theorem cover_2245428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 55) (hex := hex_2245428)
  decide +kernel
#print axioms cover_2245428

def state_2245483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_2245483 : String := "434405054405414243054405404106430544050641054305440542404305440506050505424305440540094344054105094409414240084305090508430509"
theorem cover_2245483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245483 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_2245483)
  decide +kernel
#print axioms cover_2245483
end Mub6.Numerical.CircleFullD0.Forest
