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
def state_2594493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 48 else 39)))
def hex_2594493 : String := "4340414443424007074007094207400507074443424007070A42074005070741444309420706074409074041070741440607444207434007060607"
theorem cover_2594493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2594493)
  decide +kernel
#print axioms cover_2594493

def state_2594554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 96 else (if j.val < 4 then 48 else 38)))
def hex_2594554 : String := "4340440A0A440A414243090809094044414243400A0A400A08430A40050A0A41424340070707430A4005070A444142084309060A41080A"
theorem cover_2594554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2594554)
  decide +kernel
#print axioms cover_2594554

def state_2594609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 97 else (if j.val < 4 then 48 else 38)))
def hex_2594609 : String := "43400A0940440A0A4441060941424309400A060909"
theorem cover_2594609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2594609)
  decide +kernel
#print axioms cover_2594609

def state_2594630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 39)))
def hex_2594630 : String := "4243404144DC06064144420709070A40410707410707434041440A070A4144090709404144420705070A414442070A070A"
theorem cover_2594630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 49) (hex := hex_2594630)
  decide +kernel
#print axioms cover_2594630

def state_2594679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
def hex_2594679 : String := "414442434041060805060642084340410809080844424309404408080809424340410808080843094041080908"
theorem cover_2594679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_2594679)
  decide +kernel
#print axioms cover_2594679
end Mub6.Numerical.CircleFullD0.Forest
