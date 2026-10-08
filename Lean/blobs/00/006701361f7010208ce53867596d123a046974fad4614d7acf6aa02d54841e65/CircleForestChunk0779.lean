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
def state_1487741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 27)))
def hex_1487741 : String := "444043050505404341424405400A430A410A05440707420544054007074142440540050544070742054405054341424405090742054405074142050705"
theorem cover_1487741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1487741)
  decide +kernel
#print axioms cover_1487741

def state_1487802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 27)))
def hex_1487802 : String := "44074043070707"
theorem cover_1487802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1487802)
  decide +kernel
#print axioms cover_1487802

def state_1487809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
def hex_1487809 : String := "42440505440640430607430707"
theorem cover_1487809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1487809)
  decide +kernel
#print axioms cover_1487809

def state_1487822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 27)))
def hex_1487822 : String := "4142440540434142050705054341420507050544070742054405400907"
theorem cover_1487822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1487822)
  decide +kernel
#print axioms cover_1487822

def state_1487851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 13)))
def hex_1487851 : String := "4441070941404142080709414243440706060742434405400806070740094142054307074205430505"
theorem cover_1487851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1487851)
  decide +kernel
#print axioms cover_1487851

def state_1487892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 13)))
def hex_1487892 : String := "434409414042090707400942430707074407410707"
theorem cover_1487892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1487892)
  decide +kernel
#print axioms cover_1487892

def state_1487916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 26)))
def hex_1487916 : String := "41404308440741070708404308440541070508"
theorem cover_1487916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1487916)
  decide +kernel
#print axioms cover_1487916

def state_1487937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
def hex_1487937 : String := "434142444043080708064407074244404308410707084043094106420607064407074142060742444043070743070506440707"
theorem cover_1487937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1487937)
  decide +kernel
#print axioms cover_1487937
end Mub6.Numerical.CircleFullD0.Forest
