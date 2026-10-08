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
def state_1484204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 27)))
def hex_1484204 : String := "42414440430A424107070A09094440430642050643094205410905400A09410A444006430642410606060A"
theorem cover_1484204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1484204)
  decide +kernel
#print axioms cover_1484204

def state_1484248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 27)))
def hex_1484248 : String := "414440434208410A4405080843420941094405094205414405080540080944054008430908"
theorem cover_1484248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1484248)
  decide +kernel
#print axioms cover_1484248

def state_1484286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 27)))
def hex_1484286 : String := "4440430A42410A4405080A4342410A44400609090A42414440430A42050A430942054405090A4405400809410A444006434244050A064205070A0A"
theorem cover_1484286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1484286)
  decide +kernel
#print axioms cover_1484286

def state_1484345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 37) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 27)))
def hex_1484345 : String := "444043064205064342414405400A09054144060A064205414405400A430A42050A05400A430A4241084405080A"
theorem cover_1484345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484345 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1484345)
  decide +kernel
#print axioms cover_1484345

def state_1484391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 27)))
def hex_1484391 : String := "42094109444043084209080809"
theorem cover_1484391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1484391)
  decide +kernel
#print axioms cover_1484391

def state_1484405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 27)))
def hex_1484405 : String := "4109440509"
theorem cover_1484405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1484405)
  decide +kernel
#print axioms cover_1484405

def state_1484411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 27)))
def hex_1484411 : String := "444043420941094408094241094405094144404309420907090944404342050742050743084205074009090909"
theorem cover_1484411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1484411)
  decide +kernel
#print axioms cover_1484411
end Mub6.Numerical.CircleFullD0.Forest
