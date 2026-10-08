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
def state_183628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 7)))
def hex_183628 : String := "4441424043050943054405410A0505054142404308084344070744410742400843054405070508084240050505"
theorem cover_183628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_183628)
  decide +kernel
#print axioms cover_183628

def state_183673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 7)))
def hex_183673 : String := "4441420909424005050541424009434441094240080A0808090842404344090809434441424005050505410805440941080805"
theorem cover_183673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_183673)
  decide +kernel
#print axioms cover_183673

def state_183726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
def hex_183726 : String := "434442410A05050A444207050A"
theorem cover_183726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_183726)
  decide +kernel
#print axioms cover_183726

def state_183740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 7)))
def hex_183740 : String := "44424140430544050A43054405420905050542410A094140050505"
theorem cover_183740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_183740)
  decide +kernel
#print axioms cover_183740

def state_183768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 14)))
def hex_183768 : String := "4241404407074443080743420841400744054305070507074140050505"
theorem cover_183768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_183768)
  decide +kernel
#print axioms cover_183768

def state_183797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
def hex_183797 : String := "4241400A4344420941400709070944070A074140430A074344424140050505050A4442070542070705"
theorem cover_183797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_183797)
  decide +kernel
#print axioms cover_183797

def state_183838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 7)))
def hex_183838 : String := "400505"
theorem cover_183838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_183838)
  decide +kernel
#print axioms cover_183838

def state_183841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_183841 : String := "434441430644060606414305400805430505444144054009054405054140420505424305090505"
theorem cover_183841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_183841)
  decide +kernel
#print axioms cover_183841
end Mub6.Numerical.CircleFullPrototype.Forest
