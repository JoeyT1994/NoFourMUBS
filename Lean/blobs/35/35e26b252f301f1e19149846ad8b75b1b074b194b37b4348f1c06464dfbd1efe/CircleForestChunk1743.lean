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
def state_2291445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 108 else 91)))
def hex_2291445 : String := "42444108074108074441084007084140430842060608404342074407410807074308420844084108400708"
theorem cover_2291445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2291445)
  decide +kernel
#print axioms cover_2291445

def state_2291488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 109 else 91)))
def hex_2291488 : String := "424407414006434207440741060706074441060741400643420606064007434207440741060707"
theorem cover_2291488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291488 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2291488)
  decide +kernel
#print axioms cover_2291488

def state_2291528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 108 else 91)))
def hex_2291528 : String := "08"
theorem cover_2291528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2291528)
  decide +kernel
#print axioms cover_2291528

def state_2291530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 109 else 91)))
def hex_2291530 : String := "444108400708414043084207444106074106070840430707430842074407410807"
theorem cover_2291530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2291530)
  decide +kernel
#print axioms cover_2291530

def state_2291564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 182)))
def hex_2291564 : String := "414043080605404308420744064106074308420808"
theorem cover_2291564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2291564)
  decide +kernel
#print axioms cover_2291564

def state_2291586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 206) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 183)))
def hex_2291586 : String := "404308424406060608"
theorem cover_2291586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2291586)
  decide +kernel
#print axioms cover_2291586

def state_2291596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 183)))
def hex_2291596 : String := "4342440841080744410840070841084043080708424407414006430706074441060741400643420806064007434207C407"
theorem cover_2291596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2291596)
  decide +kernel
#print axioms cover_2291596

def state_2291645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 207) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 183)))
def hex_2291645 : String := "4308424441080741084007084441084043080708414009084043084207C4430808"
theorem cover_2291645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2291645)
  decide +kernel
#print axioms cover_2291645
end Mub6.Numerical.CircleFullD0.Forest
