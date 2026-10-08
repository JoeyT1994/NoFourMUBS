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
def state_1486782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_1486782 : String := "434244080505424441400508404308440742410A400A43070705084105400A430542444105400A43084209050505440705"
theorem cover_1486782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_1486782)
  decide +kernel
#print axioms cover_1486782

def state_1486831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_1486831 : String := "430842440841054043084209050808"
theorem cover_1486831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1486831)
  decide +kernel
#print axioms cover_1486831

def state_1486848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 13)))
def hex_1486848 : String := "42440841400A0840060808"
theorem cover_1486848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1486848)
  decide +kernel
#print axioms cover_1486848

def state_1486861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 26)))
def hex_1486861 : String := "41404306440641420606060806"
theorem cover_1486861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1486861)
  decide +kernel
#print axioms cover_1486861

def state_1486876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 27)))
def hex_1486876 : String := "430A410A424440064306414244060A06060A0A"
theorem cover_1486876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1486876)
  decide +kernel
#print axioms cover_1486876

def state_1486896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 27)))
def hex_1486896 : String := "4142440805054244080A08"
theorem cover_1486896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1486896)
  decide +kernel
#print axioms cover_1486896

def state_1486908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 36) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 27)))
def hex_1486908 : String := "424440430A424144070A44070A0708400A09440705"
theorem cover_1486908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1486908)
  decide +kernel
#print axioms cover_1486908

def state_1486929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 27)))
def hex_1486929 : String := "424440430841424407400707074244054043060707060840430A410A4244400A43090A0A0A4309410942090744070A"
theorem cover_1486929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486929 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1486929)
  decide +kernel
#print axioms cover_1486929

def state_1486977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 27)))
def hex_1486977 : String := "43064142440640064306410A060606"
theorem cover_1486977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1486977)
  decide +kernel
#print axioms cover_1486977

def state_1486993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 27)))
def hex_1486993 : String := "414244064043060A080808"
theorem cover_1486993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1486993)
  decide +kernel
#print axioms cover_1486993

def state_1487007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 54)))
def hex_1487007 : String := "404306414205060508"
theorem cover_1487007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1487007)
  decide +kernel
#print axioms cover_1487007
end Mub6.Numerical.CircleFullD0.Forest
