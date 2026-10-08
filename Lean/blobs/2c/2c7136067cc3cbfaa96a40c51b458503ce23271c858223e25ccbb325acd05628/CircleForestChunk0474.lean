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
def state_1302510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
def hex_1302510 : String := "43440506444042410843054405404208410605054143064408064305440540424105050505054042444106090606424441080509440505"
theorem cover_1302510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1302510)
  decide +kernel
#print axioms cover_1302510

def state_1302565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_1302565 : String := "42434405400905444041090905094305440540414209050505"
theorem cover_1302565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1302565)
  decide +kernel
#print axioms cover_1302565

def state_1302591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_1302591 : String := "41084207404344054108050708"
theorem cover_1302591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1302591)
  decide +kernel
#print axioms cover_1302591

def state_1302606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
def hex_1302606 : String := "44080A"
theorem cover_1302606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1302606)
  decide +kernel
#print axioms cover_1302606

def state_1302610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
def hex_1302610 : String := "404342084108440843404208414408430608444305084305404208410844084340B805080808080808"
theorem cover_1302610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 41) (hex := hex_1302610)
  decide +kernel
#print axioms cover_1302610

def state_1302654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 11)))
def hex_1302654 : String := "44410843404209440809080A0A"
theorem cover_1302654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1302654)
  decide +kernel
#print axioms cover_1302654

def state_1302669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 22)))
def hex_1302669 : String := "430608"
theorem cover_1302669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1302669)
  decide +kernel
#print axioms cover_1302669

def state_1302674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 22)))
def hex_1302674 : String := "4244410643064042080A084106094441064306404244410643060806444106430640B8420844084106430508064244084106094441064305080606"
theorem cover_1302674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_1302674)
  decide +kernel
#print axioms cover_1302674

def state_1302733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 22)))
def hex_1302733 : String := "4244084106094441060541064305400605"
theorem cover_1302733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1302733)
  decide +kernel
#print axioms cover_1302733
end Mub6.Numerical.CircleFullD0.Forest
