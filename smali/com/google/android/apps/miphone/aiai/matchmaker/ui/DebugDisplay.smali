.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final ue:Landroid/graphics/Paint;

.field private final uf:Landroid/graphics/Paint;

.field private final ug:Landroid/graphics/Paint;

.field private final uh:Landroid/graphics/Paint;

.field private final ui:Landroid/graphics/Paint;

.field private final uj:Landroid/graphics/RectF;

.field private final uk:F

.field final ul:Landroid/widget/FrameLayout;

.field private um:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

.field un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->uj:Landroid/graphics/RectF;

    .line 35
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->uo:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->um:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ui:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ui:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ui:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ui:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    const/16 v0, 0x1e

    const v1, -0xffff01

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->z(II)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ug:Landroid/graphics/Paint;

    .line 47
    const/high16 v1, -0x10000

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->z(II)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->uh:Landroid/graphics/Paint;

    .line 49
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->uf:Landroid/graphics/Paint;

    .line 50
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->uf:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->uf:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->uf:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->z(II)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ue:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 56
    nop

    .line 57
    const/4 v0, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->uk:F

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ul:Landroid/widget/FrameLayout;

    .line 61
    return-void
.end method

.method private z(II)Landroid/graphics/Paint;
    .locals 2

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 131
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 134
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    return-object v0
.end method
