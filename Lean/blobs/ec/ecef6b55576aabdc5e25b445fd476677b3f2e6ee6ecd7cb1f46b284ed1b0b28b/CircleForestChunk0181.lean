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
def state_64790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 7)))
def hex_64790 : String := "404143444207080544424143084408404105070508414308090842074105074307440807414344080544420808054307440807"
theorem cover_64790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_64790)
  decide +kernel
#print axioms cover_64790

def state_64841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 7)))
def hex_64841 : String := "40414344080544094241050606430644080641094344090508"
theorem cover_64841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_64841)
  decide +kernel
#print axioms cover_64841

def state_64867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_64867 : String := "420A4344074041420A07050A07"
theorem cover_64867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_64867)
  decide +kernel
#print axioms cover_64867

def state_64885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 14)))
def hex_64885 : String := "4243410A0A0A434144090944084042410A0808090A"
theorem cover_64885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_64885)
  decide +kernel
#print axioms cover_64885

def state_64906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 15)))
def hex_64906 : String := "4243410507410A0A434140440905054044424143070907094207410506440905414044094205090940440A42434105070A4309090A"
theorem cover_64906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_64906)
  decide +kernel
#print axioms cover_64906

def state_64959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
def hex_64959 : String := "44420A43080A4243070A434041444207080707074041440A420A43414044090607070A440A070A"
theorem cover_64959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_64959)
  decide +kernel
#print axioms cover_64959

def state_64998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
def hex_64998 : String := "41440A420A430509440A420743070A"
theorem cover_64998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_64998)
  decide +kernel
#print axioms cover_64998

def state_65013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 7)))
def hex_65013 : String := "40410A0A0A"
theorem cover_65013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_65013)
  decide +kernel
#print axioms cover_65013

def state_65021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_65021 : String := "444243094107440709094243094109404409090909"
theorem cover_65021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_65021)
  decide +kernel
#print axioms cover_65021
end Mub6.Numerical.CircleFullPrototype.Forest
