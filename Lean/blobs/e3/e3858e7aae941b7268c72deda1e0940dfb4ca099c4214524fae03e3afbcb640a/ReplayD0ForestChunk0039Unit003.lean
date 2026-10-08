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
def state_2245575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2245575 : String := "4142434405054405404143054405424108430544050841054305440540424305440508050543054405420A430A44404105090540414206430544050A06064105430544050643444041420543440905054205430905414243440A05054344404142430A05090941420A4308060A40410505410A0A444041050506400541050542430A0543444009070A44090540054105054440054105054041054243054405430544054041050905050542430A4440090640430A440606064344404241430A0543080609420A414344070844060543080640420A080A444009064042430A44094143054405060643080942430A064305440505"
theorem cover_2245575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 243) (hex := hex_2245575)
  decide +kernel
#print axioms cover_2245575

def state_2245822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_2245822 : String := "4441440A400742074305090A410807"
theorem cover_2245822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2245822)
  decide +kernel
#print axioms cover_2245822

def state_2245840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_2245840 : String := "444042414409080741444305424041060708054308420840410644060708440A43074207400741440A08074241080A41440509440A430A40420841090A094042074108430744070742084108430808"
theorem cover_2245840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 79) (hex := hex_2245840)
  decide +kernel
#print axioms cover_2245840

def state_2245921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_2245921 : String := "4241090741434442404109444306060709400641064405430506420840410843090909444240410643090609060943444240074441430A420740074441060708074109074044410607414306060744414305420606430A420706414342400609054240070906430A4207400744430A410607430A41060742074041430744070707414344090844090843074442074007430A4441090709094442400743444142074006444306060907410907444142070607410905404344064106074406410607434441064207064142400609064207400743444106074106074441064206064106420706444106420706414209064240054307054006434406410642050644064105054240070940434144420706090741440905054341094442074007434441090709444109070909410944420540054344410905050505"
theorem cover_2245921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245921 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 313) (hex := hex_2245921)
  decide +kernel
#print axioms cover_2245921

def state_2246235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 12)))
def hex_2246235 : String := "410943440A084440420743444108070844410807080808"
theorem cover_2246235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2246235)
  decide +kernel
#print axioms cover_2246235

def state_2246259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
def hex_2246259 : String := "43444042080505094440420941074344420905090A0909"
theorem cover_2246259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2246259)
  decide +kernel
#print axioms cover_2246259

def state_2246283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 12)))
def hex_2246283 : String := "44404244414305090A4108094441054305420A0541430542094044050505430A420A404443050A430A41090A0A420A440541050A4042084109430A44420940430909090909"
theorem cover_2246283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 69) (hex := hex_2246283)
  decide +kernel
#print axioms cover_2246283

def state_2246355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
def hex_2246355 : String := "4344410940074207440A43090909444109400742074344414042074443410807410807090840070A094441404207434441060709444106420606090940074207CF410940050909"
theorem cover_2246355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 71) (hex := hex_2246355)
  decide +kernel
#print axioms cover_2246355

def state_2246427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 24)))
def hex_2246427 : String := "444142404406094405094006054240444341420A050A414240064406430A0606420740060A4341420A40060A0741424007094006440609420740070A44430A41424044050905050A430A41090A40444305064341050A410642400644430606430A41060A0644054305410542404443054105054305414209050A050541420940430909074240434441090709444109420740070A09094043444142400609060A410942090A4441424006090642404307440607430A4441060A09400643440641060A44064106420606410942094043440609440609434441060A0944410642090609434441050A094441094240430A4441090A0909404344050A4441050A41090A0709"
theorem cover_2246427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 259) (hex := hex_2246427)
  decide +kernel
#print axioms cover_2246427


end Mub6.Numerical.CircleFullD0.Forest
