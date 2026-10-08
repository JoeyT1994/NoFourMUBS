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
def state_1622847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 133)))
def hex_1622847 : String := "43410642054044430541080505054142060842400A06400A4408430508"
theorem cover_1622847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1622847)
  decide +kernel
#print axioms cover_1622847

def state_1622876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 66)))
def hex_1622876 : String := "44434106054106094305410605"
theorem cover_1622876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_1622876)
  decide +kernel
#print axioms cover_1622876

def state_1622890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 208 else (if j.val < 4 then 193 else 66)))
def hex_1622890 : String := "404443414205050541420740070542050A43050A05"
theorem cover_1622890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622890 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1622890)
  decide +kernel
#print axioms cover_1622890

def state_1622914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 386 else 132)))
def hex_1622914 : String := "41424044430541050505054044434105054142400A05400A054205064305410A0505420540444305060505"
theorem cover_1622914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622914 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1622914)
  decide +kernel
#print axioms cover_1622914

def state_1622957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 387 else 132)))
def hex_1622957 : String := "4142400A44090540444341080A080A440943050942400A05400A440905"
theorem cover_1622957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1622957)
  decide +kernel
#print axioms cover_1622957

def state_1622986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 133)))
def hex_1622986 : String := "43414205050541420A400A050A"
theorem cover_1622986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1622986)
  decide +kernel
#print axioms cover_1622986

def state_1622999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 66)))
def hex_1622999 : String := "44430541090505"
theorem cover_1622999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1622999)
  decide +kernel
#print axioms cover_1622999

def state_1623006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 67)))
def hex_1623006 : String := "434106054142064044430641060A06064205404443050A0505"
theorem cover_1623006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1623006)
  decide +kernel
#print axioms cover_1623006

def state_1623034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 192 else 66)))
def hex_1623034 : String := "4142400744074307410707074240094407430741070707"
theorem cover_1623034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1623034)
  decide +kernel
#print axioms cover_1623034
end Mub6.Numerical.CircleFullD0.Forest
