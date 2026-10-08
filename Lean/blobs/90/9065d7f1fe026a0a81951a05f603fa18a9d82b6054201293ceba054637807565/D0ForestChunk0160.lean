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
def state_975888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_975888 : String := "414342444007414205444307050542440505070507420544400A4143440A05090A05430742050A"
theorem cover_975888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975888 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_975888)
  decide +kernel
#print axioms cover_975888

def state_975933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
def hex_975933 : String := "42054443400741420544430705054244430705054443074007410506070505"
theorem cover_975933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_975933)
  decide +kernel
#print axioms cover_975933

def state_975964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
def hex_975964 : String := "424443400741420544060506050544434007414244430705070707400A410506430705"
theorem cover_975964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_975964)
  decide +kernel
#print axioms cover_975964

def state_976000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
def hex_976000 : String := "4244434005060505444340414205444309050542440605440943070541424406050A420609054340050A05"
theorem cover_976000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_976000)
  decide +kernel
#print axioms cover_976000

def state_976043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
def hex_976043 : String := "42440643400506054443404142060909060643404142050707414244050544060542060905"
theorem cover_976043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_976043)
  decide +kernel
#print axioms cover_976043

def state_976080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
def hex_976080 : String := "40054105420544434005080505"
theorem cover_976080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_976080)
  decide +kernel
#print axioms cover_976080
end Mub6.Numerical.CircleFullD0.Forest
