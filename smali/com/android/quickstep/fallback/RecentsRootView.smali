.class public Lcom/android/quickstep/fallback/RecentsRootView;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "SourceFile"


# instance fields
.field private final mActivity:Lcom/android/quickstep/RecentsActivity;

.field private final mLastKnownSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p2, Landroid/graphics/Point;

    const/16 v0, 0xa

    invoke-direct {p2, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mLastKnownSize:Landroid/graphics/Point;

    .line 39
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    iput-object p1, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mActivity:Lcom/android/quickstep/RecentsActivity;

    .line 40
    const/16 p1, 0x700

    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/RecentsRootView;->setSystemUiVisibility(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public dispatchInsets()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mInsets:Landroid/graphics/Rect;

    invoke-super {p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->setInsets(Landroid/graphics/Rect;)V

    .line 89
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/RecentsRootView;->setInsets(Landroid/graphics/Rect;)V

    .line 72
    const/4 p1, 0x1

    return p1
.end method

.method public getLastKnownSize()Landroid/graphics/Point;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mLastKnownSize:Landroid/graphics/Point;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 57
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 58
    iget-object v2, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mLastKnownSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mLastKnownSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v2, v1, :cond_1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mLastKnownSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 60
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->onRootViewSizeChanged()V

    .line 63
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->onMeasure(II)V

    .line 64
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->setInsets(Landroid/graphics/Rect;)V

    .line 82
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/fallback/RecentsRootView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010031

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/RecentsRootView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setup()V
    .locals 3

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    new-instance v1, Lcom/android/quickstep/fallback/RecentsTaskController;

    iget-object v2, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-direct {v1, v2}, Lcom/android/quickstep/fallback/RecentsTaskController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/quickstep/fallback/RecentsRootView;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 51
    return-void
.end method
