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
def state_1621866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 65)))
def hex_1621866 : String := "424044D34305410505054044D34341050541420540070542050544D305"
theorem cover_1621866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1621866)
  decide +kernel
#print axioms cover_1621866

def state_1621897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 193 else 65)))
def hex_1621897 : String := "4044D3434106420640440843060806410842070809"
theorem cover_1621897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621897 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1621897)
  decide +kernel
#print axioms cover_1621897

def state_1621918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 65)))
def hex_1621918 : String := "4044D34341084240440843410842050808094044084341084208070844084341080508410842080844094341080909"
theorem cover_1621918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1621918)
  decide +kernel
#print axioms cover_1621918

def state_1621966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 208 else (if j.val < 4 then 193 else 65)))
def hex_1621966 : String := "4044D34341424044D305054044D34305410505054205054142070942070909"
theorem cover_1621966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1621966)
  decide +kernel
#print axioms cover_1621966

def state_1621998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 65)))
def hex_1621998 : String := "44D34341424044D34341050541420509420505094044D3434142050742050541420806064409430509424044D3430541050505400644090541420909420906"
theorem cover_1621998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1621998)
  decide +kernel
#print axioms cover_1621998

def state_1622061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 65)))
def hex_1622061 : String := "44094341090509"
theorem cover_1622061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1622061)
  decide +kernel
#print axioms cover_1622061

def state_1622069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 32)))
def hex_1622069 : String := "4443070643410742400607064142400644D343410707080606"
theorem cover_1622069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622069 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1622069)
  decide +kernel
#print axioms cover_1622069

def state_1622095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 64)))
def hex_1622095 : String := "4341070741420907420906"
theorem cover_1622095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1622095)
  decide +kernel
#print axioms cover_1622095
end Mub6.Numerical.CircleFullD0.Forest
