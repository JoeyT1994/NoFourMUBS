import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1493866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1493866 : String := "404142434406404306414244054006430641420506050606430841424405404308410805080808444009440841420508054041424344054043060543410505050543060942050641424344054043050505440505434408404243084107050708444007074042410705074241070507420543084405054306440640424109060642414308070808424306440540410506050641424308440840414243080A08420508410808084243080A08"
theorem cover_1493866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 171) (hex := hex_1493866)
  decide +kernel
#print axioms cover_1493866

def state_1494044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 14)))
def hex_1494044 : String := "414244400643084406410A080A0A424406400643410808414442400608060A4406424006080606"
theorem cover_1494044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1494044)
  decide +kernel
#print axioms cover_1494044

def state_1494084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
def hex_1494084 : String := "424440434406410A06440641424006430A44410A060A06064344414240060806064142400A4309444109420906090A42400643084442060642410940060808064441424043064405414205060643444142050605414209084205064405414205404344050A054307050540064306440641070642400605064142404344410A4206060A444142400A430A44050A0A4240060506410A424008430A080A434441094209400608410942090A44414209400A094205404344050A4405410A05434405090541094209400A09400A430A44410742400607060A424043440642414006430644060A06064406424140430605434405420506050506434442050642414043094405090940060541400643084408090644054241050541404344060A440542050A43440509440542054105050540064306440641424006430707060640430A44410A424006430A4442080608060A4344410A4240430A0A43444209080944424109090A0A0A0A444142400A4309444109420909090A4240434442410A400643064406410A060A0A4442414008430A08400843440541080808410A06424108080A4344424109404344410906094441090541090909410A40430644060A43440609444109060942090A444241404309090940434405410905050541400A09404344060A444142050505410A4205064344410905410942050A44054109054241094043090809410A40430A0A430941094442050909400A430A44410A424006430A44060A060A410A42400A430A42090A0A4440064306424406410A06060A"
theorem cover_1494084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 573) (hex := hex_1494084)
  decide +kernel
#print axioms cover_1494084

def state_1494659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
def hex_1494659 : String := "400643064144064240064306050606"
theorem cover_1494659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1494659)
  decide +kernel
#print axioms cover_1494659

def state_1494675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
def hex_1494675 : String := "434144060A0641440642400643410A064108080606"
theorem cover_1494675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1494675)
  decide +kernel
#print axioms cover_1494675
end Mub6.Numerical.CircleFullD0.Forest
