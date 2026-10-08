import FourierPilotCircleTree004696
import FourierPilotCircleTree004703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004695
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![93, 91, 41, 61, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004696.state FourierPilotCircleTree004703.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004696.covered FourierPilotCircleTree004703.covered
#print axioms covered
end FourierPilotCircleTree004695
