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
def state_10661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
def hex_10661 : String := "40424443060707074244434007424405070540424441070607074244414340070540070A430540060541070744410705074307074443050707"
theorem cover_10661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10661 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_10661)
  decide +kernel
#print axioms cover_10661

def state_10719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 8)))
def hex_10719 : String := "410940424344064240060A06090942434409400A0A0A09"
theorem cover_10719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_10719)
  decide +kernel
#print axioms cover_10719

def state_10742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
def hex_10742 : String := "414042430705074243440A070A0A40424307070742434440424344410706070A07424344410A40070A4107070A0A07440A07430707"
theorem cover_10742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_10742)
  decide +kernel
#print axioms cover_10742

def state_10795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 4)))
def hex_10795 : String := "43444109064107070A"
theorem cover_10795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_10795)
  decide +kernel
#print axioms cover_10795

def state_10805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_10805 : String := "44400742430707074005424341050505434108440740050605"
theorem cover_10805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_10805)
  decide +kernel
#print axioms cover_10805

def state_10830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_10830 : String := "44404207074243410707410744070743070740420543440705054243440709054344074140050707440705"
theorem cover_10830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_10830)
  decide +kernel
#print axioms cover_10830

def state_10873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
def hex_10873 : String := "444143090943404244090507420A0A094105434440054205070505"
theorem cover_10873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_10873)
  decide +kernel
#print axioms cover_10873
end Mub6.Numerical.CircleFullPrototype.Forest
