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
def state_2592059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 10)))
def hex_2592059 : String := "404441424309404144420509060605430940410909094206094142060606440909"
theorem cover_2592059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_2592059)
  decide +kernel
#print axioms cover_2592059

def state_2592097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 20)))
def hex_2592097 : String := "40414442430540070543404409060540074409070744420643064006090641440507440509"
theorem cover_2592097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2592097)
  decide +kernel
#print axioms cover_2592097

def state_2592134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 20)))
def hex_2592134 : String := "404107444207434007070707414442084340070508074442430507430940070707"
theorem cover_2592134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592134 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2592134)
  decide +kernel
#print axioms cover_2592134

def state_2592168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 20)))
def hex_2592168 : String := "4041444243094044410707070943094044090709074409074144090909"
theorem cover_2592168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2592168)
  decide +kernel
#print axioms cover_2592168

def state_2592197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 20)))
def hex_2592197 : String := "404144434240070740074409074207070744434240070940070942074007070741444309424007060607444309424007080907"
theorem cover_2592197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2592197)
  decide +kernel
#print axioms cover_2592197

def state_2592249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 20)))
def hex_2592249 : String := "43400641090640414442430607434006090706064144424305070907440906"
theorem cover_2592249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2592249)
  decide +kernel
#print axioms cover_2592249
end Mub6.Numerical.CircleFullD0.Forest
