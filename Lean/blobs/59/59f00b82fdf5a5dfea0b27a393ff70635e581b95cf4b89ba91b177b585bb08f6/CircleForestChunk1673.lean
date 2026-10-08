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
def state_2274731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
def hex_2274731 : String := "41440742080744424309094340440541054209430505070742094340444109420943090941084208430909094044410742060741060607"
theorem cover_2274731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274731 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2274731)
  decide +kernel
#print axioms cover_2274731

def state_2274786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
def hex_2274786 : String := "40414407434206070644434244400606064440410743420607060740410706074206440706434206444006060606410744074342060706"
theorem cover_2274786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2274786)
  decide +kernel
#print axioms cover_2274786

def state_2274844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
def hex_2274844 : String := "44074243050705"
theorem cover_2274844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2274844)
  decide +kernel
#print axioms cover_2274844

def state_2274854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 28)))
def hex_2274854 : String := "44400505404105424305444005054041050841050A0541054243050505"
theorem cover_2274854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2274854)
  decide +kernel
#print axioms cover_2274854

def state_2274883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 28)))
def hex_2274883 : String := "444041050807404107424344400807404142434405400605060708410708440740410606074344054008070707"
theorem cover_2274883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_2274883)
  decide +kernel
#print axioms cover_2274883

def state_2274928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 28)))
def hex_2274928 : String := "4305440507"
theorem cover_2274928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2274928)
  decide +kernel
#print axioms cover_2274928

def state_2274938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 54) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 58)))
def hex_2274938 : String := "424305440540050505"
theorem cover_2274938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2274938)
  decide +kernel
#print axioms cover_2274938

def state_2274949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 88 else 58)))
def hex_2274949 : String := "444041050A05404105420A094105420A05"
theorem cover_2274949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2274949)
  decide +kernel
#print axioms cover_2274949

def state_2274967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 89 else 116)))
def hex_2274967 : String := "4041424305440540090505420A094105420A43054405410508"
theorem cover_2274967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2274967)
  decide +kernel
#print axioms cover_2274967
end Mub6.Numerical.CircleFullD0.Forest
