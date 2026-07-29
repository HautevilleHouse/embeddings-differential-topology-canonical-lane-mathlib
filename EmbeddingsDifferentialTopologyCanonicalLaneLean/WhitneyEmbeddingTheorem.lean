import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure WhitneyEmbeddingPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  sourceDimension : ℕ
  targetDimension : ℕ
  sourceSmooth : Prop
  targetSmooth : Prop
  embeddingClassified : Prop
  dimensionCondition : sourceDimension ≤ targetDimension
  mainTheorem : embeddingClassified

structure WhitneyEmbeddingEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (W : WhitneyEmbeddingPackage M N) where
  sourceSmoothClosed : W.sourceSmooth
  targetSmoothClosed : W.targetSmooth
  embeddingClassifiedClosed : W.embeddingClassified

def WhitneyEmbeddingClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (W : WhitneyEmbeddingPackage M N) : Prop :=
  W.sourceSmooth ∧ W.targetSmooth ∧ W.embeddingClassified

theorem whitney_embedding_closed_from_evidence
    {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (W : WhitneyEmbeddingPackage M N) (E : WhitneyEmbeddingEvidence W) :
    WhitneyEmbeddingClosed W := by
  exact And.intro E.sourceSmoothClosed (And.intro E.targetSmoothClosed E.embeddingClassifiedClosed)

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse