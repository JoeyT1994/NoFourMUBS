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
def state_1027897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1027897 : String := "40094309410842084440080808"
theorem cover_1027897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1027897)
  decide +kernel
#print axioms cover_1027897

def state_1027910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1027910 : String := "44400A4441420843400A4441080A0808420A0A41084208434008080808"
theorem cover_1027910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1027910)
  decide +kernel
#print axioms cover_1027910

def state_1027942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1027942 : String := "4243440707444107050707"
theorem cover_1027942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027942 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1027942)
  decide +kernel
#print axioms cover_1027942

def state_1027955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
def hex_1027955 : String := "44414007430644060740430744050743084408424107400708074107400743074244070707"
theorem cover_1027955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1027955)
  decide +kernel
#print axioms cover_1027955

def state_1027994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_1027994 : String := "4044070744424341064007064106404441070507440606074243070707"
theorem cover_1027994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1027994)
  decide +kernel
#print axioms cover_1027994

def state_1028024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_1028024 : String := "44054243050505"
theorem cover_1028024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1028024)
  decide +kernel
#print axioms cover_1028024

def state_1028031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_1028031 : String := "44424341400544050605414005440542430505050505424341400744060640054405430505414007444243060A05424306070640054405420A05430505"
theorem cover_1028031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1028031)
  decide +kernel
#print axioms cover_1028031

def state_1028092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_1028092 : String := "414007424307070740424307070742434441074007430744070741074007430707444107400744420A054208054107400708430707"
theorem cover_1028092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1028092)
  decide +kernel
#print axioms cover_1028092

def state_1028145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_1028145 : String := "434407074441070507"
theorem cover_1028145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1028145)
  decide +kernel
#print axioms cover_1028145
end Mub6.Numerical.CircleFullD0.Forest
