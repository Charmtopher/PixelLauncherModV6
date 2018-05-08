.class public Lcom/android/launcher3/LauncherAppTransitionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppTransitionManager;
    .locals 2

    .line 32
    const-class v0, Lcom/android/launcher3/LauncherAppTransitionManager;

    const v1, 0x7f0c001a

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAppTransitionManager;

    return-object p0
.end method


# virtual methods
.method public getActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAppTransitionManager;->getDefaultActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public final getDefaultActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 3

    .line 37
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_1

    .line 38
    nop

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 40
    instance-of v1, p2, Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 42
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 v2, p1, 0x2

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 51
    :cond_0
    move v1, p1

    move p1, v2

    :goto_0
    invoke-static {p2, v2, p1, v1, v0}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1

    .line 52
    :cond_1
    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-eqz p2, :cond_2

    .line 56
    const p2, 0x7f050001

    const/high16 v0, 0x7f050000

    invoke-static {p1, p2, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
