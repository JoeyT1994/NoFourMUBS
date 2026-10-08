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
def state_2294581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
def hex_2294581 : String := "4407430605"
theorem cover_2294581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2294581)
  decide +kernel
#print axioms cover_2294581

def state_2294588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 46)))
def hex_2294588 : String := "4140420744430909430641400506050606"
theorem cover_2294588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294588 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2294588)
  decide +kernel
#print axioms cover_2294588

def state_2294605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 46)))
def hex_2294605 : String := "41404207440705424443060706444341404206440906060641404207440943090542064443060943064108060943064140050605400506"
theorem cover_2294605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_2294605)
  decide +kernel
#print axioms cover_2294605

def state_2294660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
def hex_2294660 : String := "4341404205444306050506064140054205444306050505"
theorem cover_2294660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2294660)
  decide +kernel
#print axioms cover_2294660

def state_2294683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_2294683 : String := "06"
theorem cover_2294683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2294683)
  decide +kernel
#print axioms cover_2294683

def state_2294684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_2294684 : String := "06"
theorem cover_2294684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2294684)
  decide +kernel
#print axioms cover_2294684

def state_2294687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 22)))
def hex_2294687 : String := "4041424344054105064409414240090540090509430544050909410506"
theorem cover_2294687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2294687)
  decide +kernel
#print axioms cover_2294687

def state_2294720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 23)))
def hex_2294720 : String := "44414206404305440506050606"
theorem cover_2294720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2294720)
  decide +kernel
#print axioms cover_2294720

def state_2294734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 46)))
def hex_2294734 : String := "41424043064409414042060606060640434409414206400905064409414240440943060906400906090606"
theorem cover_2294734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_2294734)
  decide +kernel
#print axioms cover_2294734

def state_2294777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
def hex_2294777 : String := "4142064044430641420640444306410706070606430641420606060606"
theorem cover_2294777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 29) (hex := hex_2294777)
  decide +kernel
#print axioms cover_2294777
end Mub6.Numerical.CircleFullD0.Forest
