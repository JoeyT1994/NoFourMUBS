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
def state_1627143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 8)))
def hex_1627143 : String := "40444105064108430A0744410843420808084143420708074342074044080A440843410842070A0707"
theorem cover_1627143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1627143)
  decide +kernel
#print axioms cover_1627143

def state_1627184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 8)))
def hex_1627184 : String := "4006444105064143400508054340064244064341084006420806080606"
theorem cover_1627184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627184 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 29) (hex := hex_1627184)
  decide +kernel
#print axioms cover_1627184

def state_1627215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
def hex_1627215 : String := "424044410943094208080944410643064206400806064009444143400944060608434009444206070940440809444208084208084109430940094442060909"
theorem cover_1627215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1627215)
  decide +kernel
#print axioms cover_1627215

def state_1627278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_1627278 : String := "4240440808440841084342064008060840440508440841084340440808440842080808"
theorem cover_1627278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627278 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1627278)
  decide +kernel
#print axioms cover_1627278

def state_1627316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
def hex_1627316 : String := "44430941420A4009440A090A09"
theorem cover_1627316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1627316)
  decide +kernel
#print axioms cover_1627316

def state_1627331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 18)))
def hex_1627331 : String := "4142064009064240444309410609060640444309410909094443410505414206400905420505430505"
theorem cover_1627331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627331 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1627331)
  decide +kernel
#print axioms cover_1627331
end Mub6.Numerical.CircleFullD0.Forest
