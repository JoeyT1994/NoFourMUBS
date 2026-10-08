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
def state_167151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
def hex_167151 : String := "4144084342084108084208410808440609"
theorem cover_167151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_167151)
  decide +kernel
#print axioms cover_167151

def state_167169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 14)))
def hex_167169 : String := "40414406070641444205050705"
theorem cover_167169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_167169)
  decide +kernel
#print axioms cover_167169

def state_167183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 14)))
def hex_167183 : String := "414443060943424041070641074406070742400941094409090944064306424140064406430642410906090641400644060906"
theorem cover_167183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_167183)
  decide +kernel
#print axioms cover_167183

def state_167236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 28)))
def hex_167236 : String := "4342404406414306420806064406410805400605424044064109060A40090A"
theorem cover_167236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_167236)
  decide +kernel
#print axioms cover_167236

def state_167268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 46 else 29)))
def hex_167268 : String := "424041074443054240064107050507410744050507"
theorem cover_167268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_167268)
  decide +kernel
#print axioms cover_167268

def state_167291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
def hex_167291 : String := "414409074443424041090641080640094107054240090A094307424009410944434208070943074240090A0709"
theorem cover_167291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_167291)
  decide +kernel
#print axioms cover_167291

def state_167336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
def hex_167336 : String := "41440A0744434208050A43074240410A440843070A0A400707"
theorem cover_167336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_167336)
  decide +kernel
#print axioms cover_167336

def state_167361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 29)))
def hex_167361 : String := "40410744090741074443050A07"
theorem cover_167361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_167361)
  decide +kernel
#print axioms cover_167361

def state_167375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 28)))
def hex_167375 : String := "06"
theorem cover_167375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_167375)
  decide +kernel
#print axioms cover_167375

def state_167377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 46 else 29)))
def hex_167377 : String := "424041440505050505"
theorem cover_167377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_167377)
  decide +kernel
#print axioms cover_167377

def state_167390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 58)))
def hex_167390 : String := "06"
theorem cover_167390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_167390)
  decide +kernel
#print axioms cover_167390

def state_167392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 94 else 59)))
def hex_167392 : String := "42404144064306420606064144060705400605"
theorem cover_167392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_167392)
  decide +kernel
#print axioms cover_167392
end Mub6.Numerical.CircleFullPrototype.Forest
