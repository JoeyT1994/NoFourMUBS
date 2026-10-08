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
def state_22792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
def hex_22792 : String := "4243444042060942084143440809080809440806434440410A094142434440090707080742080909440A06"
theorem cover_22792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_22792)
  decide +kernel
#print axioms cover_22792

def state_22835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 43)))
def hex_22835 : String := "06"
theorem cover_22835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_22835)
  decide +kernel
#print axioms cover_22835

def state_22836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 21)))
def hex_22836 : String := "06"
theorem cover_22836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_22836)
  decide +kernel
#print axioms cover_22836

def state_22837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 21)))
def hex_22837 : String := "4344400A41074243070A0707440A06"
theorem cover_22837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_22837)
  decide +kernel
#print axioms cover_22837

def state_22852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
def hex_22852 : String := "42434440094208414309080809440806434440054142430509050509440A09"
theorem cover_22852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_22852)
  decide +kernel
#print axioms cover_22852

def state_22889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
def hex_22889 : String := "4205434440070507444041054205070505"
theorem cover_22889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_22889)
  decide +kernel
#print axioms cover_22889

def state_22906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
def hex_22906 : String := "424344400805404205410508050843444041424344400707070807420843070841420507420843060840070744400808404142050708410508"
theorem cover_22906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_22906)
  decide +kernel
#print axioms cover_22906

def state_22963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
def hex_22963 : String := "41054205434440410508050505"
theorem cover_22963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_22963)
  decide +kernel
#print axioms cover_22963

def state_22976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 43)))
def hex_22976 : String := "40410542050705"
theorem cover_22976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_22976)
  decide +kernel
#print axioms cover_22976

def state_22983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 21)))
def hex_22983 : String := "44404105080505"
theorem cover_22983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_22983)
  decide +kernel
#print axioms cover_22983

def state_22990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 21)))
def hex_22990 : String := "4344404107424307440A07074107424307444007070707074440410A0A414205074243440805080A400707"
theorem cover_22990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_22990)
  decide +kernel
#print axioms cover_22990
end Mub6.Numerical.CircleFullPrototype.Forest
