.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;


# static fields
.field private static final wf:Ljava/util/Random;


# instance fields
.field final uP:I

.field public uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

.field private final ul:Landroid/widget/FrameLayout;

.field public final un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

.field public final uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

.field private final wg:Landroid/widget/FrameLayout;

.field private final wh:Landroid/widget/FrameLayout;

.field private final wi:Landroid/widget/FrameLayout;

.field private final wj:Ljava/lang/String;

.field public final wk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;

.field private final wl:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;

.field wm:Z

.field private wn:Z

.field private wo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wf:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;)V
    .locals 3

    .line 563
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wm:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wn:Z

    .line 564
    sget v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$layout;->suggest_view:I

    invoke-static {p1, v1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 565
    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;

    .line 566
    sget p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$id;->selection_container:I

    invoke-virtual {p0, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wg:Landroid/widget/FrameLayout;

    .line 567
    sget p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$id;->selection_override_container:I

    invoke-virtual {p0, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    .line 568
    sget p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$id;->gleam_container:I

    invoke-virtual {p0, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wi:Landroid/widget/FrameLayout;

    .line 569
    sget p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$id;->debug_container:I

    invoke-virtual {p0, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->ul:Landroid/widget/FrameLayout;

    .line 570
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    .line 571
    nop

    .line 573
    new-instance p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    invoke-direct {p3, p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;-><init>(Landroid/content/Context;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;)V

    .line 572
    const/4 p1, -0x1

    invoke-static {p2, p3, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 574
    invoke-virtual {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->cw()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    .line 576
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 577
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 579
    sget v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$dimen;->long_press_detection_size_x:I

    .line 580
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    sget v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$dimen;->long_press_detection_size_y:I

    .line 581
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    neg-float v2, v2

    .line 579
    invoke-virtual {p3, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 582
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 583
    sget v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$dimen;->focus_rect_expand_size:I

    .line 585
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 586
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 583
    move v0, v2

    goto :goto_0

    .line 586
    :cond_0
    nop

    .line 583
    :goto_0
    invoke-virtual {p2, p3, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Landroid/graphics/RectF;IZ)V

    .line 588
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/i;->cq()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->ul:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;

    invoke-direct {p3, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wl:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;

    goto :goto_1

    .line 591
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wl:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;

    .line 593
    :goto_1
    const-string p1, "session_overview"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wj:Ljava/lang/String;

    .line 594
    sget-object p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wf:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 595
    return-void
.end method

.method private static A(II)I
    .locals 0

    .line 409
    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;
    .locals 1

    .line 384
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;-><init>(Landroid/content/Context;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vy:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vy:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vx:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vx:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->offset(FF)V

    return-object p1
.end method

.method public final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V
    .locals 8

    .line 109
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 112
    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 113
    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 117
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 118
    iget-object v3, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    aput-object v3, v0, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 121
    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 122
    invoke-static {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 124
    iget-object v5, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 129
    iget-object v7, v7, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    move-result-object v1

    .line 123
    invoke-virtual {v4, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->c(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    iput v6, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    iput-object p2, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iput-object v0, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iput-object p1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iput v7, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    iget p1, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    iput p1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    iput-object v1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 130
    invoke-virtual {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object p1

    .line 120
    invoke-virtual {v2, v3, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    .line 132
    :cond_2
    return-void
.end method

.method final a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;)V
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;)V

    .line 423
    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/PointF;)V
    .locals 3

    .line 228
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Start suggest interaction @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cy()V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->nextToken()I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->o(Z)V

    .line 239
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/L;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/L;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;I)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Landroid/graphics/PointF;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V

    .line 263
    return-void
.end method

.method public final b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V
    .locals 8

    .line 136
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 138
    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 139
    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 143
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    aput-object v2, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 147
    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 148
    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 150
    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 155
    invoke-static {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    move-result-object v6

    .line 149
    invoke-virtual {v3, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->c(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    iput v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    iput-object p2, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iput-object v0, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iput-object p1, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iput v7, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    iget p1, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    iput p1, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    iput-object v6, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 156
    invoke-virtual {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object p1

    .line 146
    invoke-virtual {v1, v2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cy()V

    .line 160
    return-void
.end method

.method final b(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;)V
    .locals 11

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string p1, "displayEntities: No content present."

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->g(Ljava/lang/String;)V

    .line 430
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cm()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v0

    array-length v0, v0

    .line 434
    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Displaying entities; size="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 435
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 436
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->ar(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    move-result-object v3

    .line 437
    iget-object v4, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uF:Landroid/graphics/RectF;

    if-eqz v4, :cond_5

    .line 438
    invoke-virtual {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result v4

    .line 441
    const/4 v5, 0x0

    if-nez v4, :cond_3

    sget-object v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->ws:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    if-ne p1, v6, :cond_1

    goto :goto_1

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$layout;->text_selection_view:I

    invoke-static {v4, v6, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 460
    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wg:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 461
    invoke-virtual {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 462
    iget-object v5, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v5, :cond_2

    .line 463
    iget-object v5, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 464
    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    .line 465
    iget-object v6, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v6, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 466
    invoke-static {v7}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v7

    .line 468
    iget-object v8, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    .line 469
    iget-object v9, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 471
    iget-object v10, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v10}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    move-result-object v10

    .line 467
    invoke-virtual {v7, v8, v9, v3, v10}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v7

    .line 472
    invoke-virtual {v7}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object v7

    .line 464
    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    .line 474
    :cond_2
    new-instance v5, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/N;

    invoke-direct {v5, p0, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/N;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V

    .line 475
    new-instance v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    invoke-direct {v6, v4, v3, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;)V

    .line 506
    invoke-virtual {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->cC()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    goto :goto_2

    .line 442
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$layout;->gleam_view:I

    invoke-static {v6, v7, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 444
    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wi:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 445
    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

    new-instance v7, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;

    invoke-direct {v7, v5, v3, v6, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    invoke-virtual {v7, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->n(Z)V

    .line 446
    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->ws:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    if-ne p1, v3, :cond_4

    .line 447
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 448
    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 449
    invoke-static {v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 451
    iget-object v6, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 452
    iget-object v7, v7, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget-object v8, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v9, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 454
    iget-object v9, v9, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    move-result-object v9

    .line 450
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v5

    .line 455
    invoke-virtual {v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object v5

    .line 447
    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    .line 458
    :cond_4
    nop

    .line 435
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 509
    :cond_6
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wm:Z

    const-string p1, "Handling selection override."

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/O;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/O;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/P;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/P;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 511
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wl:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;

    if-eqz p1, :cond_7

    .line 512
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wl:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iput-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->ul:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay;->invalidate()V

    .line 514
    :cond_7
    return-void
.end method

.method public final c(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V
    .locals 8

    .line 164
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 167
    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 168
    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 172
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 173
    iget-object v3, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    aput-object v3, v0, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 176
    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 177
    invoke-static {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 179
    iget-object v5, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 184
    iget-object v7, v7, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    move-result-object v1

    .line 178
    invoke-virtual {v4, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->c(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    iput v6, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sm:I

    iput-object p2, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iput-object v0, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->so:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iput-object p1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sp:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    const/4 p1, 0x3

    iput p1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sq:I

    iget p1, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    iput p1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->sr:I

    iput-object v1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 185
    invoke-virtual {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object p1

    .line 175
    invoke-virtual {v2, v3, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    .line 187
    :cond_2
    return-void
.end method

.method final cA()Z
    .locals 3

    .line 392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 393
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 394
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->A(II)I

    move-result v0

    .line 397
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->A(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 398
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final cB()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wh:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 416
    return-void
.end method

.method public final cx()V
    .locals 2

    .line 267
    const-string v0, "Complete suggest interaction"

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->o(Z)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wo:Z

    .line 272
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->wt:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;)V

    .line 273
    return-void
.end method

.method public final cy()V
    .locals 7

    .line 287
    const-string v0, "Clearing suggestions."

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->clear()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wo:Z

    .line 290
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->o(Z)V

    .line 291
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 292
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wi:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 293
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->ul:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 294
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    invoke-interface {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;->hide()V

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uG:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iget-object v6, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-interface {v5, v4, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;->c(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->cw()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;

    .line 296
    return-void
.end method

.method public cz()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    iget-boolean v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cy()V

    .line 325
    const-string v0, "Showing automatic suggestions"

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->nextToken()I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->o(Z)V

    .line 334
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/M;

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/M;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;I)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Landroid/graphics/PointF;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V

    .line 353
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 372
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cA()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Detached view, is primary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wj:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 378
    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cs()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    move-result-object v3

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    iput v4, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sH:I

    invoke-virtual {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object v2

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 357
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 358
    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wn:Z

    if-nez p1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cA()Z

    move-result p1

    const/16 p2, 0x23

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Layout occurred, is primary = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    .line 361
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wn:Z

    .line 362
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cA()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 363
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wj:Ljava/lang/String;

    iget p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    .line 365
    invoke-static {p4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cs()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    move-result-object p5

    iput p1, p5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sq:I

    const/4 p1, 0x0

    iput p1, p5, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;->sF:I

    invoke-virtual {p4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object p1

    .line 363
    invoke-virtual {p2, p3, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    .line 368
    :cond_0
    return-void
.end method
