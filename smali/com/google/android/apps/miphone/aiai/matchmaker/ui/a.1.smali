.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field final tZ:Landroid/graphics/RectF;

.field final tl:Ljava/lang/String;

.field final ua:I

.field final ub:I

.field final uc:I

.field final ud:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/RectF;IZII)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->tl:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->tZ:Landroid/graphics/RectF;

    .line 80
    iput p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ua:I

    .line 81
    iput-boolean p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ud:Z

    .line 82
    iput p5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ub:I

    .line 83
    iput p6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->uc:I

    .line 84
    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/RectF;IZII)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;
    .locals 8

    .line 67
    new-instance v7, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;-><init>(Ljava/lang/String;Landroid/graphics/RectF;IZII)V

    return-object v7
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 54
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/i;->cq()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 55
    const/16 p2, 0x32

    iget p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->ua:I

    mul-int/lit8 p3, p3, 0xa

    const/16 p4, 0x64

    invoke-static {p2, p4, p4, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    float-to-int p2, p5

    int-to-float p4, p2

    int-to-float p5, p6

    iget-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->tZ:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    float-to-int p3, p3

    add-int/2addr p2, p3

    int-to-float p6, p2

    int-to-float p7, p8

    move-object p3, p1

    move-object p8, p9

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    :cond_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 33
    if-eqz p5, :cond_0

    .line 34
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->tZ:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 35
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 36
    const/4 p1, 0x0

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 37
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 38
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/a;->tZ:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
