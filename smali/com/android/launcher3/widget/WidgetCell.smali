.class public Lcom/android/launcher3/widget/WidgetCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public mActiveRequest:Landroid/os/CancellationSignal;

.field public final mActivity:Lcom/android/launcher3/BaseActivity;

.field mAnimatePreview:Z

.field private mApplyBitmapDeferred:Z

.field private mCellSize:I

.field private mDeferredBitmap:Landroid/graphics/Bitmap;

.field public mItem:Lcom/android/launcher3/model/WidgetItem;

.field public mPresetPreviewSize:I

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field mWidgetDims:Landroid/widget/TextView;

.field public mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

.field mWidgetName:Landroid/widget/TextView;

.field private mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/widget/WidgetCell;->mAnimatePreview:Z

    .line 78
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/widget/WidgetCell;->mApplyBitmapDeferred:Z

    .line 94
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 95
    new-instance p1, Lcom/android/launcher3/StylusEventHelper;

    new-instance p3, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {p3, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {p1, p3, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 97
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float p1, p1

    const p3, 0x40266666    # 2.6f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mCellSize:I

    iget p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mCellSize:I

    int-to-float p1, p1

    const p3, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/WidgetCell;->setWillNotDraw(Z)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/WidgetCell;->setClipToPadding(Z)V

    .line 100
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetCell;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V
    .locals 7

    .line 137
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, v1, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v4, v4, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v4, v4, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 139
    const v4, 0x7f0c002c

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v3, v3, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v3, v3, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 141
    const v3, 0x7f0c002d

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 145
    iget-object p2, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    if-eqz p2, :cond_0

    .line 146
    new-instance p2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-direct {p2, p1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_0
    new-instance p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-direct {p2, p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public final applyPreview(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 177
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mApplyBitmapDeferred:Z

    if-eqz v0, :cond_0

    .line 178
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mDeferredBitmap:Landroid/graphics/Bitmap;

    .line 179
    return-void

    .line 181
    :cond_0
    if-eqz p1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget-object v2, v2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/graphics/DrawableFactory;->getBadgeForUser(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/widget/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mAnimatePreview:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/widget/WidgetImageView;->setAlpha(F)V

    .line 186
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 188
    return-void

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/WidgetImageView;->setAlpha(F)V

    .line 192
    :cond_2
    return-void
.end method

.method public ensurePreview()V
    .locals 8

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget v5, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    iget v6, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, v4, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v1, v7, v0}, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Lcom/android/launcher3/model/WidgetItem;IILcom/android/launcher3/widget/WidgetCell;)V

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    .line 200
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 237
    const-class v0, Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 113
    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    .line 114
    const v0, 0x7f0e0085

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 205
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/WidgetCell;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 211
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetCell;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    const/4 p1, 0x1

    return p1

    .line 215
    :cond_0
    return v0
.end method

.method public final setApplyBitmapDeferred(Z)V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mApplyBitmapDeferred:Z

    if-eq v0, p1, :cond_0

    .line 164
    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mApplyBitmapDeferred:Z

    .line 165
    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mApplyBitmapDeferred:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mDeferredBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mDeferredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    .line 167
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mDeferredBitmap:Landroid/graphics/Bitmap;

    .line 170
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 231
    iget v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mCellSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 232
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-void
.end method
