import FourierPilotCircleTree001532
import FourierPilotCircleTree001533
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001531
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![27, 18, 20, 16, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001532.state FourierPilotCircleTree001533.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001532.covered FourierPilotCircleTree001533.covered
#print axioms covered
end FourierPilotCircleTree001531
