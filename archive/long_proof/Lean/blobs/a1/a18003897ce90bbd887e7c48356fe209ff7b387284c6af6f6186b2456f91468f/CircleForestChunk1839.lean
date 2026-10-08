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
def state_2314485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 10)))
def hex_2314485 : String := "4443400905400A4243054105090A4340424409090942440505054042440A0A0A4244430541054009054341054009054106400A440A0A44050A"
theorem cover_2314485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314485 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2314485)
  decide +kernel
#print axioms cover_2314485

def state_2314543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
def hex_2314543 : String := "4244050505"
theorem cover_2314543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2314543)
  decide +kernel
#print axioms cover_2314543

def state_2314550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 20)))
def hex_2314550 : String := "430540430541050705"
theorem cover_2314550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2314550)
  decide +kernel
#print axioms cover_2314550

def state_2314560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
def hex_2314560 : String := "4044050505"
theorem cover_2314560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2314560)
  decide +kernel
#print axioms cover_2314560

def state_2314567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 42)))
def hex_2314567 : String := "43054105420705"
theorem cover_2314567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2314567)
  decide +kernel
#print axioms cover_2314567

def state_2314574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
def hex_2314574 : String := "4341054240440543054105420505050541420505424044410507414243050705420743070744054105420505404405410543420505424007050505"
theorem cover_2314574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2314574)
  decide +kernel
#print axioms cover_2314574

def state_2314633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
def hex_2314633 : String := "440543054105420505"
theorem cover_2314633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2314633)
  decide +kernel
#print axioms cover_2314633

def state_2314642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 10)))
def hex_2314642 : String := "44054305404244054305410540440505050505"
theorem cover_2314642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2314642)
  decide +kernel
#print axioms cover_2314642

def state_2314662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
def hex_2314662 : String := "41424406064406064244074340440606444106074106420706064443404206064241060741060A064340064244060644060606"
theorem cover_2314662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2314662)
  decide +kernel
#print axioms cover_2314662

def state_2314714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
def hex_2314714 : String := "42444305064340410544050605064405430506"
theorem cover_2314714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2314714)
  decide +kernel
#print axioms cover_2314714
end Mub6.Numerical.CircleFullD0.Forest
