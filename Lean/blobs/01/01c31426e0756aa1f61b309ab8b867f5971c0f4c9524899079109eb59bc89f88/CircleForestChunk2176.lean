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
def state_2602806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
def hex_2602806 : String := "4341440640420707064440420A0A06400542054305064144060744404306060640074342060606"
theorem cover_2602806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2602806)
  decide +kernel
#print axioms cover_2602806

def state_2602845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
def hex_2602845 : String := "434144064042060606440A4009424306060641064406400806"
theorem cover_2602845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2602845)
  decide +kernel
#print axioms cover_2602845

def state_2602873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2602873 : String := "424344410709410706074344414208084208430840444208080808084441074207084107420708"
theorem cover_2602873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2602873)
  decide +kernel
#print axioms cover_2602873

def state_2602913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2602913 : String := "4344094306440906440506"
theorem cover_2602913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602913 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2602913)
  decide +kernel
#print axioms cover_2602913

def state_2602925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_2602925 : String := "44420943080842430844400841080940060608"
theorem cover_2602925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2602925)
  decide +kernel
#print axioms cover_2602925

def state_2602944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_2602944 : String := "44424005414344054205070505400541430805054244404106054107050644404108054143084205084342050805400841084308420507"
theorem cover_2602944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2602944)
  decide +kernel
#print axioms cover_2602944

def state_2603001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2603001 : String := "43444041080909404108430607410843060A4440070A40070A"
theorem cover_2603001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_2603001)
  decide +kernel
#print axioms cover_2603001

def state_2603026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_2603026 : String := "434408400841050844404108424308070841084243080A084041084207084108424443080A0A08"
theorem cover_2603026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2603026)
  decide +kernel
#print axioms cover_2603026
end Mub6.Numerical.CircleFullD0.Forest
