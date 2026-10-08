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
def state_2288859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 23)))
def hex_2288859 : String := "43444105404243054405410A09050541074042434441400A0540094243054405410509054107CF44410A4009424344094107090A074107400A4244434107400A070A434107400A070A070707444107400A42434405070A074107400A07"
theorem cover_2288859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 93) (hex := hex_2288859)
  decide +kernel
#print axioms cover_2288859

def state_2288952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
def hex_2288952 : String := "44400A42410A434409400A42430A0A0A0A0A400A4244410A430A0A0A0A"
theorem cover_2288952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_2288952)
  decide +kernel
#print axioms cover_2288952

def state_2288981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_2288981 : String := "4440064241064307064106430A06400A424144060A4443400642070A06430A054106440A0A"
theorem cover_2288981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2288981)
  decide +kernel
#print axioms cover_2288981

def state_2289018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_2289018 : String := "4344094042074344094142070707084243440941400707074407414005420744070505434409414042074309084243444140094243064409414007060609094140420743440941404207CF4206CF0744094140420544090542444306050544434140094206060641400942440905090943414042054409050606050742064344414042060606060644414042430644060609060641404206444306414042060606060606064007064441400942434409414007090644094140070907430909094140420744434140070907410A05434140054205444305050505054244434140420644070606064140054205444306050505430605444341404244094341400906064140054205060544094309094206440943064142060706094140424409050A42444309410A0943414005060505440943410A090A09434140424443060505444341400A0606410A05434140050605054206060641400542054443410A060505054007420644090643440941404243440941CF094409414008424409434140424408434105050508424443064107060607084140080A0808080842434441424009050509414206070644414240090707094142404443410706410709430641070606074206400806070944094140424408434140080808080842444341424009070709410A084341424044434107080A4341074005060A07074240080608410A08440808080944414009420909094140420708424443414042070842440943414005090705440943090A09410A054341400542054443410A05050505054443410A080843410A080808444007420741430907074008424407054441434008424407080A0843080741430A0505"
theorem cover_2289018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289018 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 28) (count := 621) (hex := hex_2289018)
  decide +kernel
#print axioms cover_2289018

def state_2289639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_2289639 : String := "4441060741440606440708"
theorem cover_2289639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2289639)
  decide +kernel
#print axioms cover_2289639

def state_2289650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_2289650 : String := "4344414243050A0509414243444009054041064344060606410A43440942400607070A0A0A42434409400843440941424008430908080844090844094008440A0843090A44410A4207094142060642444006430A06080A"
theorem cover_2289650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289650 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 87) (hex := hex_2289650)
  decide +kernel
#print axioms cover_2289650

def state_2289737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2289737 : String := "4243440943094409080743440942430944090809440742440708440908"
theorem cover_2289737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2289737)
  decide +kernel
#print axioms cover_2289737

def state_2289770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_2289770 : String := "404143054205054309420744074009410507410543054208440840410543050705"
theorem cover_2289770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2289770)
  decide +kernel
#print axioms cover_2289770


end Mub6.Numerical.CircleFullD0.Forest
