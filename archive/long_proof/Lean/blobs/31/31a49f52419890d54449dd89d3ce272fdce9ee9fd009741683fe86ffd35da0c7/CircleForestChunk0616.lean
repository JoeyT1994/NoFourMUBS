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
def state_386646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
def hex_386646 : String := "434409400A0A4440074241074309070740424407410743080744070A424441430A074340080907410A430A4007440742050A4441074309070A"
theorem cover_386646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_386646)
  decide +kernel
#print axioms cover_386646

def state_386703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_386703 : String := "44074107424407400743440707074407400707"
theorem cover_386703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_386703)
  decide +kernel
#print axioms cover_386703

def state_386723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_386723 : String := "4308440708"
theorem cover_386723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_386723)
  decide +kernel
#print axioms cover_386723

def state_386730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_386730 : String := "4243400841444308070808074340410744070841440742434109080743410705054405420805400705"
theorem cover_386730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_386730)
  decide +kernel
#print axioms cover_386730

def state_386772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
def hex_386772 : String := "08"
theorem cover_386772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_386772)
  decide +kernel
#print axioms cover_386772

def state_386774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 5)))
def hex_386774 : String := "444041090841424309080908404142060606414243060843060906"
theorem cover_386774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_386774)
  decide +kernel
#print axioms cover_386774

def state_386802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 10)))
def hex_386802 : String := "4041420709084142080508"
theorem cover_386802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_386802)
  decide +kernel
#print axioms cover_386802

def state_386814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 11)))
def hex_386814 : String := "414208440843064006414206060608"
theorem cover_386814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_386814)
  decide +kernel
#print axioms cover_386814

def state_386829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 11)))
def hex_386829 : String := "414244084308414008440842084143064006080608444309414007090543410A064140424408060A42444143090708060A0608"
theorem cover_386829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_386829)
  decide +kernel
#print axioms cover_386829

def state_386881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_386881 : String := "07"
theorem cover_386881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_386881)
  decide +kernel
#print axioms cover_386881

def state_386883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
def hex_386883 : String := "4407404107084143440742084107080708"
theorem cover_386883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_386883)
  decide +kernel
#print axioms cover_386883

def state_386901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
def hex_386901 : String := "400705"
theorem cover_386901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_386901)
  decide +kernel
#print axioms cover_386901
end Mub6.Numerical.CircleFullPrototype.Forest
