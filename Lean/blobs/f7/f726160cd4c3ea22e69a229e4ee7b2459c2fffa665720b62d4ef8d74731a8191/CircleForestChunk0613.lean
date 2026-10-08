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
def state_385967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_385967 : String := "4243054440064143050806054306444006414243064441090606060606"
theorem cover_385967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_385967)
  decide +kernel
#print axioms cover_385967

def state_385997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_385997 : String := "414243064406400609434440410A42060A0606444041420606060606424344050944050943440509444042064305060606"
theorem cover_385997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_385997)
  decide +kernel
#print axioms cover_385997

def state_386046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_386046 : String := "414243440506440509430644410A0641080642054305440606"
theorem cover_386046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_386046)
  decide +kernel
#print axioms cover_386046

def state_386075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_386075 : String := "434440074107070807"
theorem cover_386075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_386075)
  decide +kernel
#print axioms cover_386075

def state_386086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_386086 : String := "404107420743070707"
theorem cover_386086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_386086)
  decide +kernel
#print axioms cover_386086

def state_386097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_386097 : String := "4243440705074344070A440740410742074407430A0707"
theorem cover_386097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_386097)
  decide +kernel
#print axioms cover_386097

def state_386121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
def hex_386121 : String := "08"
theorem cover_386121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_386121)
  decide +kernel
#print axioms cover_386121

def state_386123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 5)))
def hex_386123 : String := "44404208094207094042430808430A44410A08410A0842080A"
theorem cover_386123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_386123)
  decide +kernel
#print axioms cover_386123

def state_386149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 10)))
def hex_386149 : String := "40420741070807"
theorem cover_386149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_386149)
  decide +kernel
#print axioms cover_386149

def state_386157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 11)))
def hex_386157 : String := "4244084143050508444143404207440741070807070841434042050A0A40420544410505054207440741050543400808404205444105080542084408410505"
theorem cover_386157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_386157)
  decide +kernel
#print axioms cover_386157
end Mub6.Numerical.CircleFullPrototype.Forest
