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
def state_996226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 87)))
def hex_996226 : String := "41400744430641064209050640440543054241050505440543C642414007444305420905060505"
theorem cover_996226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_996226)
  decide +kernel
#print axioms cover_996226

def state_996265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
def hex_996265 : String := "4043054405414206050543440541C60544054142404405430506444305414206050543C641424006440A0A054206050505"
theorem cover_996265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_996265)
  decide +kernel
#print axioms cover_996265

def state_996314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 43)))
def hex_996314 : String := "41400543054405424107050505"
theorem cover_996314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996314 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_996314)
  decide +kernel
#print axioms cover_996314

def state_996331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 42)))
def hex_996331 : String := "43440542060506"
theorem cover_996331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_996331)
  decide +kernel
#print axioms cover_996331

def state_996339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 42)))
def hex_996339 : String := "4442414005070505424140434405410905064344074142400907090744074108060641400543050505"
theorem cover_996339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_996339)
  decide +kernel
#print axioms cover_996339

def state_996380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 42)))
def hex_996380 : String := "44420605424140064406060641404406430906444305074341090541080605"
theorem cover_996380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_996380)
  decide +kernel
#print axioms cover_996380

def state_996411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 42)))
def hex_996411 : String := "4005430506"
theorem cover_996411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_996411)
  decide +kernel
#print axioms cover_996411

def state_996416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 42)))
def hex_996416 : String := "41400543050505"
theorem cover_996416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_996416)
  decide +kernel
#print axioms cover_996416

def state_996426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
def hex_996426 : String := "44434241400644064309060641400944050905420641400609064342414007440907064107400A444305050A4206410906"
theorem cover_996426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_996426)
  decide +kernel
#print axioms cover_996426
end Mub6.Numerical.CircleFullD0.Forest
