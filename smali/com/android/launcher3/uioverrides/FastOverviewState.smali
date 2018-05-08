.class public Lcom/android/launcher3/uioverrides/FastOverviewState;
.super Lcom/android/launcher3/uioverrides/OverviewState;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 31
    const/16 v0, 0xd2

    const/16 v1, 0x709

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/uioverrides/OverviewState;-><init>(III)V

    .line 32
    return-void
.end method


# virtual methods
.method public final getOverviewScaleAndTranslationYFactor$29c5cce7()[F
    .locals 1

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public final getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 0

    .line 43
    const/4 p1, 0x0

    return p1
.end method

.method public final onStateTransitionEnd(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/OverviewState;->onStateTransitionEnd(Lcom/android/launcher3/Launcher;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    .line 38
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getQuickScrubController()Lcom/android/quickstep/QuickScrubController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/QuickScrubController;->onFinishedTransitionToQuickScrub()V

    .line 39
    return-void
.end method
