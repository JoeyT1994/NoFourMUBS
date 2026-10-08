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
def state_1619628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 9)))
def hex_1619628 : String := "414306404206440606064305404205444305414440070505050505"
theorem cover_1619628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1619628)
  decide +kernel
#print axioms cover_1619628

def state_1619656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
def hex_1619656 : String := "43054442054305404105050505"
theorem cover_1619656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1619656)
  decide +kernel
#print axioms cover_1619656

def state_1619669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
def hex_1619669 : String := "43054443404105050540414244430541420505050544430541400705400705430541050542444305420505054443054006050541050543054041050505"
theorem cover_1619669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1619669)
  decide +kernel
#print axioms cover_1619669

def state_1619730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_1619730 : String := "414205430544060505"
theorem cover_1619730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1619730)
  decide +kernel
#print axioms cover_1619730

def state_1619739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_1619739 : String := "40414205430544410605050505"
theorem cover_1619739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1619739)
  decide +kernel
#print axioms cover_1619739

def state_1619753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_1619753 : String := "4440070540070A"
theorem cover_1619753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1619753)
  decide +kernel
#print axioms cover_1619753

def state_1619762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1619762 : String := "414307424441430740070A43074007420A07414307400742440606074305400705440741070743054244434007054041070741050543054041050505440705"
theorem cover_1619762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1619762)
  decide +kernel
#print axioms cover_1619762

def state_1619825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1619825 : String := "41430542440A404105050544404107050540414305440705050505"
theorem cover_1619825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1619825)
  decide +kernel
#print axioms cover_1619825

def state_1619852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_1619852 : String := "404143074442414305090507070541430544420540410705050505"
theorem cover_1619852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1619852)
  decide +kernel
#print axioms cover_1619852
end Mub6.Numerical.CircleFullD0.Forest
