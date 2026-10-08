import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_16931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 10)))
def hex_16931 : String := "430540054405430541424405070505"
theorem cover_16931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_16931)
  decide +kernel
#print axioms cover_16931

def state_16946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
def hex_16946 : String := "41424308444006410742090706074243070907"
theorem cover_16946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_16946)
  decide +kernel
#print axioms cover_16946

def state_16967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_16967 : String := "43414244074043410642060506434142064405064207054106064405400A43050A424405404305070705410A424407060A"
theorem cover_16967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_16967)
  decide +kernel
#print axioms cover_16967

def state_17020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 8)))
def hex_17020 : String := "07"
theorem cover_17020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_17020)
  decide +kernel
#print axioms cover_17020

def state_17022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 9)))
def hex_17022 : String := "43414207440740064144420606064407064207440540070741420644070607"
theorem cover_17022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_17022)
  decide +kernel
#print axioms cover_17022

def state_17054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 9)))
def hex_17054 : String := "41420744074144094240060940080844420740070742400743090740430806430809420744074407414207404344054108050743440741084007070707"
theorem cover_17054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17054 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_17054)
  decide +kernel
#print axioms cover_17054

def state_17115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 9)))
def hex_17115 : String := "41420744074341064407060607"
theorem cover_17115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_17115)
  decide +kernel
#print axioms cover_17115

def state_17129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 8)))
def hex_17129 : String := "400543410905410905"
theorem cover_17129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_17129)
  decide +kernel
#print axioms cover_17129

def state_17139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 9)))
def hex_17139 : String := "4341440542400A41080A05050A"
theorem cover_17139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_17139)
  decide +kernel
#print axioms cover_17139
end Mub6.Numerical.CircleFullPrototype.Forest
