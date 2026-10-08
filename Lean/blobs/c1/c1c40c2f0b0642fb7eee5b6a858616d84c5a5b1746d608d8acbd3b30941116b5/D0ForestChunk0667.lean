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
def state_1460864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1460864 : String := "4243440940094344094142400643064409054006430609420506090943440909444042094143090A434442090509440A4209070909"
theorem cover_1460864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460864 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1460864)
  decide +kernel
#print axioms cover_1460864

def state_1460918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_1460918 : String := "4344090944404109420543440A05050909"
theorem cover_1460918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1460918)
  decide +kernel
#print axioms cover_1460918

def state_1460936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_1460936 : String := "444041420606064109420908400609"
theorem cover_1460936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460936 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1460936)
  decide +kernel
#print axioms cover_1460936

def state_1460956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 4)))
def hex_1460956 : String := "44404106060909"
theorem cover_1460956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460956 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1460956)
  decide +kernel
#print axioms cover_1460956

def state_1460965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 8)))
def hex_1460965 : String := "4142094306440A06420506"
theorem cover_1460965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1460965)
  decide +kernel
#print axioms cover_1460965

def state_1460976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 8)))
def hex_1460976 : String := "410942094344400609064440414206064205064109420943444006090644404142060606410942094344060644E7400609400609400609"
theorem cover_1460976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 55) (hex := hex_1460976)
  decide +kernel
#print axioms cover_1460976

def state_1461031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 9)))
def hex_1461031 : String := "4041090509"
theorem cover_1461031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1461031)
  decide +kernel
#print axioms cover_1461031

def state_1461037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
def hex_1461037 : String := "444240064106060806"
theorem cover_1461037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1461037)
  decide +kernel
#print axioms cover_1461037

def state_1461049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
def hex_1461049 : String := "410A06"
theorem cover_1461049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1461049)
  decide +kernel
#print axioms cover_1461049

def state_1461053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
def hex_1461053 : String := "434442090508440A07"
theorem cover_1461053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1461053)
  decide +kernel
#print axioms cover_1461053

def state_1461063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 8)))
def hex_1461063 : String := "444240064106060806"
theorem cover_1461063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1461063)
  decide +kernel
#print axioms cover_1461063

def state_1461073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
def hex_1461073 : String := "424041060641434442090506440A07434442060606444240064143440A0607430644E7064006410A43060A420606400A41084308440808"
theorem cover_1461073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1461073)
  decide +kernel
#print axioms cover_1461073
end Mub6.Numerical.CircleFullD0.Forest
