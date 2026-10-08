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
def state_1048003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
def hex_1048003 : String := "4207434440410842074344404107050508440608070844404106060640410842070807"
theorem cover_1048003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1048003)
  decide +kernel
#print axioms cover_1048003

def state_1048039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 15)))
def hex_1048039 : String := "07"
theorem cover_1048039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1048039)
  decide +kernel
#print axioms cover_1048039

def state_1048042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
def hex_1048042 : String := "4041420743440540410505054406404142074308064207430506064205430544094041420509050507"
theorem cover_1048042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1048042)
  decide +kernel
#print axioms cover_1048042

def state_1048085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
def hex_1048085 : String := "42430707434440410805084041084208080844404108420743440508444041060606080840410842080808"
theorem cover_1048085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1048085)
  decide +kernel
#print axioms cover_1048085

def state_1048129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 31)))
def hex_1048129 : String := "430507"
theorem cover_1048129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1048129)
  decide +kernel
#print axioms cover_1048129

def state_1048133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 31)))
def hex_1048133 : String := "440540414205050505"
theorem cover_1048133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1048133)
  decide +kernel
#print axioms cover_1048133

def state_1048143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
def hex_1048143 : String := "40414207430544404106050540414243050643050642050941060542054305440540414205050505410705"
theorem cover_1048143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1048143)
  decide +kernel
#print axioms cover_1048143

def state_1048189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 102) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 63)))
def hex_1048189 : String := "434405404107050544074041070707"
theorem cover_1048189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1048189)
  decide +kernel
#print axioms cover_1048189

def state_1048204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 63)))
def hex_1048204 : String := "43444041420505050540410842050A084440414208084243054407844344058444404142060609068441084205084041088408"
theorem cover_1048204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1048204)
  decide +kernel
#print axioms cover_1048204
end Mub6.Numerical.CircleFullD0.Forest
