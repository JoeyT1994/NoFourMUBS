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
def state_139439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_139439 : String := "44424344400707090943440740074107080709"
theorem cover_139439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_139439)
  decide +kernel
#print axioms cover_139439

def state_139458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_139458 : String := "4344084006064407434009410742060507"
theorem cover_139458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_139458)
  decide +kernel
#print axioms cover_139458

def state_139481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_139481 : String := "42444306064341054205400744060541074207074407430A07"
theorem cover_139481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_139481)
  decide +kernel
#print axioms cover_139481

def state_139506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_139506 : String := "42440843084240084144060508404107084144064342050807084408434008410A0840410708414244060707420808"
theorem cover_139506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_139506)
  decide +kernel
#print axioms cover_139506

def state_139554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_139554 : String := "42440643050644064340410A4206090640410642060706"
theorem cover_139554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_139554)
  decide +kernel
#print axioms cover_139554

def state_139577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_139577 : String := "4244064340080640420641060806440643404142080808410608404142064406430A064244064308064406430840080606"
theorem cover_139577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_139577)
  decide +kernel
#print axioms cover_139577

def state_139627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_139627 : String := "414205430A44070542434442054009410508050943440A0A4440410742094308074142430A070A424344080909430A44070740094142050A09"
theorem cover_139627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_139627)
  decide +kernel
#print axioms cover_139627

def state_139685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_139685 : String := "420543054440410542050A0505"
theorem cover_139685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_139685)
  decide +kernel
#print axioms cover_139685
end Mub6.Numerical.CircleFullPrototype.Forest
