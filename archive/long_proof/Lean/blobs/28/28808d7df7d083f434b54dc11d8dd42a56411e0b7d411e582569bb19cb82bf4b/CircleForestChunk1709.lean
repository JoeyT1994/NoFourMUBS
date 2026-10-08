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
def state_2283356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 228) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
def hex_2283356 : String := "4442430540410544054205050505424308084305400505"
theorem cover_2283356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2283356)
  decide +kernel
#print axioms cover_2283356

def state_2283380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 250)))
def hex_2283380 : String := "424340070A404144420A054207090A414405420A050A434041050705400941054405420A05"
theorem cover_2283380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2283380)
  decide +kernel
#print axioms cover_2283380

def state_2283417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 251)))
def hex_2283417 : String := "42430740074144420843054005050844420743070A074340074105074009414405424305080544424307090909"
theorem cover_2283417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2283417)
  decide +kernel
#print axioms cover_2283417

def state_2283463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 172 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2283463 : String := "4144424340094108090609424309060944424309060909"
theorem cover_2283463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2283463)
  decide +kernel
#print axioms cover_2283463

def state_2283487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 228) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2283487 : String := "444243404105444206050641054405064006064305404105090542430806434009054006410506"
theorem cover_2283487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2283487)
  decide +kernel
#print axioms cover_2283487

def state_2283527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 250)))
def hex_2283527 : String := "4243404144420643090606440A064144420643050506440A06064340094105444243050A05424340090506094009414407064442060906"
theorem cover_2283527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2283527)
  decide +kernel
#print axioms cover_2283527
end Mub6.Numerical.CircleFullD0.Forest
