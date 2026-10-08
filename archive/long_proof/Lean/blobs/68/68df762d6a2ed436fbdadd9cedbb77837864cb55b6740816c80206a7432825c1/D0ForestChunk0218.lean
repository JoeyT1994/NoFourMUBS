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
def state_989779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
def hex_989779 : String := "4442404341060A080606420506"
theorem cover_989779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_989779)
  decide +kernel
#print axioms cover_989779

def state_989794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 42)))
def hex_989794 : String := "404341440A0A4442070A4240430A4407050A0A414442080A420540430A050544074240430505054043440A0A44074105070A430A410807"
theorem cover_989794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_989794)
  decide +kernel
#print axioms cover_989794

def state_989849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 42)))
def hex_989849 : String := "404341060A41440A06440A4240430A0A0A0A0A"
theorem cover_989849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989849 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_989849)
  decide +kernel
#print axioms cover_989849

def state_989868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
def hex_989868 : String := "42404344410542050A05444105050543050540430644410642404306440A0606060606"
theorem cover_989868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_989868)
  decide +kernel
#print axioms cover_989868

def state_989903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
def hex_989903 : String := "43064106440A06"
theorem cover_989903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_989903)
  decide +kernel
#print axioms cover_989903

def state_989911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 20)))
def hex_989911 : String := "4207404341440542070A070707"
theorem cover_989911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_989911)
  decide +kernel
#print axioms cover_989911

def state_989925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
def hex_989925 : String := "40434441420740430907070741420540434409054441050705430505094407414205404344410507050505074344070907"
theorem cover_989925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_989925)
  decide +kernel
#print axioms cover_989925

def state_989977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 42)))
def hex_989977 : String := "4142404344080A4407410A070A4043084408080A420708"
theorem cover_989977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_989977)
  decide +kernel
#print axioms cover_989977
end Mub6.Numerical.CircleFullD0.Forest
