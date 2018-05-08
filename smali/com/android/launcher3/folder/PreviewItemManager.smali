.class public Lcom/android/launcher3/folder/PreviewItemManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mCurrentPageItemsTransX:F

.field mCurrentPageParams:Ljava/util/ArrayList;

.field mFirstPageParams:Ljava/util/ArrayList;

.field mIcon:Lcom/android/launcher3/folder/FolderIcon;

.field mIntrinsicIconSize:F

.field private mPrevTopPadding:I

.field mReferenceDrawable:Landroid/graphics/drawable/Drawable;

.field mShouldSlideInFirstPage:Z

.field private mTotalWidth:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    .line 52
    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    .line 71
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 72
    return-void
.end method

.method private updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/BubbleTextView;III)V
    .locals 10

    .line 351
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    iput-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 352
    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p2, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result p2

    if-nez p2, :cond_0

    .line 355
    iget-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 358
    :cond_0
    new-instance p2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    const/16 v8, 0x190

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p5

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 360
    iget-object p3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {p3, p2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 361
    iget-object p3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object p3, p3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 363
    :cond_1
    iput-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    .line 364
    return-void
.end method


# virtual methods
.method final buildParamsForPage(ILjava/util/ArrayList;Z)V
    .locals 19

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    .line 201
    iget-object v1, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v11

    .line 202
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 205
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x1

    if-ge v1, v2, :cond_0

    .line 206
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 209
    new-instance v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_1
    if-nez v0, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .line 213
    :goto_2
    move v14, v0

    goto :goto_3

    .line 212
    :cond_2
    const/4 v0, 0x4

    goto :goto_2

    .line 213
    :goto_3
    const/4 v0, 0x0

    move v15, v0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_7

    .line 214
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 215
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v13

    iput-object v0, v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v0, v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget-object v0, v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 223
    :cond_3
    if-nez p3, :cond_4

    .line 224
    invoke-virtual {v9, v15, v14, v8}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 225
    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 226
    iget-object v0, v8, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 229
    :cond_4
    new-instance v7, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    const/16 v16, 0x190

    const/16 v17, 0x0

    move-object v0, v7

    move-object v1, v9

    move-object v2, v8

    move v3, v15

    move v4, v12

    move v5, v15

    move v6, v14

    move-object v13, v7

    move/from16 v7, v16

    move-object v9, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 232
    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 235
    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    :cond_5
    iput-object v13, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    .line 240
    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p0

    const/4 v13, 0x1

    goto :goto_4

    .line 243
    :cond_7
    return-void
.end method

.method final computePreviewDrawingParams(II)V
    .locals 4

    .line 103
    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 104
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 105
    :cond_0
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    .line 106
    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    .line 107
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    .line 109
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p2, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Lcom/android/launcher3/Launcher;Landroid/view/View;II)V

    .line 110
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p2, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget p2, p2, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 111
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    .line 110
    int-to-float p2, p2

    iput p2, p1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const v2, 0x3faa3d71    # 1.33f

    mul-float/2addr v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    iput v0, p1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    iput-boolean v1, p1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    iput p2, p1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    .line 113
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    .line 115
    :cond_1
    return-void
.end method

.method final computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 1

    .line 121
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    div-float p2, p1, p2

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    invoke-virtual {p3, v0, v0, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    return-object p3

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p1

    return-object p1
.end method

.method public final createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;
    .locals 10

    .line 80
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    new-instance v9, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0xc8

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    return-object v9

    .line 83
    :cond_0
    new-instance v9, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x15e

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 80
    return-object v9
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 153
    iget v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    nop

    .line 156
    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mShouldSlideInFirstPage:Z

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;F)V

    .line 159
    const/high16 v1, -0x3cb80000    # -200.0f

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    add-float/2addr v1, v2

    goto :goto_0

    .line 162
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;F)V

    .line 163
    iget v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    return-void
.end method

.method public final drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;F)V
    .locals 6

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 142
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 143
    iget-boolean v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-nez v3, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v4, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iget v4, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 141
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 147
    :cond_2
    neg-float p2, p3

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    return-void
.end method

.method public final hidePreviewItem(IZ)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    :goto_0
    if-eqz p1, :cond_1

    .line 196
    iput-boolean p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    .line 198
    :cond_1
    return-void
.end method

.method public final onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 10

    .line 303
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 304
    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    .line 305
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7, v8}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    .line 308
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 310
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    goto :goto_0

    .line 314
    :cond_1
    move p3, v8

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 315
    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 316
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 317
    invoke-virtual {p0, v0, v6, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 318
    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    const/4 v3, -0x3

    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/BubbleTextView;III)V

    .line 314
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 323
    :cond_2
    move p3, v8

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 324
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 325
    if-ltz v3, :cond_3

    if-eq p3, v3, :cond_3

    .line 326
    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 327
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    move-object v0, p0

    move v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/BubbleTextView;III)V

    .line 323
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 332
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 333
    invoke-interface {p3, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 334
    move p2, v8

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 335
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 336
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v6, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v9

    .line 338
    const/4 v4, -0x2

    move-object v0, p0

    move-object v1, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/BubbleTextView;III)V

    .line 339
    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 334
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 342
    :cond_5
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v8, p1, :cond_7

    .line 343
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz p1, :cond_6

    .line 344
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 342
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 347
    :cond_7
    return-void
.end method

.method final updatePreviewItems(Z)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    .line 276
    return-void
.end method
