import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure WhitneyEmbeddingPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  sourceDimension : ℕ
  targetDimension : ℕ
  embeddingExists : Prop
  genericPosition : Prop
  selfIntersectionFree : Prop

structure WhitneyEmbeddingEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (P : WhitneyEmbeddingPackage M N) where
  embeddingExistsClosed : P.embeddingExists
  genericPositionClosed : P.genericPosition
  selfIntersectionFreeClosed : P.selfIntersectionFree

def WhitneyEmbeddingClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (P : WhitneyEmbeddingPackage M N) : Prop :=
  P.embeddingExists ∧ P.genericPosition ∧ P.selfIntersectionFree

theorem whitney_embedding_closed_from_evidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (P : WhitneyEmbeddingPackage M N) (E : WhitneyEmbeddingEvidence P) :
    WhitneyEmbeddingClosed P := by
  exact And.intro E.embeddingExistsClosed (And.intro E.genericPositionClosed E.selfIntersectionFreeClosed)

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse