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
def state_1500851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 58)))
def hex_1500851 : String := "41444205400605424043414405080505434144054205400A050505404306410A06434107074107420507440542054006430605"
theorem cover_1500851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500851 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1500851)
  decide +kernel
#print axioms cover_1500851

def state_1500904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
def hex_1500904 : String := "4341080808"
theorem cover_1500904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500904 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1500904)
  decide +kernel
#print axioms cover_1500904

def state_1500911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 40 else (if j.val < 4 then 104 else 59)))
def hex_1500911 : String := "42084440084341444208090844420540430A080942084008090808"
theorem cover_1500911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1500911)
  decide +kernel
#print axioms cover_1500911

def state_1500938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 40 else (if j.val < 4 then 104 else 59)))
def hex_1500938 : String := "42084440434108440508084341440542084008430908440542054043410805050541080540084341084208444008434108440508080808"
theorem cover_1500938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1500938)
  decide +kernel
#print axioms cover_1500938

def state_1500993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 105 else 59)))
def hex_1500993 : String := "410808"
theorem cover_1500993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1500993)
  decide +kernel
#print axioms cover_1500993

def state_1500997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
def hex_1500997 : String := "43410A44060A414442080A084442080642080A"
theorem cover_1500997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500997 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1500997)
  decide +kernel
#print axioms cover_1500997

def state_1501018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
def hex_1501018 : String := "4442400A430A410A444240430A0543410A05050A0A0A0A"
theorem cover_1501018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501018 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 23) (hex := hex_1501018)
  decide +kernel
#print axioms cover_1501018

def state_1501044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 118)))
def hex_1501044 : String := "434144060A0641444208060A4406420806"
theorem cover_1501044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1501044)
  decide +kernel
#print axioms cover_1501044

def state_1501063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 170) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 118)))
def hex_1501063 : String := "4442404306410A05434144050A0505400643060A42400A430A410A44050A0A"
theorem cover_1501063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1501063)
  decide +kernel
#print axioms cover_1501063
end Mub6.Numerical.CircleFullD0.Forest
