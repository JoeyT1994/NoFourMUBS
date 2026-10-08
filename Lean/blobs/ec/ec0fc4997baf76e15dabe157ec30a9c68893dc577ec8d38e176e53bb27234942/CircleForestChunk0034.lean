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
def state_7994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_7994 : String := "424305440540419A4209054142430544050905054305440540414205050505"
theorem cover_7994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_7994)
  decide +kernel
#print axioms cover_7994

def state_8027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 9)))
def hex_8027 : String := "40444341420540050A0A0505444341060A4106420640444341060A05050606"
theorem cover_8027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_8027)
  decide +kernel
#print axioms cover_8027

def state_8059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 9)))
def hex_8059 : String := "4443414007440807400744424308410707070741400544420507054044420507054442434140054442050505400544420507050507420507430705"
theorem cover_8059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_8059)
  decide +kernel
#print axioms cover_8059

def state_8120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 18)))
def hex_8120 : String := "4108404442080842080708"
theorem cover_8120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_8120)
  decide +kernel
#print axioms cover_8120

def state_8132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
def hex_8132 : String := "40444243080508420507440806"
theorem cover_8132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_8132)
  decide +kernel
#print axioms cover_8132

def state_8146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
def hex_8146 : String := "444243410840444243084105050742050744080841400506404442050505444206430841054005064205430705434107074107074243410840054408050507"
theorem cover_8146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_8146)
  decide +kernel
#print axioms cover_8146

def state_8209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
def hex_8209 : String := "4442430806430841084042440807070842064308410607"
theorem cover_8209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_8209)
  decide +kernel
#print axioms cover_8209

def state_8232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 19)))
def hex_8232 : String := "434108400708414005064044420507054442060706"
theorem cover_8232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_8232)
  decide +kernel
#print axioms cover_8232
end Mub6.Numerical.CircleFullPrototype.Forest
