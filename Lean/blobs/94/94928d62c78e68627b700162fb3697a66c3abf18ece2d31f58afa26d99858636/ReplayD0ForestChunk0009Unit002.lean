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
def state_1017907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
def hex_1017907 : String := "434044420A050A4442414305400A4407090505420A414305400A44050A05400A44424143400A09090941434044420A050A4442090542094143050905400A44420941434044420605094442070509820942090909420A0A"
theorem cover_1017907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017907 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 87) (hex := hex_1017907)
  decide +kernel
#print axioms cover_1017907

def state_1017994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 23)))
def hex_1017994 : String := "424143400A08050A41434007444241070A07074007444208070743400A44420A0A0A0A"
theorem cover_1017994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1017994)
  decide +kernel
#print axioms cover_1017994

def state_1018029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
def hex_1018029 : String := "434044050A44424305414005070505424341400544050A050A05400A44420941430509050A"
theorem cover_1018029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018029 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1018029)
  decide +kernel
#print axioms cover_1018029

def state_1018066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
def hex_1018066 : String := "444143400842440541430540080505084042440808084244410908414340424408410708084244094109050A40424408410708440807424409410943404244080808424409410905094042440841090808424409410943404244050808424405410905058209094305400842440541430540084244054143058205050508440841090843054008084143404244410705070742444143054007060541060544410605054042444107430707070742444143400742444107430540424405050542050507074007424441074340424441070807074244414306400706430540420505054106430540070644410605064007424441430909434042444143400742440507058205410743058244080742444143404244050505420505820541430682430582444109054106058241074340074442410643068206064007448207444107434007424405060540074282070707074340420505054042440807074244414305404244080A08424441430582054143400A440509400A44820909440841070505414340074405064007444209070709444143054007424405070505410705410743400544050607444107430507074305404244050508424405414305050505"
theorem cover_1018066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 27) (count := 449) (hex := hex_1018066)
  decide +kernel
#print axioms cover_1018066

def state_1018516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1018516 : String := "414243440709440707434407090742434443090A09440A400708434407420705440707"
theorem cover_1018516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 35) (hex := hex_1018516)
  decide +kernel
#print axioms cover_1018516

def state_1018552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1018552 : String := "42434440410743440707440707414344070708434442404307440707434441050505444105050840074306074209074442400808400744410743420806080708094440410744070708084344400741074243074407070740410942070941074209074440074107424407070707"
theorem cover_1018552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 109) (hex := hex_1018552)
  decide +kernel
#print axioms cover_1018552

def state_1018665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1018665 : String := "434441424344070744400741070607074243060A4307444005420A0507094441420A440A070A4142090742094007430909"
theorem cover_1018665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1018665)
  decide +kernel
#print axioms cover_1018665


end Mub6.Numerical.CircleFullD0.Forest
