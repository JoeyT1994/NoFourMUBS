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
def state_2266556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
def hex_2266556 : String := "43054440424305410509050540424305410809054243050805"
theorem cover_2266556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2266556)
  decide +kernel
#print axioms cover_2266556

def state_2266581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
def hex_2266581 : String := "404142084305084243070643090941084208430544404208090808"
theorem cover_2266581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2266581)
  decide +kernel
#print axioms cover_2266581

def state_2266612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
def hex_2266612 : String := "42444043410A424440430A0A0A08440A0A410A420A0A430A0A4043080A084440430A0A0A0A"
theorem cover_2266612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_2266612)
  decide +kernel
#print axioms cover_2266612

def state_2266652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 56)))
def hex_2266652 : String := "434142444043074142070907434142070907410A4205090609420709414244404341050505430A0505440906420509"
theorem cover_2266652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2266652)
  decide +kernel
#print axioms cover_2266652

def state_2266699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 56)))
def hex_2266699 : String := "43414244404341084207090A0A06440A0A42444043070643414206090606064409094142440A060A4205440906"
theorem cover_2266699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2266699)
  decide +kernel
#print axioms cover_2266699

def state_2266744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 57)))
def hex_2266744 : String := "06"
theorem cover_2266744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2266744)
  decide +kernel
#print axioms cover_2266744

def state_2266745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 28)))
def hex_2266745 : String := "4440094309424109090940094309420609"
theorem cover_2266745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2266745)
  decide +kernel
#print axioms cover_2266745

def state_2266762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 28)))
def hex_2266762 : String := "4142440A0A0A424440434142050A050543410A05050544404309420A080A40060A"
theorem cover_2266762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2266762)
  decide +kernel
#print axioms cover_2266762

def state_2266797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
def hex_2266797 : String := "42440A080A"
theorem cover_2266797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2266797)
  decide +kernel
#print axioms cover_2266797
end Mub6.Numerical.CircleFullD0.Forest
