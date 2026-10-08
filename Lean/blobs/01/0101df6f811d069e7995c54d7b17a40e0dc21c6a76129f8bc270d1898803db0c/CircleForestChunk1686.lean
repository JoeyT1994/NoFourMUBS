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
def state_2277826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 62)))
def hex_2277826 : String := "434007414405070740414442084305080707414442080508444243074007084340070540410507410544050742074307400708"
theorem cover_2277826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2277826)
  decide +kernel
#print axioms cover_2277826

def state_2277877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 62)))
def hex_2277877 : String := "434041050741054405074009410544424305400505054243070909"
theorem cover_2277877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2277877)
  decide +kernel
#print axioms cover_2277877

def state_2277904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 63)))
def hex_2277904 : String := "4243074007084340074108074009410809"
theorem cover_2277904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277904 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2277904)
  decide +kernel
#print axioms cover_2277904

def state_2277921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
def hex_2277921 : String := "444207430740074144424307400741090709070707"
theorem cover_2277921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_2277921)
  decide +kernel
#print axioms cover_2277921

def state_2277943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 42 else 31)))
def hex_2277943 : String := "414442404306410507430505064240074306084006064442070607"
theorem cover_2277943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2277943)
  decide +kernel
#print axioms cover_2277943

def state_2277973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 62)))
def hex_2277973 : String := "40434105444240070505420740070541084442434008054008084305400505420843080843410544054208054105444209054208400805"
theorem cover_2277973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2277973)
  decide +kernel
#print axioms cover_2277973

def state_2278028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 62)))
def hex_2278028 : String := "4043054105440542430540050505430505"
theorem cover_2278028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2278028)
  decide +kernel
#print axioms cover_2278028
end Mub6.Numerical.CircleFullD0.Forest
