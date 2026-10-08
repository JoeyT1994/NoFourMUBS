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
def state_1532724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 16)))
def hex_1532724 : String := "44400542054109054042410907410A434407400742070A054209410943444042050A094042090A0909"
theorem cover_1532724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1532724)
  decide +kernel
#print axioms cover_1532724

def state_1532765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
def hex_1532765 : String := "43444042054143080505084042414308070741434409400908440740074207070742084108064405400742054143440540074205410A050505"
theorem cover_1532765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1532765)
  decide +kernel
#print axioms cover_1532765

def state_1532822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1532822 : String := "4241090841434440420841080608404208410908080943084405404205414308050508"
theorem cover_1532822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1532822)
  decide +kernel
#print axioms cover_1532822

def state_1532857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
def hex_1532857 : String := "40424143444042064106434408050609400609094344404207414308070708404241060741430606430807420841080844074006420741090741434440424143050643444042060542080505444006420641064308060641430544400505054305444042410607410543050742414305064344400708054407400642064105074105430544400742410A07410507050542414305094308444042084109080840420641054305060841430544404205050905430544404241430509430844084042084105050841054305444042410A080A42080A0542410808410508050544404206410643444006424106070A060A4209410943444042090A094042090A090940064206410643444005050506434440424143440840420705084407400742074143050607074143444009420809054440074207414309070740420709424143054407050741050943090742084143084440420841430844404207070840420741050708080840424143054408050841054305440805080840424143054406054344080544074006420605410543054440074207090542414305444042080508050841054305444042084105080805444042074143440740074207070707424143444007084007080707414344404207410A074208410A084042414344074006090707410A434407400742070A0742410908410A43080A0A43440740070807404241060741434440064206410507050643440740064207070742414344400609060943440740070807414344404241064344070506410543050A424109430809410543050A050A43444042074143440705070742084143080A084042414305060741054305074241430544080508410543054407054407400742070A424109430809414344404209410743054408050905094344084042084105080844404241090841434408404208410908080943084405400708084042410943080941434440420941050808050943440840420841050808444042070A084042090A094208410908"
theorem cover_1532857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 739) (hex := hex_1532857)
  decide +kernel
#print axioms cover_1532857

def state_1533596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
def hex_1533596 : String := "43440840420843084144080908084440420543414405400706050508404243410807074341444007084042070908074144074007420743414407400708070707420843084144084042084308414408400708070808"
theorem cover_1533596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533596 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 85) (hex := hex_1533596)
  decide +kernel
#print axioms cover_1533596

def state_1533681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1533681 : String := "420841430844404208410808084042094109080808"
theorem cover_1533681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1533681)
  decide +kernel
#print axioms cover_1533681
end Mub6.Numerical.CircleFullD0.Forest
