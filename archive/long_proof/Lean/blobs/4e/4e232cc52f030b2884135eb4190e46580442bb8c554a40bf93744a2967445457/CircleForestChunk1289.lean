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
def state_1609888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 122 else 100)))
def hex_1609888 : String := "4440420A41434407400A0744400A070A4344400A07400A050A4205410707404205414344400A05050A43050905"
theorem cover_1609888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1609888)
  decide +kernel
#print axioms cover_1609888

def state_1609933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 123 else 100)))
def hex_1609933 : String := "4440420A410A0A420A4143070A09400A42054143050605"
theorem cover_1609933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1609933)
  decide +kernel
#print axioms cover_1609933

def state_1609956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 100)))
def hex_1609956 : String := "42054143084407084344070544404205070505"
theorem cover_1609956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1609956)
  decide +kernel
#print axioms cover_1609956

def state_1609975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 101)))
def hex_1609975 : String := "40420541434440420506050544400642050605430544400A050505"
theorem cover_1609975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1609975)
  decide +kernel
#print axioms cover_1609975

def state_1610002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
def hex_1610002 : String := "4344404205414305444042059F050505050509"
theorem cover_1610002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610002 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1610002)
  decide +kernel
#print axioms cover_1610002

def state_1610021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 51)))
def hex_1610021 : String := "05"
theorem cover_1610021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1610021)
  decide +kernel
#print axioms cover_1610021

def state_1610022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
def hex_1610022 : String := "4205444143054005050505"
theorem cover_1610022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1610022)
  decide +kernel
#print axioms cover_1610022

def state_1610035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 25)))
def hex_1610035 : String := "44410A0505"
theorem cover_1610035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610035 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1610035)
  decide +kernel
#print axioms cover_1610035

def state_1610044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 100)))
def hex_1610044 : String := "40420A4143444006420A0606064344400A0A0A0A42410A05414344404207080740420508054440420A06420707400642050809"
theorem cover_1610044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1610044)
  decide +kernel
#print axioms cover_1610044

def state_1610095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 101)))
def hex_1610095 : String := "404205410643440A05064205414305444005050505"
theorem cover_1610095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1610095)
  decide +kernel
#print axioms cover_1610095

def state_1610116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 50)))
def hex_1610116 : String := "44400A420A41434440060A06060940064205410605"
theorem cover_1610116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1610116)
  decide +kernel
#print axioms cover_1610116

def state_1610137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 50)))
def hex_1610137 : String := "09"
theorem cover_1610137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1610137)
  decide +kernel
#print axioms cover_1610137
end Mub6.Numerical.CircleFullD0.Forest
