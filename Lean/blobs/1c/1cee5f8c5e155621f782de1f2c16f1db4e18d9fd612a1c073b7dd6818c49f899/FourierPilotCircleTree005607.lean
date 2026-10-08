import FourierPilotCircleSound
import AdaptiveCircleTree
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005607
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![19, 19, 16, 52, 53]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨5, by decide⟩))) (.reject ⟨2, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨2, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree005607
