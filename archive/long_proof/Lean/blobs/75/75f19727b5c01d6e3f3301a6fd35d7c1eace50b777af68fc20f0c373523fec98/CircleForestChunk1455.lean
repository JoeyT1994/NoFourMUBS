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
def state_1649947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1649947 : String := "4005434405424105400543440508050505"
theorem cover_1649947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1649947)
  decide +kernel
#print axioms cover_1649947

def state_1649965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1649965 : String := "43440542410540094309050905"
theorem cover_1649965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1649965)
  decide +kernel
#print axioms cover_1649965

def state_1649980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 106 else 84)))
def hex_1649980 : String := "424140050740434405424105070505434407070741054005434405424105400507410540050505"
theorem cover_1649980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649980 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1649980)
  decide +kernel
#print axioms cover_1649980

def state_1650020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 120 else (if j.val < 4 then 106 else 85)))
def hex_1650020 : String := "414043090543444207410540050708074043444241094009430807090944054241070A09434442070808440707"
theorem cover_1650020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1650020)
  decide +kernel
#print axioms cover_1650020

def state_1650065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 121 else (if j.val < 4 then 106 else 85)))
def hex_1650065 : String := "41400543080540430944050543084442070508"
theorem cover_1650065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1650065)
  decide +kernel
#print axioms cover_1650065

def state_1650084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 107 else 42)))
def hex_1650084 : String := "44054241054005074105400505"
theorem cover_1650084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1650084)
  decide +kernel
#print axioms cover_1650084

def state_1650097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 53 else 42)))
def hex_1650097 : String := "410540064344054241400543080540064308060605"
theorem cover_1650097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1650097)
  decide +kernel
#print axioms cover_1650097

def state_1650120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 43)))
def hex_1650120 : String := "40094443090509"
theorem cover_1650120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1650120)
  decide +kernel
#print axioms cover_1650120

def state_1650127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 43)))
def hex_1650127 : String := "404443094241050A0509444342410940090808424140440505440743080540440A0A4407430807414005440508400644430805084308424140090840090809"
theorem cover_1650127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1650127)
  decide +kernel
#print axioms cover_1650127

def state_1650190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 53 else 43)))
def hex_1650190 : String := "41094009444308424105060608"
theorem cover_1650190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1650190)
  decide +kernel
#print axioms cover_1650190
end Mub6.Numerical.CircleFullD0.Forest
