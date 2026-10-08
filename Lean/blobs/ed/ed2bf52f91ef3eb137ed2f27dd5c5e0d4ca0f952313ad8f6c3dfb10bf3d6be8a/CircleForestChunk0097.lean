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
def state_960723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 111)))
def hex_960723 : String := "43404108080840410842084443080808410808"
theorem cover_960723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_960723)
  decide +kernel
#print axioms cover_960723

def state_960742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
def hex_960742 : String := "414208444308060842440607440608"
theorem cover_960742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_960742)
  decide +kernel
#print axioms cover_960742

def state_960758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
def hex_960758 : String := "444305064340414205050505404142074406434009060642060A06"
theorem cover_960758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960758 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_960758)
  decide +kernel
#print axioms cover_960758

def state_960786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
def hex_960786 : String := "430506"
theorem cover_960786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_960786)
  decide +kernel
#print axioms cover_960786

def state_960790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
def hex_960790 : String := "40414205050505"
theorem cover_960790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_960790)
  decide +kernel
#print axioms cover_960790

def state_960799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
def hex_960799 : String := "424443050643404142080805054041090A0644430506434041424405050505054041424443400A0506084443050A08420A440543050A4142060806"
theorem cover_960799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_960799)
  decide +kernel
#print axioms cover_960799

def state_960858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
def hex_960858 : String := "42440543050644054305400A05"
theorem cover_960858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_960858)
  decide +kernel
#print axioms cover_960858

def state_960871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
def hex_960871 : String := "414206440543050606"
theorem cover_960871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_960871)
  decide +kernel
#print axioms cover_960871

def state_960880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
def hex_960880 : String := "414244060744064308404107060642064405430506"
theorem cover_960880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_960880)
  decide +kernel
#print axioms cover_960880

def state_960901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
def hex_960901 : String := "4244054305400A05440543054041424405430506440543054041420505050542050506"
theorem cover_960901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_960901)
  decide +kernel
#print axioms cover_960901
end Mub6.Numerical.CircleFullD0.Forest
