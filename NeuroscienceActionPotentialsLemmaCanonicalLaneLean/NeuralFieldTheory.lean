import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  fieldDynamics : Prop
  synapticConnectivity : Prop
  wavePropagation : Prop
  patternFormation : Prop
  stabilityCondition : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  fieldDynamicsClosed : N.fieldDynamics
  synapticConnectivityClosed : N.synapticConnectivity
  wavePropagationClosed : N.wavePropagation
  patternFormationClosed : N.patternFormation
  stabilityConditionClosed : N.stabilityCondition

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.fieldDynamics ∧ N.synapticConnectivity ∧
  N.wavePropagation ∧ N.patternFormation ∧ N.stabilityCondition

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.fieldDynamicsClosed
    (And.intro E.synapticConnectivityClosed
      (And.intro E.wavePropagationClosed
        (And.intro E.patternFormationClosed E.stabilityConditionClosed)))

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse
