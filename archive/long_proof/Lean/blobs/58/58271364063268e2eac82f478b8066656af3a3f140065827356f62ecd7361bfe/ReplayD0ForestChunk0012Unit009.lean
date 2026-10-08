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
def state_1303432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1303432 : String := "4041424344434407050905440A07434442430709070744420A440A0707424344414344400942050505440A09434440094241050505050941050544410A440A06094344414243070943054440090907420943050907444142440A09444043420944410709070A43420944410A0909420A0A4043070A094209444043094142090A09430941420944400A0A09090909414243444043070A07070A43444042070707074440420A4408070807424344404143070A4305444206094205054143050A430506074440410A4406060A0943444041420505050505444041420A444342094408050A09420944430541420905050541420944080542090509"
theorem cover_1303432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303432 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 249) (hex := hex_1303432)
  decide +kernel
#print axioms cover_1303432

def state_1303682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
def hex_1303682 : String := "44404142430A0743094407074243440A0A0A4344070A074142434440074241070709400A424441430940074207090A41430A400A42050A0A44090A44074042074344070A074243440541400505050543444107054140444207070A44424309050942430A050A400A4405054405414007050543440940090944074043440709074344094109094407414240074344074241080709074007090742430A4405404107050543444007060A44074041070741434406090743060540414243444244400A0A05440A0A05444243440605060A42050A43440A404105050A0A42434441424440070A05440A4043410505050A4244404341074205440705070A0544404309070A404306410507430605410505444142070742070A41050543444144094042430607060A4409064140424305050642050606440A410A4340070707414243444042440A050A4244410A430805050A08444042430A050A42430505430A44414006050505400505430A4440430A4441420A430A07070A434441420A090A0A44414240430A064344420808080840434408084406060842400A430A05400A4309440741420A070741420A400A080A0A424344404142440A050A42050A4142050A42050640050544404142050A05050543440A40410A060A0A"
theorem cover_1303682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303682 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 471) (hex := hex_1303682)
  decide +kernel
#print axioms cover_1303682

def state_1304156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1304156 : String := "42434442430709074243064440070706074409424409404106430709410743424408060708094344090707"
theorem cover_1304156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1304156)
  decide +kernel
#print axioms cover_1304156

def state_1304201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
def hex_1304201 : String := "4441420509054142434405064440424143064409064305440540420507050A0540420607424405060743074407074243054405404142050705050A"
theorem cover_1304201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304201 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 59) (hex := hex_1304201)
  decide +kernel
#print axioms cover_1304201

def state_1304261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_1304261 : String := "410942400A0506"
theorem cover_1304261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1304261)
  decide +kernel
#print axioms cover_1304261


end Mub6.Numerical.CircleFullD0.Forest
