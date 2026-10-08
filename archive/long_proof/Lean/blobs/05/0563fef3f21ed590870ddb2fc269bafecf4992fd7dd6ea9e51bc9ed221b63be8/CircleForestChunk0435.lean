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
def state_179972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 14)))
def hex_179972 : String := "404305440541424006060505430544054142400643054405414240064305440541070505050505"
theorem cover_179972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 39) (hex := hex_179972)
  decide +kernel
#print axioms cover_179972

def state_180015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 15)))
def hex_180015 : String := "44414243070543074044070507420A430A0A414205070A"
theorem cover_180015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_180015)
  decide +kernel
#print axioms cover_180015

def state_180038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 15)))
def hex_180038 : String := "444142054005054240050540430A4441050A0A43444142054043070A070A0A4441054205400A4344414205400A070A0A4441050A0541050A41050A"
theorem cover_180038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_180038)
  decide +kernel
#print axioms cover_180038

def state_180098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 15)))
def hex_180098 : String := "44410709410709"
theorem cover_180098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_180098)
  decide +kernel
#print axioms cover_180098

def state_180107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 30)))
def hex_180107 : String := "42054043070507"
theorem cover_180107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_180107)
  decide +kernel
#print axioms cover_180107

def state_180115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 30)))
def hex_180115 : String := "4043090509"
theorem cover_180115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_180115)
  decide +kernel
#print axioms cover_180115

def state_180122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 58 else 30)))
def hex_180122 : String := "444107420940430744070707410709"
theorem cover_180122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_180122)
  decide +kernel
#print axioms cover_180122

def state_180139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 98) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 60)))
def hex_180139 : String := "4205400507"
theorem cover_180139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_180139)
  decide +kernel
#print axioms cover_180139

def state_180145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 98 else (if j.val < 4 then 59 else 60)))
def hex_180145 : String := "400509"
theorem cover_180145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_180145)
  decide +kernel
#print axioms cover_180145

def state_180148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 99 else (if j.val < 4 then 59 else 60)))
def hex_180148 : String := "40434441074209400A0741070A444105420540434441420506060A9643444107060796410542050A4344070744410742094043079607410542054043070507"
theorem cover_180148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_180148)
  decide +kernel
#print axioms cover_180148

def state_180211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 61)))
def hex_180211 : String := "41054205400A430705"
theorem cover_180211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_180211)
  decide +kernel
#print axioms cover_180211

def state_180220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 30)))
def hex_180220 : String := "4307444107420940430744070707410509"
theorem cover_180220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_180220)
  decide +kernel
#print axioms cover_180220
end Mub6.Numerical.CircleFullPrototype.Forest
