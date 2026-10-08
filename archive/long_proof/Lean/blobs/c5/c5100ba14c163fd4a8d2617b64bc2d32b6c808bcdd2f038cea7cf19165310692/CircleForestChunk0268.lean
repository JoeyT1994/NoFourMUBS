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
def state_139699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
def hex_139699 : String := "43054440420541054305090505"
theorem cover_139699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_139699)
  decide +kernel
#print axioms cover_139699

def state_139713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
def hex_139713 : String := "4440410A42080A410542050A0A"
theorem cover_139713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_139713)
  decide +kernel
#print axioms cover_139713

def state_139729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_139729 : String := "424344400505054440070505430A44070A"
theorem cover_139729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_139729)
  decide +kernel
#print axioms cover_139729

def state_139746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_139746 : String := "4243444008084042050A0544404209430809420643080609430A4440430A074344080A444106084107420808400A430A44410742090A410A09"
theorem cover_139746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_139746)
  decide +kernel
#print axioms cover_139746

def state_139803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_139803 : String := "414205430A440605424344060544060543444008060A444043440641060806064043440A0A444142050A4240430505050A410542050A43440605440605"
theorem cover_139803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_139803)
  decide +kernel
#print axioms cover_139803

def state_139864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_139864 : String := "4041054205430A444009430A09094105420543054440050505"
theorem cover_139864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_139864)
  decide +kernel
#print axioms cover_139864

def state_139891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_139891 : String := "41424307444107420606070742434406420907444209060907"
theorem cover_139891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_139891)
  decide +kernel
#print axioms cover_139891

def state_139916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_139916 : String := "414243064406400705074243440640420606064406400906434406404106420607064406400706"
theorem cover_139916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_139916)
  decide +kernel
#print axioms cover_139916
end Mub6.Numerical.CircleFullPrototype.Forest
