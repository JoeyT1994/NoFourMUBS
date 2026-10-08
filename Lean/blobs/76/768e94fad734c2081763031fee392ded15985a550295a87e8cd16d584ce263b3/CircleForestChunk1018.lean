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
def state_1544733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 117) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 84)))
def hex_1544733 : String := "42444106074106434006420644070506444143050643090741054340060506"
theorem cover_1544733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1544733)
  decide +kernel
#print axioms cover_1544733

def state_1544764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 117) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 84)))
def hex_1544764 : String := "4244414308400608084143050643084006084441430505430840070741054305404244070505420805"
theorem cover_1544764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1544764)
  decide +kernel
#print axioms cover_1544764

def state_1544805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 85)))
def hex_1544805 : String := "4105430540064244410543050606440505"
theorem cover_1544805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1544805)
  decide +kernel
#print axioms cover_1544805

def state_1544822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
def hex_1544822 : String := "400642064441064340064244070644074106434006420607060606"
theorem cover_1544822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 27) (hex := hex_1544822)
  decide +kernel
#print axioms cover_1544822

def state_1544851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
def hex_1544851 : String := "424407434140064244430A060644430906430906400742070941060744430907430941400642064409064007420707"
theorem cover_1544851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1544851)
  decide +kernel
#print axioms cover_1544851

def state_1544900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 84)))
def hex_1544900 : String := "4341404207440743080708084140070707"
theorem cover_1544900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1544900)
  decide +kernel
#print axioms cover_1544900

def state_1544920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 118) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 85)))
def hex_1544920 : String := "42444308410607434140064206080A41064006420644070644430A414006420808400707430A41064006424408060A"
theorem cover_1544920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1544920)
  decide +kernel
#print axioms cover_1544920

def state_1544967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 85)))
def hex_1544967 : String := "4244084308084408430841404208050508"
theorem cover_1544967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1544967)
  decide +kernel
#print axioms cover_1544967
end Mub6.Numerical.CircleFullD0.Forest
