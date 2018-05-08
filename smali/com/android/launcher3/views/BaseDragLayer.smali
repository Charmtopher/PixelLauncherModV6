.class public abstract Lcom/android/launcher3/views/BaseDragLayer;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "SourceFile"


# instance fields
.field public mActiveController:Lcom/android/launcher3/util/TouchController;

.field public final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field public mControllers:[Lcom/android/launcher3/util/TouchController;

.field protected final mHitRect:Landroid/graphics/Rect;

.field protected final mTmpXY:[I

.field private mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    .line 43
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 53
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object p1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 54
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 119
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    return-void

    .line 229
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/InsettableFrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    .line 231
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 254
    instance-of p1, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public findActiveController(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 83
    return v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 87
    invoke-interface {v5, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    iput-object v5, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 89
    return v1

    .line 86
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :cond_2
    return v3
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .locals 2

    .line 248
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .locals 2

    .line 243
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .locals 1

    .line 259
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 0

    .line 181
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 151
    iget-object v3, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    aget v1, v5, v1

    int-to-float v1, v1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTmpXY:[I

    aget v2, v5, v2

    int-to-float v2, v2

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 151
    invoke-virtual {p2, v3, v4, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    .line 158
    const/4 v0, 0x0

    aput v0, p2, v0

    .line 159
    const/4 v1, 0x1

    aput v0, p2, v1

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p1

    return p1
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInWindow([I)V

    .line 195
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 196
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 199
    aget v1, v0, v1

    .line 200
    aget v0, v0, v3

    .line 202
    sub-int/2addr v1, v2

    .line 203
    sub-int/2addr v0, v4

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    return-void
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 59
    iget-object p1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public mapCoordInSelfToDescendant(Landroid/view/View;[I)V
    .locals 0

    .line 189
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 190
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 66
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 70
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    .line 74
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 312
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result p1

    .line 314
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 315
    invoke-virtual {p0, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 316
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    instance-of p5, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 318
    check-cast p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 319
    iget-boolean p5, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 320
    iget p5, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget v0, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v1, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget v2, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget p4, p4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    add-int/2addr v2, p4

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 314
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 219
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    if-ne p1, v0, :cond_0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 105
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 107
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 124
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 128
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    invoke-interface {v0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 135
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    .line 235
    return-void
.end method
