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
def state_1606259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 98)))
def hex_1606259 : String := "4005410542434405400541054208050505"
theorem cover_1606259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1606259)
  decide +kernel
#print axioms cover_1606259

def state_1606277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 99)))
def hex_1606277 : String := "410542434405400741420705070805"
theorem cover_1606277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1606277)
  decide +kernel
#print axioms cover_1606277

def state_1606293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 99)))
def hex_1606293 : String := "42434440050A404241054344050A050542410A0A0A4405400542410543440540050944054005050505"
theorem cover_1606293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1606293)
  decide +kernel
#print axioms cover_1606293

def state_1606336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 106 else (if j.val < 4 then 120 else 99)))
def hex_1606336 : String := "44404105084142430A44054005090542080A40414243440840074207070805420843440707074142430A090A42090A"
theorem cover_1606336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1606336)
  decide +kernel
#print axioms cover_1606336

def state_1606383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 106 else (if j.val < 4 then 121 else 99)))
def hex_1606383 : String := "444005410509404142080508414209430A0509"
theorem cover_1606383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1606383)
  decide +kernel
#print axioms cover_1606383

def state_1606402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 107 else (if j.val < 4 then 60 else 99)))
def hex_1606402 : String := "43440540050A4405400505"
theorem cover_1606402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1606402)
  decide +kernel
#print axioms cover_1606402

def state_1606413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 61 else 49)))
def hex_1606413 : String := "4405400641054243444005410505400641420805080605"
theorem cover_1606413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_1606413)
  decide +kernel
#print axioms cover_1606413

def state_1606437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
def hex_1606437 : String := "08"
theorem cover_1606437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1606437)
  decide +kernel
#print axioms cover_1606437

def state_1606440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 98)))
def hex_1606440 : String := "40084142080508"
theorem cover_1606440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1606440)
  decide +kernel
#print axioms cover_1606440

def state_1606447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 99)))
def hex_1606447 : String := "40414208434405070508414243440840080908434440410505410A42080540410707410A42090A444005410509400641420905094208434440080940080908"
theorem cover_1606447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1606447)
  decide +kernel
#print axioms cover_1606447
end Mub6.Numerical.CircleFullD0.Forest
