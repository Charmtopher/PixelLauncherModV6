.class public Lcom/google/android/apps/nexuslauncher/qsb/DragHandleIndicator;
.super Lcom/android/quickstep/views/QuickstepDragIndicator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/QuickstepDragIndicator;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/QuickstepDragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/QuickstepDragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getPortraitBottomMargin(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DragHandleIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Lcom/android/launcher3/Launcher;)I

    move-result p1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DragHandleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00c0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 27
    return p1
.end method
