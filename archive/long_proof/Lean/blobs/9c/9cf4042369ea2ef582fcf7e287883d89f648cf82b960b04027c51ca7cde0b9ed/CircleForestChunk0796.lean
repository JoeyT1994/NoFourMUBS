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
def state_1491726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
def hex_1491726 : String := "430941090A"
theorem cover_1491726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1491726)
  decide +kernel
#print axioms cover_1491726

def state_1491734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 15)))
def hex_1491734 : String := "42090A"
theorem cover_1491734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1491734)
  decide +kernel
#print axioms cover_1491734

def state_1491738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 15)))
def hex_1491738 : String := "4440434142070A42074440074341050507050743410942094443094041070709094109420644400706064043050706"
theorem cover_1491738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1491738)
  decide +kernel
#print axioms cover_1491738

def state_1491787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 30)))
def hex_1491787 : String := "434105420505410A4244070505"
theorem cover_1491787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1491787)
  decide +kernel
#print axioms cover_1491787

def state_1491801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 30)))
def hex_1491801 : String := "410A42444340050940410505090505"
theorem cover_1491801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491801 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1491801)
  decide +kernel
#print axioms cover_1491801

def state_1491816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
def hex_1491816 : String := "4142090A42444043414207054207050743094109094043050706444043054105420505434105420505410942444043050709050505"
theorem cover_1491816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1491816)
  decide +kernel
#print axioms cover_1491816

def state_1491869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 31)))
def hex_1491869 : String := "40054305410505"
theorem cover_1491869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1491869)
  decide +kernel
#print axioms cover_1491869

def state_1491877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 15)))
def hex_1491877 : String := "42084440430A0843094206410608400506"
theorem cover_1491877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1491877)
  decide +kernel
#print axioms cover_1491877

def state_1491895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 15)))
def hex_1491895 : String := "44400743070607"
theorem cover_1491895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1491895)
  decide +kernel
#print axioms cover_1491895

def state_1491904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
def hex_1491904 : String := "434142070A42074440074307070508"
theorem cover_1491904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491904 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1491904)
  decide +kernel
#print axioms cover_1491904

def state_1491921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 30)))
def hex_1491921 : String := "4244400706064440430A41070709400506"
theorem cover_1491921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1491921)
  decide +kernel
#print axioms cover_1491921

def state_1491939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 50 else 30)))
def hex_1491939 : String := "44400743070707"
theorem cover_1491939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1491939)
  decide +kernel
#print axioms cover_1491939

def state_1491948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
def hex_1491948 : String := "4341420705420744400543050705410707"
theorem cover_1491948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1491948)
  decide +kernel
#print axioms cover_1491948
end Mub6.Numerical.CircleFullD0.Forest
