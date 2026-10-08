import FourierPilotCircleTree000801
import FourierPilotCircleTree000802
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000800
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000801.state FourierPilotCircleTree000802.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000801.covered FourierPilotCircleTree000802.covered
#print axioms covered
end FourierPilotCircleTree000800
