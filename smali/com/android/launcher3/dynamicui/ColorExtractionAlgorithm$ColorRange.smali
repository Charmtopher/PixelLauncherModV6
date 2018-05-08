.class Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mHue:Landroid/util/Range;

.field mLightness:Landroid/util/Range;

.field mSaturation:Landroid/util/Range;


# direct methods
.method constructor <init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mHue:Landroid/util/Range;

    .line 760
    iput-object p2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mSaturation:Landroid/util/Range;

    .line 761
    iput-object p3, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mLightness:Landroid/util/Range;

    .line 762
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 785
    const-string v0, "H: %s, S: %s, L %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mHue:Landroid/util/Range;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mSaturation:Landroid/util/Range;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mLightness:Landroid/util/Range;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
