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
def state_379303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_379303 : String := "43420A4440410A07090742440940410A070A44404143420944090A420944094041430A4406064309090A430909414309090940410A430744420707070A"
theorem cover_379303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_379303)
  decide +kernel
#print axioms cover_379303

def state_379364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_379364 : String := "404105430A4442410A07410507050A"
theorem cover_379364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_379364)
  decide +kernel
#print axioms cover_379364

def state_379381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_379381 : String := "41420843444005410543420644060506050542430606434441060641060606"
theorem cover_379381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_379381)
  decide +kernel
#print axioms cover_379381

def state_379413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_379413 : String := "42084344080808"
theorem cover_379413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_379413)
  decide +kernel
#print axioms cover_379413

def state_379421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 4)))
def hex_379421 : String := "434409404106060808"
theorem cover_379421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_379421)
  decide +kernel
#print axioms cover_379421

def state_379430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 4)))
def hex_379430 : String := "434440414342094409400641080942060843090941430908094041434442064006080808434442064106064206070641084344090744080844404106060808"
theorem cover_379430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_379430)
  decide +kernel
#print axioms cover_379430

def state_379493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_379493 : String := "4041054442064341050606054108444208434041084443070607080808"
theorem cover_379493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_379493)
  decide +kernel
#print axioms cover_379493

def state_379523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_379523 : String := "4142430844050743440507054243440841084208074405074344050705"
theorem cover_379523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_379523)
  decide +kernel
#print axioms cover_379523
end Mub6.Numerical.CircleFullPrototype.Forest
