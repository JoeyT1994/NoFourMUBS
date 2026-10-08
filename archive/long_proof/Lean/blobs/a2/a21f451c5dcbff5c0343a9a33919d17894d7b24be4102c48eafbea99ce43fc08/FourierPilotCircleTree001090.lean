import FourierPilotCircleTree001091
import FourierPilotCircleTree001092
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001090
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![57, 28, 16, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001091.state FourierPilotCircleTree001092.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001091.covered FourierPilotCircleTree001092.covered
#print axioms covered
end FourierPilotCircleTree001090
