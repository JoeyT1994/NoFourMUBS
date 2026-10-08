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
def state_1036118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 104 else (if j.val < 4 then 37 else 61)))
def hex_1036118 : String := "43444041424305080909410805404108424344050844404107070808070844404142060642060606404108424344404106060608064307074108420606"
theorem cover_1036118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036118 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1036118)
  decide +kernel
#print axioms cover_1036118

def state_1036179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 105 else (if j.val < 4 then 37 else 61)))
def hex_1036179 : String := "430944400706400708"
theorem cover_1036179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1036179)
  decide +kernel
#print axioms cover_1036179

def state_1036188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
def hex_1036188 : String := "42430944404142060609064041424344400A064007410606064307074243090609414206060909"
theorem cover_1036188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1036188)
  decide +kernel
#print axioms cover_1036188

def state_1036227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 30)))
def hex_1036227 : String := "43094409400709"
theorem cover_1036227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1036227)
  decide +kernel
#print axioms cover_1036227

def state_1036234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
def hex_1036234 : String := "424309440940414243090A07090909"
theorem cover_1036234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1036234)
  decide +kernel
#print axioms cover_1036234

def state_1036250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
def hex_1036250 : String := "41074243070707"
theorem cover_1036250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1036250)
  decide +kernel
#print axioms cover_1036250

def state_1036260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 31)))
def hex_1036260 : String := "4440410707414243080807424309440940410606090740064108420A06"
theorem cover_1036260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036260 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1036260)
  decide +kernel
#print axioms cover_1036260

def state_1036291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
def hex_1036291 : String := "4142430707074243070707"
theorem cover_1036291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1036291)
  decide +kernel
#print axioms cover_1036291

def state_1036303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
def hex_1036303 : String := "4243444041084208070808444041084208070808430707"
theorem cover_1036303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1036303)
  decide +kernel
#print axioms cover_1036303

def state_1036328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 104 else (if j.val < 4 then 74 else 62)))
def hex_1036328 : String := "444041424344090744400741070707070941420808094041070741084243080807"
theorem cover_1036328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1036328)
  decide +kernel
#print axioms cover_1036328
end Mub6.Numerical.CircleFullD0.Forest
