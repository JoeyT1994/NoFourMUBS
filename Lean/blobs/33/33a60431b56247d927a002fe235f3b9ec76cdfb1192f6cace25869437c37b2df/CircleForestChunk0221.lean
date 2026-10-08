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
def state_990494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 10)))
def hex_990494 : String := "440542404308440508430844424105050542414043084405424107050543440808444241400543054405060505424140070640084308C6410605080805"
theorem cover_990494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 61) (hex := hex_990494)
  decide +kernel
#print axioms cover_990494

def state_990556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 10)))
def hex_990556 : String := "41440A0644080A"
theorem cover_990556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_990556)
  decide +kernel
#print axioms cover_990556

def state_990564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 10)))
def hex_990564 : String := "444240430A410A4244050A050A0542404306410644424043060A0606060606"
theorem cover_990564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_990564)
  decide +kernel
#print axioms cover_990564

def state_990596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 20)))
def hex_990596 : String := "42400543050A05"
theorem cover_990596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_990596)
  decide +kernel
#print axioms cover_990596

def state_990605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 21)))
def hex_990605 : String := "4344084241060806444241404305440542410505050A050542414043064442410640050606060640430844054142400843060A0505430A440A410609410605"
theorem cover_990605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_990605)
  decide +kernel
#print axioms cover_990605

def state_990668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 21)))
def hex_990668 : String := "430A440A06"
theorem cover_990668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_990668)
  decide +kernel
#print axioms cover_990668

def state_990673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 21)))
def hex_990673 : String := "4043050506"
theorem cover_990673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_990673)
  decide +kernel
#print axioms cover_990673

def state_990681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_990681 : String := "44410742434044080744410508054044410706074441420543054007054243050543084008440805410505434007440807400744414243070707080707"
theorem cover_990681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_990681)
  decide +kernel
#print axioms cover_990681
end Mub6.Numerical.CircleFullD0.Forest
