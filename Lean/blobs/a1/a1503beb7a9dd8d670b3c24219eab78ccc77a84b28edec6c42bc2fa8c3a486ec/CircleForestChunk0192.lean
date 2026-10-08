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
def state_983589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 41)))
def hex_983589 : String := "42404341440907440842430840080A084109444240430509430A41090A05424009430A09400909430A410A440A0A40430A4109050A"
theorem cover_983589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_983589)
  decide +kernel
#print axioms cover_983589

def state_983642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 20)))
def hex_983642 : String := "44054240430841440542400843084144084240080A0808080843410A0841440A4240430A410A0A0A0A440542400807084005430505"
theorem cover_983642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_983642)
  decide +kernel
#print axioms cover_983642

def state_983697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 40)))
def hex_983697 : String := "42404341090541094405420605434144090944054207054109074005430505"
theorem cover_983697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_983697)
  decide +kernel
#print axioms cover_983697

def state_983730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 41)))
def hex_983730 : String := "4341094442400943090909424009090941094442090909"
theorem cover_983730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_983730)
  decide +kernel
#print axioms cover_983730

def state_983753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 41)))
def hex_983753 : String := "4341440909444240430A4109070A0A4240430A090A0A414409084442404309070740090A42404309080840090A"
theorem cover_983753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_983753)
  decide +kernel
#print axioms cover_983753

def state_983798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 41)))
def hex_983798 : String := "40434109440509094341090A4109440909"
theorem cover_983798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_983798)
  decide +kernel
#print axioms cover_983798

def state_983816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 40)))
def hex_983816 : String := "42404305050705"
theorem cover_983816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_983816)
  decide +kernel
#print axioms cover_983816
end Mub6.Numerical.CircleFullD0.Forest
