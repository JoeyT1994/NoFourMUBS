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
def state_1042855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1042855 : String := "400A420A440A43060A"
theorem cover_1042855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1042855)
  decide +kernel
#print axioms cover_1042855

def state_1042865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
def hex_1042865 : String := "42440A09440A4143094009420944050709"
theorem cover_1042865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1042865)
  decide +kernel
#print axioms cover_1042865

def state_1042883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1042883 : String := "440A4143094208400944080809"
theorem cover_1042883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1042883)
  decide +kernel
#print axioms cover_1042883

def state_1042897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1042897 : String := "0A"
theorem cover_1042897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042897 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1042897)
  decide +kernel
#print axioms cover_1042897

def state_1042900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
def hex_1042900 : String := "4042090A420A440A430641400A0A0A"
theorem cover_1042900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1042900)
  decide +kernel
#print axioms cover_1042900

def state_1042916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
def hex_1042916 : String := "42440A09440A4143094009420944050709"
theorem cover_1042916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1042916)
  decide +kernel
#print axioms cover_1042916

def state_1042934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 25)))
def hex_1042934 : String := "440A41430942084009444107080909"
theorem cover_1042934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1042934)
  decide +kernel
#print axioms cover_1042934

def state_1042950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 50)))
def hex_1042950 : String := "0A"
theorem cover_1042950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042950 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1042950)
  decide +kernel
#print axioms cover_1042950

def state_1042953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 51)))
def hex_1042953 : String := "404209440A0742440A09440A430641404209070606"
theorem cover_1042953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1042953)
  decide +kernel
#print axioms cover_1042953

def state_1042975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 51)))
def hex_1042975 : String := "424441430A400942090A0A094441430A0505414340074209074009D943074005420905"
theorem cover_1042975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042975 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1042975)
  decide +kernel
#print axioms cover_1042975

def state_1043011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 32) else (if j.val < 3 then 102 else (if j.val < 4 then 63 else 51)))
def hex_1043011 : String := "4441430A42074407D90A4143420940094406054209D9430942084009440606"
theorem cover_1043011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043011 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1043011)
  decide +kernel
#print axioms cover_1043011

def state_1043042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 32) else (if j.val < 3 then 103 else (if j.val < 4 then 63 else 51)))
def hex_1043042 : String := "4441430A440AD90A41434042440A09440A0742440606440606D94340420907064042440A0944050742440606440606"
theorem cover_1043042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043042 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_1043042)
  decide +kernel
#print axioms cover_1043042

def state_1043089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 51)))
def hex_1043089 : String := "4340090A40420944050742440A09440A414306404209070606"
theorem cover_1043089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1043089)
  decide +kernel
#print axioms cover_1043089
end Mub6.Numerical.CircleFullD0.Forest
