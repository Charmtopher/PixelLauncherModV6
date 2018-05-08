.class public Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 160
    return-void
.end method
