.class Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final h:[F

.field final l:[F

.field final maxHue:F

.field final minHue:F

.field final s:[F


# direct methods
.method constructor <init>([F[F[F)V
    .locals 3

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_1

    .line 305
    iput-object p1, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->h:[F

    .line 306
    iput-object p2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->s:[F

    .line 307
    iput-object p3, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->l:[F

    .line 309
    const/high16 p2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 310
    const/high16 p3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 312
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 313
    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 314
    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_0
    iput p2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    .line 318
    iput p3, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    .line 319
    return-void

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All arrays should have the same size. h: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " l: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
