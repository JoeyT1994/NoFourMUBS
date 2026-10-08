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
def state_2578714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 92 else (if j.val < 4 then 97 else 36)))
def hex_2578714 : String := "4006414408084443060606"
theorem cover_2578714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2578714)
  decide +kernel
#print axioms cover_2578714

def state_2578726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 97 else 36)))
def hex_2578726 : String := "4144090906"
theorem cover_2578726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2578726)
  decide +kernel
#print axioms cover_2578726

def state_2578732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 78) else (if j.val < 3 then 93 else (if j.val < 4 then 97 else 36)))
def hex_2578732 : String := "444342404109064105054041440709440709414407084407430508424009084041090941084408084342400608404109064108084208400908"
theorem cover_2578732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2578732)
  decide +kernel
#print axioms cover_2578732

def state_2578789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 79) else (if j.val < 3 then 93 else (if j.val < 4 then 97 else 36)))
def hex_2578789 : String := "44434240060A0A424006080A430642060A"
theorem cover_2578789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2578789)
  decide +kernel
#print axioms cover_2578789

def state_2578806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 37)))
def hex_2578806 : String := "4306420640064144434206400608080606"
theorem cover_2578806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2578806)
  decide +kernel
#print axioms cover_2578806

def state_2578824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 18)))
def hex_2578824 : String := "410909"
theorem cover_2578824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2578824)
  decide +kernel
#print axioms cover_2578824

def state_2578828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 18)))
def hex_2578828 : String := "44424309084340094108440808094208430908"
theorem cover_2578828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2578828)
  decide +kernel
#print axioms cover_2578828

def state_2578847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 18)))
def hex_2578847 : String := "444243400908094340094144420843400908080844424340090808430A40050842084340090808400941084408084243090843400941080809"
theorem cover_2578847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2578847)
  decide +kernel
#print axioms cover_2578847

def state_2578906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
def hex_2578906 : String := "414442434009414407094407090943400541070705424340064109060943400541440505440505054442430640054105054308054206430605"
theorem cover_2578906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2578906)
  decide +kernel
#print axioms cover_2578906
end Mub6.Numerical.CircleFullD0.Forest
