import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure NeuronMembranePackage where
  membranePotential : Type u
  ionChannels : Type v
  capacitance : Type w
  conductance : Type x
  reversalPotential : Type y
  membraneDynamics : Prop
  channelsGated : Prop
  capacitanceCharged : Prop
  conductanceMeasured : Prop
  reversalDefined : Prop

structure NeuronMembraneEvidence (M : NeuronMembranePackage) where
  membraneDynamicsClosed : M.membraneDynamics
  channelsGatedClosed : M.channelsGated
  capacitanceChargedClosed : M.capacitanceCharged
  conductanceMeasuredClosed : M.conductanceMeasured
  reversalDefinedClosed : M.reversalDefined

def NeuronMembraneClosed (M : NeuronMembranePackage) : Prop :=
  M.membraneDynamics ∧ M.channelsGated ∧ M.capacitanceCharged ∧
  M.conductanceMeasured ∧ M.reversalDefined

theorem neuron_membrane_closed_from_evidence (M : NeuronMembranePackage)
    (E : NeuronMembraneEvidence M) : NeuronMembraneClosed M := by
  exact And.intro E.membraneDynamicsClosed
    (And.intro E.channelsGatedClosed
      (And.intro E.capacitanceChargedClosed
        (And.intro E.conductanceMeasuredClosed E.reversalDefinedClosed)))

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse