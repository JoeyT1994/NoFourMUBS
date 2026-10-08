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
def state_1468903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_1468903 : String := "434409400741430907074409400709"
theorem cover_1468903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1468903)
  decide +kernel
#print axioms cover_1468903

def state_1468919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
def hex_1468919 : String := "44400609404106094142430944094007090909"
theorem cover_1468919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1468919)
  decide +kernel
#print axioms cover_1468919

def state_1468938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_1468938 : String := "44404106420A06414209440506420944060940414243074409074306440606420743064406064142090942094309440909"
theorem cover_1468938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 49) (hex := hex_1468938)
  decide +kernel
#print axioms cover_1468938

def state_1468987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1468987 : String := "4243070A434408094440420A070A400709"
theorem cover_1468987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1468987)
  decide +kernel
#print axioms cover_1468987

def state_1469007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1469007 : String := "41424344410809060643440808440806424344070A440706430944094309440706"
theorem cover_1469007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1469007)
  decide +kernel
#print axioms cover_1469007

def state_1469045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_1469045 : String := "414243440606060842430944070609"
theorem cover_1469045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1469045)
  decide +kernel
#print axioms cover_1469045

def state_1469063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 4)))
def hex_1469063 : String := "444041050A4105420A0505"
theorem cover_1469063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1469063)
  decide +kernel
#print axioms cover_1469063

def state_1469076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1469076 : String := "41064206430606"
theorem cover_1469076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1469076)
  decide +kernel
#print axioms cover_1469076

def state_1469084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1469084 : String := "42064344400641064206050506"
theorem cover_1469084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1469084)
  decide +kernel
#print axioms cover_1469084

def state_1469098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 8)))
def hex_1469098 : String := "43444006420641064306060606"
theorem cover_1469098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1469098)
  decide +kernel
#print axioms cover_1469098

def state_1469114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
def hex_1469114 : String := "41064206430544400641060905"
theorem cover_1469114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1469114)
  decide +kernel
#print axioms cover_1469114

def state_1469128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
def hex_1469128 : String := "424305064305444006410542050505"
theorem cover_1469128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1469128)
  decide +kernel
#print axioms cover_1469128
end Mub6.Numerical.CircleFullD0.Forest
