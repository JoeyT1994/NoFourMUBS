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
def state_2570083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
def hex_2570083 : String := "444342404144074342074144070A070707410A0A40414443050743424144054043420707060A44070A41440540060544400705404307060A4241440606074106440606440743070741440543050A0A4240070A404144060607410A0A4342444041434244074140070A074441404307070A07414043420744410A0741400709074207440741400509050A40070A4207444140070A074140070A0743070741430A0A0A40414342444140434206440705070A40050641400506054441404342444140050A05054441090505420505430A0A40050A41400543064205050542444140050A07410505444140430505430A0808410505434205050541434206440A06420A0A0644404143424441404342440741400709074441060741090A4207060A40070A414043424441090A4109400509094244410907090943420A090A4043420744074140050905070A4441404309064309094043424407410A074441060741090A4207060A4140090940434244410907090942444109050509430A0942444140060A0741400843090808444106084109084342440740070A4440070A4041430505050A084143420A440A4041090A09420A440A0A0A40414342444140430909094005430A0A4109054441094005090942444140080908410905444109080943424440050A0544400541430505050505414342444041090A0A4009060942440A40090909430608424408400808440808"
theorem cover_2570083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 527) (hex := hex_2570083)
  decide +kernel
#print axioms cover_2570083

def state_2570610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
def hex_2570610 : String := "41440543424041054405430A0A0540410544050705424041050A050944430A0A43420A40440A410A060A420A40440A080A"
theorem cover_2570610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2570610)
  decide +kernel
#print axioms cover_2570610

def state_2570659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
def hex_2570659 : String := "40414406080841440508440A08"
theorem cover_2570659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_2570659)
  decide +kernel
#print axioms cover_2570659

def state_2570672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_2570672 : String := "4442074340074144050A0707424340440741420643060706440A0608434044414342070707074143424407064440070A400506080744410A07410A064007440708"
theorem cover_2570672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570672 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 65) (hex := hex_2570672)
  decide +kernel
#print axioms cover_2570672

def state_2570737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2570737 : String := "42434407064407400706434440090740430607064407400744074142070706"
theorem cover_2570737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2570737)
  decide +kernel
#print axioms cover_2570737

def state_2570769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2570769 : String := "414243444142430644400A4142060A060643444007414306440705060644400541444243050505054405050542064306440505064441424440430A410A05434142440906444005090542060541424409400509440705420905400543060A44400543414442050505054144070505054244400543060805050A4344414344404207410A054241430844400508054306054143080A4344400508050540054206084440054241444305050505410A050543444005420607050541430605054441444005424305050505050542430644420605054344070505"
theorem cover_2570769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 215) (hex := hex_2570769)
  decide +kernel
#print axioms cover_2570769

def state_2570986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_2570986 : String := "43444041420643064441444042064306414440054205050505060606060606064440414244434142064409060641420944094043060906090644434144404243414409050509434105050542430609434144404306090606064144404309070940054306420605444005090540420505420643064144050505444042050542064306440705400506414440424341440705050707420943414440070940054209430508440705414407400508084042050542430641440906064341440505054144050505444007420808400542050543414005060541400542060505420644434440050605440705054142064443404144420643064144400906060606060640414442094341440940090609084206430641404442064306080606064409064144090606060606"
theorem cover_2570986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 295) (hex := hex_2570986)
  decide +kernel
#print axioms cover_2570986


end Mub6.Numerical.CircleFullD0.Forest
