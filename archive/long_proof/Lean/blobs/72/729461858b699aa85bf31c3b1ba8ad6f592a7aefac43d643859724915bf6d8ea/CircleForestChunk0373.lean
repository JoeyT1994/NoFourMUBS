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
def state_1026915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 51)))
def hex_1026915 : String := "4140444342060A0808084006444342064108060608"
theorem cover_1026915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1026915)
  decide +kernel
#print axioms cover_1026915

def state_1026938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
def hex_1026938 : String := "4443420A41400A440A0A0A0A4342080908"
theorem cover_1026938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1026938)
  decide +kernel
#print axioms cover_1026938

def state_1026958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 104 else 102)))
def hex_1026958 : String := "4108400808"
theorem cover_1026958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1026958)
  decide +kernel
#print axioms cover_1026958

def state_1026964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 104 else 102)))
def hex_1026964 : String := "4044434208410740074443060707080808"
theorem cover_1026964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1026964)
  decide +kernel
#print axioms cover_1026964

def state_1026981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 104 else 102)))
def hex_1026981 : String := "404443420A0A0A434208414007080A0844434208414044434208060808064044434209090A4342080A084409080808"
theorem cover_1026981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1026981)
  decide +kernel
#print axioms cover_1026981

def state_1027028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 105 else 102)))
def hex_1027028 : String := "08"
theorem cover_1027028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1027028)
  decide +kernel
#print axioms cover_1027028

def state_1027029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 103)))
def hex_1027029 : String := "08"
theorem cover_1027029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1027029)
  decide +kernel
#print axioms cover_1027029

def state_1027031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
def hex_1027031 : String := "440A0A"
theorem cover_1027031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1027031)
  decide +kernel
#print axioms cover_1027031

def state_1027036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 104 else 102)))
def hex_1027036 : String := "4241400A444342074108070708400644074306064140440A0A44434241400A09400A0741400A09400A090A4342084140440A08088108400A44434207090A81"
theorem cover_1027036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1027036)
  decide +kernel
#print axioms cover_1027036

def state_1027099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 105 else 102)))
def hex_1027099 : String := "0A"
theorem cover_1027099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1027099)
  decide +kernel
#print axioms cover_1027099

def state_1027100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 103)))
def hex_1027100 : String := "4342084140440A08088108"
theorem cover_1027100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1027100)
  decide +kernel
#print axioms cover_1027100

def state_1027111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 51)))
def hex_1027111 : String := "42080A"
theorem cover_1027111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027111 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1027111)
  decide +kernel
#print axioms cover_1027111

def state_1027116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1027116 : String := "44434241074007440A0707420A07430707"
theorem cover_1027116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1027116)
  decide +kernel
#print axioms cover_1027116
end Mub6.Numerical.CircleFullD0.Forest
