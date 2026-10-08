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
def state_968682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
def hex_968682 : String := "4244430540414244054305400741080507424405050541424405050505434006410805404142070707410842440508440507440907"
theorem cover_968682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_968682)
  decide +kernel
#print axioms cover_968682

def state_968735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
def hex_968735 : String := "424405430541400742050540070509"
theorem cover_968735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968735 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_968735)
  decide +kernel
#print axioms cover_968735

def state_968750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
def hex_968750 : String := "41424405430508094244050505"
theorem cover_968750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_968750)
  decide +kernel
#print axioms cover_968750

def state_968763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 29)))
def hex_968763 : String := "4340064108054041424443064006080607424443074140074208070707074108424443054041084205050808440907"
theorem cover_968763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_968763)
  decide +kernel
#print axioms cover_968763

def state_968810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 14)))
def hex_968810 : String := "440907"
theorem cover_968810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_968810)
  decide +kernel
#print axioms cover_968810

def state_968813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 15)))
def hex_968813 : String := "40064108424306444006080607"
theorem cover_968813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_968813)
  decide +kernel
#print axioms cover_968813

def state_968833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
def hex_968833 : String := "4142090707"
theorem cover_968833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_968833)
  decide +kernel
#print axioms cover_968833

def state_968839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
def hex_968839 : String := "4244434041050741420544430605054209444307050705054443074005410542050707"
theorem cover_968839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_968839)
  decide +kernel
#print axioms cover_968839

def state_968875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 28)))
def hex_968875 : String := "444340074142444340074142090742090709090742444340074107070A430709074041050A414205054209440A05434007414207070705"
theorem cover_968875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_968875)
  decide +kernel
#print axioms cover_968875

def state_968930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 28)))
def hex_968930 : String := "444307400741070707"
theorem cover_968930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_968930)
  decide +kernel
#print axioms cover_968930
end Mub6.Numerical.CircleFullD0.Forest
