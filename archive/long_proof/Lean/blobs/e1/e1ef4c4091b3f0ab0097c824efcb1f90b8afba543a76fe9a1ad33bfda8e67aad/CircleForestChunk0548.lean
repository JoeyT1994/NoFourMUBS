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
def state_1320317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1320317 : String := "404409434241050905094443424105070507430507"
theorem cover_1320317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1320317)
  decide +kernel
#print axioms cover_1320317

def state_1320339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1320339 : String := "09"
theorem cover_1320339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1320339)
  decide +kernel
#print axioms cover_1320339

def state_1320341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 50)))
def hex_1320341 : String := "07"
theorem cover_1320341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1320341)
  decide +kernel
#print axioms cover_1320341

def state_1320342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 51)))
def hex_1320342 : String := "434241404409434208050744074342410540444305070544430505050507400944074342414044090844434241404407050607050743420605068007070707"
theorem cover_1320342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 63) (hex := hex_1320342)
  decide +kernel
#print axioms cover_1320342

def state_1320405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 25)))
def hex_1320405 : String := "42414008060807"
theorem cover_1320405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1320405)
  decide +kernel
#print axioms cover_1320405

def state_1320413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
def hex_1320413 : String := "42084043444105080808434441054206050506"
theorem cover_1320413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1320413)
  decide +kernel
#print axioms cover_1320413

def state_1320432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
def hex_1320432 : String := "4208400843444208414043050843054442060505400843444241400843050640084344420841058008080542080544420807080808"
theorem cover_1320432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 53) (hex := hex_1320432)
  decide +kernel
#print axioms cover_1320432

def state_1320485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1320485 : String := "40084341050A08"
theorem cover_1320485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320485 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1320485)
  decide +kernel
#print axioms cover_1320485

def state_1320492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1320492 : String := "44400844414206434009440706064208090808"
theorem cover_1320492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1320492)
  decide +kernel
#print axioms cover_1320492

def state_1320512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
def hex_1320512 : String := "444042430A440909094243444105404305090505444140094407054009074105400A4243444105400905054407084305074305440705400A05"
theorem cover_1320512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320512 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_1320512)
  decide +kernel
#print axioms cover_1320512
end Mub6.Numerical.CircleFullD0.Forest
