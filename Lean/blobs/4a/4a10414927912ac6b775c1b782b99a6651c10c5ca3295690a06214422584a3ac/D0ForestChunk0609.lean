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
def state_1334918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 50)))
def hex_1334918 : String := "404142434405070A05424344064041424306440607060606440A40410A4243060A43060A0A430644064041050606410506"
theorem cover_1334918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1334918)
  decide +kernel
#print axioms cover_1334918

def state_1334969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
def hex_1334969 : String := "07"
theorem cover_1334969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1334969)
  decide +kernel
#print axioms cover_1334969

def state_1334972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 51)))
def hex_1334972 : String := "44404107424306440607060607"
theorem cover_1334972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334972 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1334972)
  decide +kernel
#print axioms cover_1334972

def state_1334985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 51)))
def hex_1334985 : String := "4440414209430709424344404109050609094344064041074243060906064440410A08090941074209430609404107420943070907"
theorem cover_1334985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334985 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1334985)
  decide +kernel
#print axioms cover_1334985

def state_1335038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 47 else 51)))
def hex_1335038 : String := "4307444041054243440607440A40410A424344060609DB0A43064405DB410506404107424307444041074209DB07070707"
theorem cover_1335038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 49) (hex := hex_1335038)
  decide +kernel
#print axioms cover_1335038

def state_1335087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
def hex_1335087 : String := "07"
theorem cover_1335087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1335087)
  decide +kernel
#print axioms cover_1335087

def state_1335089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 30 else (if j.val < 4 then 23 else 25)))
def hex_1335089 : String := "434406404142050605064440414205080506400508"
theorem cover_1335089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1335089)
  decide +kernel
#print axioms cover_1335089

def state_1335111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 46 else 25)))
def hex_1335111 : String := "06"
theorem cover_1335111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1335111)
  decide +kernel
#print axioms cover_1335111

def state_1335113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 50)))
def hex_1335113 : String := "08"
theorem cover_1335113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1335113)
  decide +kernel
#print axioms cover_1335113

def state_1335114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
def hex_1335114 : String := "40414243440640410705064408404142054344400506054440050505050843064408404142434406074440414243440605080805064041070507DB08060806"
theorem cover_1335114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 63) (hex := hex_1335114)
  decide +kernel
#print axioms cover_1335114
end Mub6.Numerical.CircleFullD0.Forest
