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
def state_12865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
def hex_12865 : String := "4144404243070743410A080842070A40424341060806434144410A08410608080842064341064440080709064440420708074042080842430806430908"
theorem cover_12865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_12865)
  decide +kernel
#print axioms cover_12865

def state_12926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_12926 : String := "41440A0644434008070A43400842060806"
theorem cover_12926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_12926)
  decide +kernel
#print axioms cover_12926

def state_12943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_12943 : String := "4206434144070644074042064309070706"
theorem cover_12943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_12943)
  decide +kernel
#print axioms cover_12943

def state_12960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_12960 : String := "4042434441050805054344414042054309050609060606"
theorem cover_12960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12960 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_12960)
  decide +kernel
#print axioms cover_12960

def state_12989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 4)))
def hex_12989 : String := "44054041424405094405430507420905410505"
theorem cover_12989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_12989)
  decide +kernel
#print axioms cover_12989

def state_13009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 8)))
def hex_13009 : String := "40414243050A0A42430544050805410505"
theorem cover_13009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_13009)
  decide +kernel
#print axioms cover_13009

def state_13027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
def hex_13027 : String := "41424344414243440509440A40410A090943050A4243054405090509440A414243090A0A0943440A070A42430944080943440507440807"
theorem cover_13027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_13027)
  decide +kernel
#print axioms cover_13027

def state_13082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
def hex_13082 : String := "414243440509440A40410A0941060943440540410505050A4243094440420505050943050A"
theorem cover_13082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_13082)
  decide +kernel
#print axioms cover_13082
end Mub6.Numerical.CircleFullPrototype.Forest
