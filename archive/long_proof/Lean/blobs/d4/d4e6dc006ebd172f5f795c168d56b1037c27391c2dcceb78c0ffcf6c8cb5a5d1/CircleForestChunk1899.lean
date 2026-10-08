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
def state_2328759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 48)))
def hex_2328759 : String := "424308444108050543444109404243444108050505CF4206CF09444109400542444341050505054443410940054205060A0909"
theorem cover_2328759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2328759)
  decide +kernel
#print axioms cover_2328759

def state_2328810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 48)))
def hex_2328810 : String := "42084344410706084441074042064443410706410706090609"
theorem cover_2328810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_2328810)
  decide +kernel
#print axioms cover_2328810

def state_2328835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 49)))
def hex_2328835 : String := "09"
theorem cover_2328835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2328835)
  decide +kernel
#print axioms cover_2328835

def state_2328836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 24)))
def hex_2328836 : String := "4441094042050A42444341084005060509444341074042050A4206070A0909"
theorem cover_2328836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2328836)
  decide +kernel
#print axioms cover_2328836

def state_2328869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
def hex_2328869 : String := "4107404243444107CF410740420943444107420907094441074205070909444107400A4244434107400A070A4341074005070A074107400A4209070707"
theorem cover_2328869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_2328869)
  decide +kernel
#print axioms cover_2328869

def state_2328930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 49)))
def hex_2328930 : String := "41074042090707"
theorem cover_2328930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2328930)
  decide +kernel
#print axioms cover_2328930

def state_2328937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 24)))
def hex_2328937 : String := "444107400A074107400A07"
theorem cover_2328937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2328937)
  decide +kernel
#print axioms cover_2328937

def state_2328948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 25)))
def hex_2328948 : String := "400909"
theorem cover_2328948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2328948)
  decide +kernel
#print axioms cover_2328948

def state_2328951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
def hex_2328951 : String := "44400A0A4005420509"
theorem cover_2328951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2328951)
  decide +kernel
#print axioms cover_2328951

def state_2328960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_2328960 : String := "09"
theorem cover_2328960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328960 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2328960)
  decide +kernel
#print axioms cover_2328960

def state_2328961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_2328961 : String := "440A05"
theorem cover_2328961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2328961)
  decide +kernel
#print axioms cover_2328961

def state_2328967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_2328967 : String := "4205434441420540054344070505050505"
theorem cover_2328967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2328967)
  decide +kernel
#print axioms cover_2328967

def state_2328985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_2328985 : String := "43444140054205430605050505"
theorem cover_2328985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2328985)
  decide +kernel
#print axioms cover_2328985
end Mub6.Numerical.CircleFullD0.Forest
