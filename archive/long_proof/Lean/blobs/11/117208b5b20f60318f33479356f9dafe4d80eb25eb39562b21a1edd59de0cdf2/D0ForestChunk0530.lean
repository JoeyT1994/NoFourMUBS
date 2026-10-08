import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1315880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
def hex_1315880 : String := "42444043410542444007070744094009054142440908050943410542070541420605420A440940090540434105420707084341050741064206444008050605"
theorem cover_1315880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315880 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1315880)
  decide +kernel
#print axioms cover_1315880

def state_1315943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 49)))
def hex_1315943 : String := "404341050A41420805084341054207054105424440084307060805"
theorem cover_1315943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1315943)
  decide +kernel
#print axioms cover_1315943

def state_1315971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 24)))
def hex_1315971 : String := "4440430708430741420544400843070A08054008430708"
theorem cover_1315971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1315971)
  decide +kernel
#print axioms cover_1315971

def state_1315996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
def hex_1315996 : String := "43414206060641424409080909"
theorem cover_1315996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1315996)
  decide +kernel
#print axioms cover_1315996

def state_1316010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 48)))
def hex_1316010 : String := "414244400707074440064305410506404305410506430541054207054244060706"
theorem cover_1316010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1316010)
  decide +kernel
#print axioms cover_1316010

def state_1316045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 58) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 48)))
def hex_1316045 : String := "44404341420709420706094341420744404307090A4007074207444006070741420A090A404341070708434107074142084440080A0808"
theorem cover_1316045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1316045)
  decide +kernel
#print axioms cover_1316045
end Mub6.Numerical.CircleFullD0.Forest
