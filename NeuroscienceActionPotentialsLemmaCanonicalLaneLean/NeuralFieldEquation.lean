import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure NeuralFieldModel where
  spatialDomain : Set ℝ
  timeDomain : Set ℝ
  firingRateFunction : ℝ → ℝ
  connectivityKernel : ℝ → ℝ → ℝ
  externalInput : ℝ → ℝ → ℝ
  fieldDynamics : Prop

structure NeuralFieldEvidence (N : NeuralFieldModel) where
  firingRateSigmoid : ∀ x, N.firingRateFunction x = 1 / (1 + Real.exp (-x))
  kernelSymmetric : ∀ x y, N.connectivityKernel x y = N.connectivityKernel y x
  fieldDynamicsClosed : N.fieldDynamics

def NeuralFieldClosed (N : NeuralFieldModel) : Prop :=
  (∀ x, N.firingRateFunction x = 1 / (1 + Real.exp (-x))) ∧
  (∀ x y, N.connectivityKernel x y = N.connectivityKernel y x) ∧
  N.fieldDynamics

theorem neural_field_closed_from_evidence (N : NeuralFieldModel) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact And.intro E.firingRateSigmoid (And.intro E.kernelSymmetric E.fieldDynamicsClosed)

theorem sigmoid_range (N : NeuralFieldModel) (h : ∀ x, N.firingRateFunction x = 1 / (1 + Real.exp (-x))) :
    ∀ x, N.firingRateFunction x ∈ Set.Ioo (0 : ℝ) 1 := by
  intro x
  rw [h x]
  refine ⟨by
    have : Real.exp (-x) > 0 := Real.exp_pos (-x)
    nlinarith, ?_⟩
  have : Real.exp (-x) > 0 := Real.exp_pos (-x)
  have denom : 1 + Real.exp (-x) > 1 := by nlinarith
  nlinarith

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse